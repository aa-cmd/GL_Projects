#include <iostream>

#include <GLFW/glfw3.h>

#include "library.hpp"

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

    while(!glfwWindowShouldClose(window))
    {
        glfwSwapBuffers(window);

        glfwPollEvents();

        
    }
}