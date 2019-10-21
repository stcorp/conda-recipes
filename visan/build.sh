export CMAKE_LIBRARY_PATH=$PREFIX/lib

if test $BUILD == "x86_64-conda_cos6-linux-gnu" ; then
  # Patch the invalid paths to X libraries in VTKTargets.cmake
  sed -i -e "s:/tmp/build/[^\/]*/vtk_[^\/]*/_build_env/x86_64-conda_cos6-linux-gnu/sysroot/usr/lib64/lib\([^\.]*\).so:\1:g" "$PREFIX/lib/cmake/vtk-8.2/VTKTargets.cmake"
  cmake -DCMAKE_INSTALL_PREFIX="$PREFIX" -DCMAKE_CXX_FLAGS="-L/usr/lib64 -Wl,-rpath-link,/usr/lib64:/lib64"
else
  cmake -DCMAKE_INSTALL_PREFIX="$PREFIX"
fi
make VERBOSE=1
make install
