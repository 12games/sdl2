pushd %cd%

IF EXIST build\SDL GOTO doneClone

mkdir build
git clone https://github.com/SDL-mirror/SDL build/SDL

:doneClone

copy CMakeLists.txt "build"

cd build
IF NOT EXIST "MinGW Makefiles" mkdir "MinGW Makefiles"

cd "MinGW Makefiles"
cmake -G "MinGW Makefiles" -DCMAKE_INSTALL_PREFIX:PATH="..\..\MinGW Makefiles" ..\SDL
cmake --build . --target SDL2
cmake --build . --target install

popd