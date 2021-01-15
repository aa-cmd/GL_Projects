#include <iostream>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <glm/mat4x4.hpp>
#include "library.hpp"


//vertex shader source code
char* vssource = 
"#version 330 core\n                                \
layout (location = 0) in vec3 inPosition;           \
void main()                                         \
{                                                   \
    gl_Position = vec4(inPosition, 1.0f);           \
}";                                 

//fragment shader source code 
char* fssource = 
"#version 330 core\n                                \
out vec4 fragColor;                                 \
void main()                                         \
{                                                   \
    fragColor = vec4(1.0f, 0.0f, 0.0f, 1.0f);       \
}";

float vertices[] = {
    -0.6f, -0.6f,   0.0f,
    0.5f,  -0.5f,   0.0f,
    0.0f,   0.5f,   0.0f  
};

unsigned int programId;

int main(int argc, char**  argv)
{
    if(!glfwInit())
        return -1;

    GLFWwindow* window = glfwCreateWindow(800, 600, "First Program", NULL, NULL);
    
    
    if(window == NULL)
    {
        std::cout<<"Window has not been generated"<<std::endl;

        glfwTerminate();

        return -1;
    }

    glfwMakeContextCurrent(window);

    if(!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout<<"Failed to initialize GLAD"<<std::endl;
    }


    unsigned int  vertexShaderInt = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertexShaderInt,1,&vssource,NULL);
    glCompileShader(vertexShaderInt);

    unsigned int fragmentShaderInt = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShaderInt,1,&fssource,NULL);
    glCompileShader(fragmentShaderInt);

    programId = glCreateProgram();
    glAttachShader(programId, vertexShaderInt);
    glAttachShader(programId, fragmentShaderInt);

    glLinkProgram(programId);

    //vertex buffer object
    unsigned int VBO;

    glGenBuffers(1, &VBO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    

    while(!glfwWindowShouldClose(window))
    {
        glfwSwapBuffers(window);

        glfwPollEvents();

        
    }
}