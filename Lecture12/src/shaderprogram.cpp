#include "shaderprogram.hpp"
#include <glad/glad.h>
#include <fstream>

ShaderProgram::ShaderProgram()
{
   m_ProgramId = glCreateProgram();
}
ShaderProgram::~ShaderProgram()
{
    glDeleteProgram(m_ProgramId);
}
void ShaderProgram::link()
{
    glLinkProgram(m_ProgramId);

}
void ShaderProgram::use()
{
    glUseProgram(m_ProgramId);
}

void ShaderProgram::addUniform(const std::string& varName)
{
    m_UniformVars[varName] = glGetUniformLocation(m_ProgramId, varName.c_str());
}

void ShaderProgram::setFloat(const std::string& varName, float value)
 {
     glUniform1f(m_UniformVars[varName], value);
 }

void ShaderProgram::setVec3(const std::string& varName, const glm::vec3& value)
 {
     glUniform3f(m_UniformVars[varName], value.x, value.y, value.z);
 }

void ShaderProgram::setVec4(const std::string& varName, const glm::vec4& value)
 {
     glUniform4f(m_UniformVars[varName], value.r, value.g, value.b, value.a);
 }

void ShaderProgram::attachShader(const char* fileName, unsigned int shaderType)
{
        unsigned int shaderId = glCreateShader(shaderType);

        std::string sourceCode =  getShaderFromFile(fileName);

        const char* chSourceCode = &sourceCode[0];

        glShaderSource(shaderId, 1, &chSourceCode,0);

        glCompileShader(shaderId);

        glAttachShader(m_ProgramId, shaderId);

        glDeleteShader(shaderId);
}
std::string ShaderProgram::getShaderFromFile(const char* fileName)
{
    std::ifstream file(fileName);
    std::string data;
    
    if(file.is_open())
    {
        char readChar;

        while((readChar = file.get()) != EOF)
        {
            data+=readChar;
        }

        file.close();
    }

    return data;    
}