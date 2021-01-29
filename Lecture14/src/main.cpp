#include <iostream>
#include <thread>           //std::this_thread::sleep_for
#include <chrono>           //std::chrono::seconds
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <vector>

#include "shaderprogram.hpp"
#include "square.hpp"


float length = 0.08f;


float vertices[] = {
        -length/2,  length/2,   0.0f,
        -length/2, -length/2,   0.0f,
         length/2, -length/2,   0.0f,

        -length/2,  length/2,   0.0f,
         length/2, -length/2,   0.0f,
         length/2,  length/2,   0.0f,        
};

std::vector<Square*> snakeList;

unsigned int VAO, VBO;

void drawSnake(ShaderProgram& program)
{
        for(auto next:snakeList)
        {
            program.setVec3("uMove", next->getPosition());
            program.setVec4("uColor", next->getColor());
            glDrawArrays(GL_TRIANGLES, 0, 6);
        }
}

void addToSnakeTail()
{
    int elementCount = snakeList.size();

    if(elementCount == 0)
    {
        snakeList.push_back(new Square(0.0f, 0.0f, length));
    }
    else
    {
        Square* lastSquare = snakeList[elementCount-1];

        glm::vec3 pos = lastSquare->getPosition();

        Square::DIRECTION dir = lastSquare->getDirection();

        switch(dir)        
        {
            case Square::DIR_RIGHT:
                pos -= glm::vec3(length, 0.0f, 0.0f);
            break;

            case Square::DIR_LEFT:
                pos += glm::vec3(length, 0.0f, 0.0f);
            break;

            case Square::DIR_UP:
                pos -= glm::vec3(0.0f, length, 0.0f);
            break;

            case Square::DIR_DOWN:
                pos += glm::vec3(0.0f, length, 0.0f);
            break;
        }

        Square* newSquare = new Square(pos.x, pos.y, length);

        newSquare->setDirection(dir);

        snakeList.push_back(newSquare);
    }
    
}

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if(key == GLFW_KEY_ESCAPE)
        glfwTerminate();

    if(action == GLFW_PRESS)
    {
        if(key == GLFW_KEY_LEFT)
        {
            // sql.setDirection(Square::DIR_LEFT);
        }

        if(key == GLFW_KEY_RIGHT)
        {
            // sql.setDirection(Square::DIR_RIGHT);
        }

        if(key == GLFW_KEY_UP)
        {
            // sql.setDirection(Square::DIR_UP);
        }

        if(key == GLFW_KEY_DOWN)
        {
            // sql.setDirection(Square::DIR_DOWN);
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
    program.addUniform("uColor");

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

        drawSnake(program);

        std::this_thread::sleep_for(std::chrono::milliseconds(100));
        glfwSwapBuffers(window);

        glfwPollEvents();

        
    }
}