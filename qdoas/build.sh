export CMAKE_LIBRARY_PATH=$PREFIX/lib

# needed for linking against netCDF
export BUILD_PREFIX=$CONDA_PREFIX

cmake -DCMAKE_INSTALL_PREFIX="$PREFIX" -DCODA_INCLUDE_DIR=$PREFIX/include .
make VERBOSE=1
make install
