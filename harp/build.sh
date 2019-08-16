export CMAKE_LIBRARY_PATH=$PREFIX/lib

# This is needed to allow bison to find m4
export M4="$(command -v m4)"

cmake \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DCMAKE_OSX_SYSROOT=${SDKROOT} \
  -DHARP_BUILD_PYTHON=True \
  -DHARP_BUILD_R=True \
  -DCODA_INCLUDE_DIR="$PREFIX/include" \
  -DJPEG_INCLUDE_DIR="$PREFIX/include" \
  -DHDF4_INCLUDE_DIR="$PREFIX/include" \
  -DHDF5_INCLUDE_DIR="$PREFIX/include" \
  -DCODA_LIBRARY_DIR="$PREFIX/lib" \
  -DJPEG_LIBRARY_DIR="$PREFIX/lib" \
  -DHDF4_LIBRARY_DIR="$PREFIX/lib" \
  -DHDF5_LIBRARY_DIR="$PREFIX/lib" \
  -DZLIB_LIBRARY_DIR="$PREFIX/lib"

make VERBOSE=1
make install
