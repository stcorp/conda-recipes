cmake ^
  -G"Visual Studio 14 2015 Win64" ^
  -DHARP_ENABLE_CONDA_INSTALL=True ^
  -DHARP_BUILD_PYTHON=True ^
  -DHARP_BUILD_R=True ^
  -DCODA_INCLUDE_DIR="%CONDA_PREFIX%\Library\include" ^
  -DJPEG_INCLUDE_DIR="%CONDA_PREFIX%\Library\include" ^
  -DHDF4_INCLUDE_DIR="%CONDA_PREFIX%\Library\include" ^
  -DHDF5_INCLUDE_DIR="%CONDA_PREFIX%\Library\include" ^
  -DCMAKE_INSTALL_PREFIX:PATH=%CONDA_PREFIX%
if errorlevel 1 exit 1

cmake --build . --target install --config Release
if errorlevel 1 exit 1
