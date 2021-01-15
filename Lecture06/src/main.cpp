#include <iostream>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <glm/mat4x4.hpp>
#include "library.hpp"


//vertex shader source code


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

    programId = glCreateProgram();



    while(!glfwWindowShouldClose(window))
    {
        glfwSwapBuffers(window);

        glfwPollEvents();

        
    }
}