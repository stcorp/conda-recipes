export CMAKE_LIBRARY_PATH=$PREFIX/lib

# This is needed to allow bison to find m4
export M4="$(command -v m4)"

cmake \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DCODA_BUILD_PYTHON=True \
  -DCODA_WITH_HDF4=True \
  -DCODA_WITH_HDF5=True \
  -DJPEG_INCLUDE_DIR="$PREFIX/include" \
  -DHDF4_INCLUDE_DIR="$PREFIX/include" \
  -DHDF5_INCLUDE_DIR="$PREFIX/include" \
  -DJPEG_LIBRARY_DIR="$PREFIX/lib" \
  -DHDF4_LIBRARY_DIR="$PREFIX/lib" \
  -DHDF5_LIBRARY_DIR="$PREFIX/lib" \
  -DZLIB_LIBRARY_DIR="$PREFIX/lib"

make VERBOSE=1
make install
