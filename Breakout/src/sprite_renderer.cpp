#include "sprite_renderer.h"

SpriteRenderer::SpriteRenderer(Shader &shader)
{
    this->shader;
    this->initRenderData();
}

SpriteRenderer::~SpriteRenderer()
{
    glDeleteVertexArrays(1, &this->quadVAO);
}

void SpriteRenderer::DrawSprite(Texture2D &texture)