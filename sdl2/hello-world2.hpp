//
// Created by Matrix on 2022/6/22.
//

#ifndef CPP_DEMO_HELLO_WORLD2_HPP
#define CPP_DEMO_HELLO_WORLD2_HPP
#include <string>
#include <iostream>
#include <SDL.h>
#include "cleanup.hpp"
#include "res_path.h"
using namespace std;

const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;

void LogSDLError(ostream &os, const string &msg){
    os << msg << " error: " << SDL_GetError() << endl;
}

SDL_Texture* LoadTexture(const string& file, SDL_Renderer *ren){
    SDL_Texture *texture = nullptr;
    SDL_Surface  *loadedImage = SDL_LoadBMP(file.c_str());
    if(loadedImage != nullptr){
        texture = SDL_CreateTextureFromSurface(ren, loadedImage);
        SDL_FreeSurface(loadedImage);
        if(texture == nullptr){
            LogSDLError(cout, "CreateTextureFromSurface.");
        }
    } else {
        LogSDLError(cout, "LoadBMP");
    }
    return texture;
}

void RenderTexture(SDL_Texture *tex, SDL_Renderer *ren, int x, int y){
    SDL_Rect dst;
    dst.x = x;
    dst.y = y;
    SDL_QueryTexture(tex, NULL, NULL, &dst.w, &dst.h);
    SDL_RenderCopy(ren, tex, NULL, &dst);
}

int HelloWorld2(){
    //初始化
    if (SDL_Init(SDL_INIT_VIDEO) != 0){
        LogSDLError(std::cout, "SDL_Init");
        return 1;
    }

    //创建窗口，指定显示位置和长宽
    SDL_Window *window = SDL_CreateWindow("Hello World2", 100, 100, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
    if (window == nullptr){
        LogSDLError(std::cout, "CreateWindow");
        SDL_Quit();
        return 1;
    }

    //创建渲染器，支持硬件加速
    SDL_Renderer *renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (renderer == nullptr){
        LogSDLError(std::cout, "CreateRenderer");
        cleanup(window);
        SDL_Quit();
        return 1;
    }

    //加载纹理
    string resPath = GetResourcePath();
    SDL_Texture *background = LoadTexture(resPath + "background.bmp", renderer);
    SDL_Texture *image = LoadTexture(resPath + "image.bmp", renderer);
    if (background == nullptr || image == nullptr){
        cleanup(background, image, renderer, window);
        SDL_Quit();
        return 1;
    }

    //mac下需采用这种方式才能将窗口渲染出来
    bool quit = false;
    SDL_Event e;
    while (!quit) {
        SDL_PollEvent(&e);
        if (e.type == SDL_QUIT) {
            quit = true;
        }

        //清空渲染器
        SDL_RenderClear(renderer);

        //渲染背景纹理
        int bW, bH;
        SDL_QueryTexture(background, NULL, NULL, &bW, &bH);
        RenderTexture(background, renderer, 0, 0);
        RenderTexture(background, renderer, bW, 0);
        RenderTexture(background, renderer, 0, bH);
        RenderTexture(background, renderer, bW, bH);

        //渲染图像纹理
        int iW, iH;
        SDL_QueryTexture(image, NULL, NULL, &iW, &iH);
        int x = rand()%(SCREEN_WIDTH-iW);
        int y = rand()%(SCREEN_HEIGHT-iH);
        RenderTexture(image, renderer, x, y);

        //显示图像
        SDL_RenderPresent(renderer);
        SDL_Delay(1000);
    }

    return 0;
}

#endif //CPP_DEMO_HELLO_WORLD2_HPP
