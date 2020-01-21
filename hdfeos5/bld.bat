cmake ^
  -G"Visual Studio 14 2015 Win64" ^
  -DHDF5_ROOT_DIR=%CONDA_PREFIX%\Library\cmake\hdf5 ^
  -DCMAKE_INSTALL_PREFIX:PATH=%CONDA_PREFIX%\Library
if errorlevel 1 exit 1

cmake --build . --target install --config Release
if errorlevel 1 exit 1
