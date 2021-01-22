#include <iostream>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include "shaderprogram.hpp"




float vertices[] = {
        -0.6f, -0.6f,   0.0f,
        0.6f,  -0.6f,   0.0f,
        0.0f,   0.6f,   0.0f,
        0.0f,   0.6f,   0.0f,
        -0.8f,  0.9f,   0.0f,
        0.8f,   0.9f,   0.0f
};

unsigned int VAO, VBO;


int main(int argc, char**  argv)
{
    if(!glfwInit())
        return -1;

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

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
        return -1;
    }

    ShaderProgram program;

    program.attachShader("./shaders/simplevs.glsl", GL_VERTEX_SHADER);
    program.attachShader("./shaders/simplefs.glsl", GL_FRAGMENT_SHADER);
    program.link();


    glGenVertexArrays(1, &VAO);

    glGenBuffers(1, &VBO);

    glBindVertexArray(VAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3*sizeof(float),(void*)0);

    glEnableVertexAttribArray(0);



    while(!glfwWindowShouldClose(window))
    {
        glClearColor(0.0f, 0.4f, 0.7f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        program.use();

        glBindVertexArray(VAO);
        glEnableVertexAttribArray(0);

        glDrawArrays(GL_TRIANGLES, 0, 6);


        glfwSwapBuffers(window);

        glfwPollEvents();

        
    }
}