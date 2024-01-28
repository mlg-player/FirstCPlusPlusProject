// FirstProject.h : Include file for standard system include files,
// or project specific include files.

#pragma once

#include <iostream>
#include <fstream>
#include <vector>
#include <regex>
#include <string>
#include <filesystem>
#include <SDL2/SDL.h>
#include <json/json.h>
#include "nanosvg.h"
#include "nanosvgrast.h"

#ifndef ChessItem_H
#define ChessItem_H
void Chess__RenderItemsList(SDL_Renderer* renderer);
void Chess__RenderChessItem(const char* filename, SDL_Renderer* renderer, int x, int y);

#endif // !ChessItem_H