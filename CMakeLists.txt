cmake_minimum_required(VERSION 3.7)

set(SDL_STATIC ON)

# Make sure no d3d and opengl ES is build
# (we are on windows withiout the HUGE DXSDK)
set(DIRECTX OFF CACHE BOOL "DIRECTX off")
set(SDL_SRENDER_D3D OFF CACHE BOOL "SDL_SRENDER_D3D off")
set(VIDEO_OPENGLES OFF CACHE BOOL "VIDEO_OPENGLES off")

add_subdirectory(build/SDL)

