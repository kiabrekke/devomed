// Include standard headers
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <iostream>
#include <vector>
#include <cstring> // string function definitions

// Include GLEW
#include <GL/glew.h>

#include <glm/gtx/euler_angles.hpp>
//using namespace glm;

#include "plot2d.h"
#include <common/headers/shader.hpp>
#include "common/headers/controls.h"
#include "common/headers/texture.hpp"

//#include <epoxy/gl.h>


// grid
GLfloat xgrid[2][3] = {
	-1.0f, 0.0f, 0.0f,
	 1.0f, 0.0f, 0.0f,
};


#define TEST_RUN 0

//GLfloat last_100[100*3];
#define SAMPLES_HALF_FRAME 4000
#define NUM_PLOTSS 2
int samples_half_frame = SAMPLES_HALF_FRAME;
GLfloat current_100[SAMPLES_HALF_FRAME*3*NUM_PLOTSS];


Plot2d::Plot2d(int samples_per_frame, float y_range, int number_of_plots) {
	this->SAMPLES_PER_FRAME = samples_per_frame;
	this->MAX_EXP_VALUE = y_range;
	this->NUM_PLOTS = number_of_plots;
	init();
}

void Plot2d::init() {
	this->X_MARGIN_MAX = 0.9999f;
	this->X_MARGIN_MIN = -0.9999f;
	this->Y_MARGIN_MAX = 0.9999f;
	this->Y_MARGIN_MIN = -0.9999f;
	this->MIN_EXP_VALUE = -MAX_EXP_VALUE;
	this->INDEX_OF_LAST_ENTRY = 0;
	this->GRAPH_WIDTH = X_MARGIN_MAX - X_MARGIN_MIN; //
	this->GRAPH_HEIGHT = Y_MARGIN_MAX - Y_MARGIN_MIN; // trenger vi virkelig dette? mao trenger vi margin min/max?
	this->WINDOW_WIDTH = 1024;
	this->WINDOW_HEIGHT = 768;
	this->VERTEX_COORDINATE_COUNT = 3;
	this->buffersize = sizeof(GLfloat)*SAMPLES_PER_FRAME*VERTEX_COORDINATE_COUNT;
}

void Plot2d::initGLFW() {
	// Initialise GLFW
	if (!glfwInit())
	{
		fprintf(stderr, "Failed to initialize GLFW\n");
		getchar();
	}
}

void Plot2d::initPlotWindow() {
	glfwWindowHint(GLFW_SAMPLES, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Open a window and create its OpenGL context
	window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "Devomed", NULL, NULL);
	if (window == NULL) {
		fprintf(stderr, "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.\n");
		getchar();
		glfwTerminate();
		//return -1;
	}
	glfwMakeContextCurrent(window);

	// Initialize GLEW
	glewExperimental = true; // Needed for core profile
	if (glewInit() != GLEW_OK) {
		fprintf(stderr, "Failed to initialize GLEW\n");
		getchar();
		glfwTerminate();
	//	return -1;
	}
	// Ensure we can capture the escape key being pressed below
	glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);

	// Set the mouse at the center of the screen
	glfwPollEvents();
	glfwSetCursorPos(window, 1024 / 2, 768 / 2);

	// Dark blue background
	glClearColor(0.0f, 0.0f, 0.4f, 0.0f);

	// Enable depth test
	glEnable(GL_DEPTH_TEST);

	// Accept fragment if it closer to the camera than the former one
	glDepthFunc(GL_LESS);
	

	// Cull triangles which normal is not towards the camera
	glEnable(GL_CULL_FACE);

	// Create and compile our GLSL program from the shaders
  programID = LoadShaders("SimpleVertexShader.vertexshader", "SimpleFragmentShader.fragmentshader");

	// Get a handle for our "MVP" uniform
	MatrixID = glGetUniformLocation(programID, "MVP");
	
	uniform_color = glGetUniformLocation(programID, "uniformcolor");
}


/*
 * Saves a screenshot to .tga file. Instant copy of pixels in window
 */
