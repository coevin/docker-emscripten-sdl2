FROM emscripten/emsdk:latest

# Pre-cache SDL2
RUN embuilder build sdl2

# Verify SDL2 is cached
RUN ls -l /emsdk/upstream/emscripten/cache/sysroot/include/SDL2

# Add labels for better maintainability
LABEL maintainer="coevin"
LABEL description="Emscripten SDK with pre-cached SDL2"
LABEL version="1.0"
