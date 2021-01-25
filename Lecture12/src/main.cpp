#include <iostream>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include "shaderprogram.hpp"


float length = 0.08f;
glm::vec3 position = glm::vec3(0.0f, 0.0f, 0.0f);

float vertices[] = {
        -length/2,  length/2,   0.0f,
        -length/2, -length/2,   0.0f,
         length/2, -length/2,   0.0f,

        -length/2,  length/2,   0.0f,
         length/2, -length/2,   0.0f,
         length/2,  length/2,   0.0f,        
};

unsigned int VAO, VBO;

float vl = 0.0f;

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if(key == GLFW_KEY_ESCAPE)
        glfwTerminate();

    if(action == GLFW_PRESS)
    {
        if(key == GLFW_KEY_LEFT)
        {
            position -= glm::vec3(length, 0.0f, 0.0f);
        }

        if(key == GLFW_KEY_RIGHT)
        {
            position += glm::vec3(length, 0.0f, 0.0f);
        }

        if(key == GLFW_KEY_UP)
        {
            position += glm::vec3(0.0f, length, 0.0f);
        }

        if(key == GLFW_KEY_DOWN)
        {
            position -= glm::vec3(0.0f, length, 0.0f);
        }  
    }

  
}

int main(int argc, char**  argv)
{
    if(!glfwInit())
        return -1;

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLFWwindow* window = glfwCreateWindow(800, 800, "First Program", NULL, NULL);
    
    
    if(window == NULL)
    {
        std::cout<<"Window has not been generated"<<std::endl;

        glfwTerminate();

        return -1;
    }

    glfwSetKeyCallback(window, key_callback);
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

    program.addUniform("uMove");

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

        program.setVec3("uMove", position);
    

        glBindVertexArray(VAO);
        glEnableVertexAttribArray(0);

        glDrawArrays(GL_TRIANGLES, 0, 6);


        glfwSwapBuffers(window);

        glfwPollEvents();

        
    }
}