void Plot2d::saveScreenshotToFile(std::string filename) {
  const int numberOfPixels = WINDOW_WIDTH*WINDOW_HEIGHT*3;
  unsigned char pixels[numberOfPixels];

  glPixelStorei(GL_PACK_ALIGNMENT, 1);
  glReadBuffer(GL_FRONT);
  glReadPixels(0,0, WINDOW_WIDTH, WINDOW_HEIGHT, GL_BGR_EXT, GL_UNSIGNED_BYTE, pixels);

	std::string filepath = "images/";
	//	std::string files = std::strcat(filepath.c_str(), filename.c_str());
	std::string files = filepath.c_str() + filename;
 	FILE *outputFile = fopen(files.c_str(), "w");
  //FILE *outputFile = fopen(filename.c_str(), "w");
  short header[] = {0,2,0,0,0,0, (short) WINDOW_WIDTH, (short) WINDOW_HEIGHT, 24};

  fwrite(&header, sizeof(header), 1, outputFile);
  fwrite(pixels, numberOfPixels, 1, outputFile);
  fclose(outputFile);

  std::cout << "Finish writing screenshot to file \n" << std::endl;
}

/*
 * Fills color data and generates colorbuffer
 */
void Plot2d::genColor() {
	float red;
	float green;
	GLfloat color_data[VERTEX_COORDINATE_COUNT*NUM_PLOTS*SAMPLES_PER_FRAME];
	for (int i=1; i<=NUM_PLOTS; i++) {
		if (i == 1) {
			red = 1.0f;
			green = 0.0f;
		}
		if (i == 2) {
			red = 0.0f;
			green = 1.0f;
		}

		for (int v=0; v<SAMPLES_PER_FRAME; v++){
			for (int j=1; j<NUM_PLOTS; j++) {
					if (j == 1) {
					red = 1.0f;
					green = 0.0f;
				}
				if (j == 2) {
					red = 0.0f;
					green = 1.0f;
				}
			}
			color_data[3*v*i + 0] = red;
			color_data[3*v*i + 1] = green;
			color_data[3*v*i + 2] = 1.0f;
		}
	}
 
  glBindBuffer(GL_ARRAY_BUFFER, colorbuffer);
  glBufferData(GL_ARRAY_BUFFER, sizeof(color_data), color_data, GL_DYNAMIC_DRAW);

  glEnableVertexAttribArray(1);
  glBindBuffer(GL_ARRAY_BUFFER, colorbuffer);
  glVertexAttribPointer(1, VERTEX_COORDINATE_COUNT, GL_FLOAT, GL_FALSE, 0, (void*)0);
  glEnableVertexAttribArray(1);
}

/*
 * Initialise buffer
 */
void Plot2d::initializeBuffer() {
	glGenVertexArrays(1, &dataArray);
	glGenBuffers(1, &dataBuffer);
	//	glGenBuffers(1, &colorbuffer);
	//  glewExperimental = true;
	glBindVertexArray(dataArray);

	glBindBuffer(GL_ARRAY_BUFFER, dataBuffer);
	glBufferData(GL_ARRAY_BUFFER, buffersize*NUM_PLOTS, NULL, GL_DYNAMIC_DRAW);
	glVertexAttribPointer(
		0,                        // attribute. No particular reason for 0, but must match the layout in the shader.
		VERTEX_COORDINATE_COUNT,  // size (3 coordinates)
		GL_FLOAT,           // type
		GL_FALSE,           // normalized
		0,                  // stride
		(void*)0            // array buffer offset
	);
	glEnableVertexAttribArray(0);
	//genColor();
	uniform_color = glGetUniformLocation(programID, "uniformcolor");
}


void Plot2d::CreateGrid() {
	glGenVertexArrays(1, &gridArray);
	glGenBuffers(1, &gridbuffer);
	glBindBuffer(GL_ARRAY_BUFFER, gridbuffer);
	glBufferData(GL_ARRAY_BUFFER, sizeof (xgrid), xgrid, GL_STREAM_DRAW);
	
	//glGenVertexArrays(1, &vertexArray);
	glBindVertexArray(gridArray);
	glEnableVertexAttribArray(0);
	glBindBuffer(GL_ARRAY_BUFFER, gridbuffer);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, (void*) 0);

}


