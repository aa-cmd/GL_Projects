#version 330 core

layout (location = 0) in vec3 inPosition;

uniform float uMovex;
void main()
{
    gl_Position = vec4(inPosition + vec3(uMovex, 0.0f, 0.0f), 1.0);
}