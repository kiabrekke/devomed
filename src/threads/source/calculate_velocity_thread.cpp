#include "calculate_velocity_thread.h"
#include "global_struct.h"
#include "functions.h"
#include "examples_common.h"
#include "pid.h"
#include <unistd.h>

void* CalculateVelocityThread(void* arg) {
    std::cout << "Starting calculateVelocity thread" << std::endl;

    shared_robot_data *robot_data = (shared_robot_data *)arg;
    Pid pid = Pid(0.01, 0, 0);
    bool has_started = false;
    double dt;
    double last_time;

    while (!has_started) {
        if (robot_data->run) {
            has_started = true;
            std::cout << "velocity lopp started" << std::endl;
            dt = 0.001;
            last_time = robot_data->timer;
        }
        usleep(10000); //Sleep for 10ms
    }
    while (robot_data->run) {
        dt = robot_data->timer - last_time;
        last_time = robot_data->timer;
        pid.regulateVelocity(dt, arg);
        usleep(10000); //sleep for 10ms
    }

    return NULL;
}