void Plot2d::drawGrid() {
		// Clear the screen
		/*
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	// Use our shader
	glUseProgram(programID);

	// Send our transformation to the currently bound shader, 
	// in the "MVP" uniform
	glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[0][0]);
	*/
	GLfloat color3[4] = {150.f/255.f, 150.f/255.f, 150.f/255.f, 1};

	glBindVertexArray(gridArray);
	glEnableVertexAttribArray (0);
	glUniform4fv(uniform_color, 1, color3);
	glDrawArrays(GL_LINES, 0, 2);

	glFlush();
}


/*
 * Updates the buffer with the new values
 */
void Plot2d::graph_update(Point values[]) {
	GLfloat point[3];
	glBindVertexArray(dataArray);
  glBindBuffer(GL_ARRAY_BUFFER, dataBuffer);
	//	float current_index_of_buffer = sizeof(GLfloat) * INDEX_OF_LAST_ENTRY * VERTEX_COORDINATE_COUNT;
	float size_of_new_data = sizeof(GLfloat) * VERTEX_COORDINATE_COUNT*samples_half_frame*NUM_PLOTS;
	//double values[NUM_PLOTS];
	for(int j=0; j<NUM_PLOTS; j++) {
		float value_x = (float) values[j].first;
		float value_y = (float) values[j].second;

		if (INDEX_OF_LAST_ENTRY < samples_half_frame) {
			current_100[(INDEX_OF_LAST_ENTRY + SAMPLES_HALF_FRAME*j)*3] = GRAPH_WIDTH * INDEX_OF_LAST_ENTRY / SAMPLES_PER_FRAME -1.0f;
			current_100[(INDEX_OF_LAST_ENTRY + SAMPLES_HALF_FRAME*j)*3 + 1] = 2 * (value_y - MIN_EXP_VALUE) / (MAX_EXP_VALUE - MIN_EXP_VALUE) - 1.0f;
			current_100[(INDEX_OF_LAST_ENTRY + SAMPLES_HALF_FRAME*j)*3 + 2] = 0.0f;
			//INDEX_OF_LAST_ENTRY = (INDEX_OF_LAST_ENTRY + 1);
		}
		else {
			for (int i=0; i<samples_half_frame-1; i++) {
			 current_100[(i + SAMPLES_HALF_FRAME*j)*3  ] = GRAPH_WIDTH * i / SAMPLES_PER_FRAME -1.0f;;
			 current_100[(i + SAMPLES_HALF_FRAME*j)*3 + 1] = current_100[(i + 1 + SAMPLES_HALF_FRAME*j)*3 + 1];
			 current_100[(i + SAMPLES_HALF_FRAME*j)*3 + 2] = current_100[(i + 1 + SAMPLES_HALF_FRAME*j)*3 + 2];
			}
			current_100[(samples_half_frame*(j+1)-1)*3 ] = GRAPH_WIDTH * (samples_half_frame) / SAMPLES_PER_FRAME -1.0f;
			current_100[(samples_half_frame*(j+1)-1)*3 + 1] = 2 * (value_y - MIN_EXP_VALUE) / (MAX_EXP_VALUE - MIN_EXP_VALUE) - 1.0f;
			current_100[(samples_half_frame*(j+1)-1)*3 + 2] = 0.0f;
		}
		/*
		point[0] = GRAPH_WIDTH * INDEX_OF_LAST_ENTRY / SAMPLES_PER_FRAME -1.0f;
		point[1] = 2 * (value_y - MIN_EXP_VALUE) / (MAX_EXP_VALUE - MIN_EXP_VALUE) - 1.0f; // [1,-1]
		point[2] = 0.0f;
	*/
	//	glBufferSubData(GL_ARRAY_BUFFER, current_index_of_buffer + buffersize*i,
	//	size_of_new_data, point);
	}
		glBufferSubData(GL_ARRAY_BUFFER, 0, size_of_new_data, current_100);	
	// Increment buffer position, start writing to the start of the buffer again when the end is reached
	INDEX_OF_LAST_ENTRY = (INDEX_OF_LAST_ENTRY + 1); //% (SAMPLES_PER_FRAME);
}


/*
 * Clear screen, send transformation through MVP matrix and draw content in buffer
 */
