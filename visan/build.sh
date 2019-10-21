export CMAKE_LIBRARY_PATH=$PREFIX/lib

if test $BUILD == "x86_64-conda_cos6-linux-gnu" ; then
  # Add missing dependency on libuuid.so
  sed -i -e "s:\(/tmp/build/[^\/]*/vtk_[^\/]*/_build_env/x86_64-conda_cos6-linux-gnu/sysroot/usr/lib64/lib\)SM.so:\1uuid.so;\1SM.so:" "$PREFIX/lib/cmake/vtk-8.2/VTKTargets.cmake"
  # Patch the invalid paths to X libraries in VTKTargets.cmake
  sed -i -e "s:/tmp/build/[^\/]*/vtk_[^\/]*/_build_env:$PREFIX:g" "$PREFIX/lib/cmake/vtk-8.2/VTKTargets.cmake"
  cmake -DCMAKE_INSTALL_PREFIX="$PREFIX"
else
  cmake -DCMAKE_INSTALL_PREFIX="$PREFIX"
fi
make VERBOSE=1
make install
