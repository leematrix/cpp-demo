//
// Created by Matrix on 2022/6/22.
//

#ifndef CPP_DEMO_HELLO_WORLD_HPP
#define CPP_DEMO_HELLO_WORLD_HPP
#include <iostream>
#include <SDL.h>
#include "res_path.h"
using namespace std;

int HelloWorld(){
    //SDL初始化
    if(SDL_Init(SDL_INIT_VIDEO) != 0){
        cout << "SDL_Init error" << SDL_GetError() << endl;
        return 1;
    }

    //创建窗口，指定显示位置和长宽
    SDL_Window *win = SDL_CreateWindow("Hello World!", 100, 100, 640, 480, SDL_WINDOW_SHOWN);
    if(win == nullptr){
        cout << "SDL_CreateWindow Error:" << SDL_GetError() << endl;
        return 1;
    }

    //创建渲染器
    SDL_Renderer *ren = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if(ren == nullptr){
        SDL_DestroyWindow(win);
        cout << "SDL_CreateRenderer Error:" << SDL_GetError() << endl;
        SDL_Quit();
        return 1;
    }

    string imagePath = GetResourcePath() + "hello.bmp";
    SDL_Surface *bmp = SDL_LoadBMP(imagePath.c_str());
    if(bmp == nullptr){
        SDL_DestroyRenderer(ren);
        SDL_DestroyWindow(win);
        cout << "SDL_LoadBMP Error: " << SDL_GetError() << std::endl;
        SDL_Quit();
        return 1;
    }

    SDL_Texture *tex = SDL_CreateTextureFromSurface(ren, bmp);
    SDL_FreeSurface(bmp);
    if(tex == nullptr){
        SDL_DestroyRenderer(ren);
        SDL_DestroyWindow(win);
        std::cout << "SDL_CreateTextureFromSurface Error: " << SDL_GetError() << endl;
        SDL_Quit();
        return 1;
    }

#ifdef __APPLE__
    //mac下需采用这种方式才能将窗口渲染出来
    bool quit = false;
    SDL_Event e;
    SDL_Rect r;
    r.w = 100;
    r.h = 50;

    while (!quit) {
        SDL_PollEvent(&e);
        if (e.type == SDL_QUIT) {
            quit = true;
        }
        r.x=rand()%500;
        r.y=rand()%500;

        SDL_RenderClear(ren);
        SDL_RenderCopy(ren, tex, NULL, &r);
        SDL_RenderPresent(ren);
        SDL_Delay(1000);
    }
#else
    for(int i=0; i<3; i++){
        SDL_RenderClear(ren);
        SDL_RenderCopy(ren, tex, NULL, NULL);
        SDL_RenderPresent(ren);
        SDL_Delay(1000);
    }
#endif

    SDL_DestroyTexture(tex);
    SDL_DestroyRenderer(ren);
    SDL_DestroyWindow(win);
    SDL_Quit();

    return 0;
}

#endif //CPP_DEMO_HELLO_WORLD_HPP