void Plot2d::drawGraph(){
  // Clear the screen
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	// Use our shader
	glUseProgram(programID);

	// Send our transformation to the currently bound shader, 
	// in the "MVP" uniform
	glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[0][0]);

	drawGrid();
	glBindVertexArray(dataArray);

	//glUniform1f(1, C_GRAPH_WIDTH - C_GRAPH_WIDTH * INDEX_OF_LAST_ENTRY / C_SAMPLES_PER_FRAME ); // hva gjør egentlig dette ? ser ingen forskjell?
	//for (int i=0; i<NUM_PLOTS; i++) {
	//		glDrawArrays(GL_LINE_STRIP, SAMPLES_PER_FRAME*i, INDEX_OF_LAST_ENTRY);
	//	}
	GLfloat white[4] = {1, 1, 1, 1};
	GLfloat red[4] = {1, 0, 0, 1};
	glUniform4fv(uniform_color, 1, white);
	glDrawArrays(GL_LINE_STRIP, 0, INDEX_OF_LAST_ENTRY);
	glUniform4fv(uniform_color, 1, red);
	glDrawArrays(GL_LINE_STRIP, SAMPLES_PER_FRAME, INDEX_OF_LAST_ENTRY);
	//glUniform1f(1, -C_GRAPH_WIDTH * INDEX_OF_LAST_ENTRY / C_SAMPLES_PER_FRAME);
	//glDrawArrays(GL_LINE_STRIP, INDEX_OF_LAST_ENTRY, C_SAMPLES_PER_FRAME - INDEX_OF_LAST_ENTRY);

	openWindow = glfwGetKey(window, GLFW_KEY_ESCAPE ) != GLFW_PRESS && glfwWindowShouldClose(window) == 0;

}

void Plot2d::setValueLimits(int min, int max) {
	MIN_EXP_VALUE = min;
	MAX_EXP_VALUE = max;
}

void Plot2d::swapBuffers() {
	glfwSwapBuffers(window);
	glfwPollEvents();
}

void Plot2d::deleteBuffers() {
	glDisableVertexAttribArray(0);	// unbind 
	glDisableVertexAttribArray(1);
	glDeleteBuffers(1, &colorbuffer);
	glDeleteBuffers(1, &dataBuffer); // delete buffer
 	glDeleteBuffers(1, &dataArray);
	glDeleteProgram(programID);
	glfwDestroyWindow(window);
	
}


bool Plot2d::gl_draw() {
	glClearColor (1.0, 1.0, 1.0, 1.0);
  glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

  glUseProgram(programID);
  
  glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[0][0]);
	drawGrid();
	if (TEST_RUN == 1) {
		glBindVertexArray(vao);
		glEnableVertexAttribArray(0);
		// glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, nullptr);

		GLfloat red[4] = {1, 0, 0, 1};
		GLfloat green[4] = {0, 1, 0, 1};
		glUniform4fv(uniform_color, 1, green);
		glDrawArrays(GL_LINES, 0, 4);
		glUniform4fv(uniform_color, 1, red);
		glDrawArrays(GL_LINE_STRIP, 4, 8);


	}
	else if (TEST_RUN == 0) {
		glBindVertexArray(dataArray);
		glEnableVertexAttribArray(0);
		//glUniform1f(1, C_GRAPH_WIDTH - C_GRAPH_WIDTH * INDEX_OF_LAST_ENTRY / C_SAMPLES_PER_FRAME ); // hva gjør egentlig dette ? ser ingen forskjell?
		//for (int i=0; i<NUM_PLOTS; i++) {
	//		glDrawArrays(GL_LINE_STRIP, SAMPLES_PER_FRAME*i, INDEX_OF_LAST_ENTRY);
	//	}
		GLfloat color1[4] = {152.f/255.f, 0, 186.f/255.f, 1};
		GLfloat color2[4] = {50.f/255.f, 145.f/255.f, 0, 1};
		GLfloat color3[4] = {50.f/255.f, 50.f/255.f, 50.f/255.f, 1};
		glUniform4fv(uniform_color, 1, color1);
		if (INDEX_OF_LAST_ENTRY < samples_half_frame) {
			glDrawArrays(GL_LINE_STRIP, 0, INDEX_OF_LAST_ENTRY);
			glUniform4fv(uniform_color, 1, color2);
			glDrawArrays(GL_LINE_STRIP, samples_half_frame, INDEX_OF_LAST_ENTRY);
		}
		else {
			glDrawArrays(GL_LINE_STRIP, 0, samples_half_frame);
			glUniform4fv(uniform_color, 1, color2);
			glDrawArrays(GL_LINE_STRIP, samples_half_frame, samples_half_frame);
		}	
	//	glUniform4fv(uniform_color, 1, color2);
	//	glDrawArrays(GL_LINE_STRIP, SAMPLES_PER_FRAME, INDEX_OF_LAST_ENTRY);
	}

  glDisableVertexAttribArray(0);

  //glBindBuffer(GL_ARRAY_BUFFER, 0);
  //glUseProgram(0);

	glFlush();
  return true;
}

