#include "pid.h"
#include "global_struct.h"

#include <Eigen/Dense>

Pid::Pid(double Kp, double Ki, double Kd){
    init();
    this->Kp = Kp;
    this->Ki = Ki;
    this->Kd = Kd;
}

void Pid::init() {
    this->past_error = Eigen::Vector3d(0.0, 0.0, 0.0);
    this->error = Eigen::Vector3d(0.0, 0.0, 0.0);
    this->integral = Eigen::Vector3d(0.0, 0.0, 0.0);
    this->derivative = Eigen::Vector3d(0.0, 0.0, 0.0);
    this->vel_desired = Eigen::Vector3d(0.0, 0.0, 0.0);
    this->external_velocity = Eigen::Vector3d(0.0, 0.0, 0.0);
    this->acc = Eigen::Vector3d(0.0, 0.0, 0.0);
    this->acc_previous = Eigen::Vector3d(0.0, 0.0, 0.0);
    this->jerk = Eigen::Vector3d(0.0, 0.0, 0.0);
    this->pd = Eigen::Vector3d(0.0, 0.0, 0.0);
    this->vel_desired_previous = Eigen::Vector3d(0.0, 0.0, 0.0);
  //  this->past_error = Eigen::Vector3d(0.0, 0.0, 0.0);
  //  this->past_error = Eigen::Vector3d(0.0, 0.0, 0.0);
    this->dt = 0.001; // robot runs at 1000hz
    this->jerk_limit = 3000;
    this->acceleration_limit = 10;
    this->acc_commanded_previous = Eigen::Vector3d(0.0, 0.0, 0.0);
    this->time = 0;
}

void Pid::regulateVelocity(void* arg){
  shared_robot_data *robot_data = (shared_robot_data *)arg;
  this->vel_commanded_previous = robot_data->robot_velocity;
  this->acc_commanded_previous = robot_data->robot_acceleration;
  vel_desired_previous = vel_desired;
  //past_error = error;
  time += dt;
  if (time > 2.0) {
      external_velocity(2,0) = 0.2;
  }
  if (time > 4.0) {
      external_velocity(2,0) = 0.0;
  }
  if (time > 6.0) {
      external_velocity(2,0) = -0.2;
  }
  if (time > 8.0) {
      external_velocity(2,0) = 0.0;
      time = 0.0;
  }

  this->error = external_velocity - vel_commanded_previous;

/*
      //Y and Z axis needs to be inverted from force input to velocity output for some reason.
      error(1,0) *= -1;
      //error(2,0) *= -1;

      //Calibrate the force input for some reason.
      error(0,0) -= 1.55;
      error(1,0) += 0.0;
      error(2,0) += 1.56;

      //Run a lowpass filter on the input signal before the pid controller
      error(0,0) = franka::lowpassFilter(dt, error(0,0), past_error(0,0), 1);
      error(1,0) = franka::lowpassFilter(dt, error(1,0), past_error(1,0), 1);
      error(2,0) = franka::lowpassFilter(dt, error(2,0), past_error(2,0), 1);
*/

      //error = std::max(error.norm()-force_limit, 0.0) * error.normalized();
      
      //integral = integral + error*dt;
      integral += error * dt;
      
      derivative = (error - past_error) / dt;

      pd = Kp * error + Ki * integral + Kd * derivative;
      
      //acc = pd;
      vel_desired = pd;

      acc = (vel_desired - vel_commanded_previous) / dt;
      jerk = (acc - acc_commanded_previous) / dt;
    
      if (jerk.norm() > jerk_limit) {
        jerk.normalize();
        jerk *= jerk_limit;
      }

      acc = acc_commanded_previous + jerk*dt;

      if (acc.norm() > acceleration_limit) {
        acc.normalize();
        acc *= acceleration_limit;
      }

      vel_desired = vel_commanded_previous + acc * dt;
      this->past_error = error;
      robot_data->desired_velocity = vel_desired;
}