void Plot2d::realize() {
	init_buffers();
	init_shaders();
	CreateGrid();
}

void Plot2d::unrealize() {
	  glDeleteBuffers(1, &vao);
    glDeleteProgram(program);
}


void Plot2d::init_buffers() {
	glewExperimental = GL_TRUE;
	glewInit();

	if (TEST_RUN == 1) {
		GLfloat xgrid[] = {
			1.0f, 3.0f, 0.0f,
			1.0f, 1.0f, 0.0f,
			-1.0f, 1.0f, 0.0f,
			1.0f, 0.2f, 0.0f, 
			2.0f, 0.5f, 0.3f, 
			1.0f, 0.2f, 0.6f, 
			-1.0f, 0.6f, 0.0f, 
			1.0f, 0.2f, 0.3f, 
			-1.0f, 1.2f, 0.0f, 
		};

		/* we need to create a VAO to store the other buffers */
		glGenVertexArrays (1, &vao);
		glBindVertexArray (vao);

		/* this is the VBO that holds the vertex data */
		glGenBuffers (1, &position_index);
		glBindBuffer (GL_ARRAY_BUFFER, position_index);
		glBufferData (GL_ARRAY_BUFFER, sizeof (xgrid), xgrid, GL_DYNAMIC_DRAW);

		/* enable and set the position attribute */
		glEnableVertexAttribArray (0);
		glVertexAttribPointer (0, 3, GL_FLOAT, GL_FALSE, 0, (GLvoid *) 0);

		glBindBuffer (GL_ARRAY_BUFFER, 0);
		glBindVertexArray (0);
	}
	else if (TEST_RUN == 0) {
		initializeBuffer();
	}

}

void Plot2d::init_shaders() {
	programID = LoadShaders("SimpleVertexShader.vertexshader", "SimpleFragmentShader.fragmentshader");
	//auto vshader_bytes = Gio::Resource::lookup_data_global("/glarea/glarea-vertex.glsl");
	MatrixID = glGetUniformLocation(programID, "MVP");
	uniform_color = glGetUniformLocation(programID, "uniformcolor");


	ProjectionMatrix = glm::perspective(glm::radians(45.0f), 4.0f / 3.0f, 0.1f, 100.0f);
	// Camera matrix
	ViewMatrix = glm::lookAt(
		glm::vec3(0, 0, 1.5), // Camera is at (4,4,-5), in World Space
		glm::vec3(0, 0, 0), // and looks at the origin
		glm::vec3(0, 1, 0)  // Head is up (set to 0,-1,0 to look upside-down)
	);
	// Model matrix : an identity matrix (model will be at the origin)
	ModelMatrix = glm::mat4(1.0f);
	// Our ModelViewProjection : multiplication of our 3 matrices
	MVP = ProjectionMatrix * ViewMatrix * ModelMatrix; // Remember, matrix multiplication is the other way around


	//	uniform_color = glGetUniformLocation(programID, "uniformcolor");
  int status;
  glGetProgramiv(programID, GL_LINK_STATUS, &status);
  //glDeleteProgram(program);
}

void Plot2d::loadTexture(){
	// Load the texture
	Texture = loadDDS("uvmap.DDS");

	// Get a handle for our "myTextureSampler" uniform
	TextureID = glGetUniformLocation(programID, "myTextureSampler");
}