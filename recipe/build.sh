#!/bin/bash

mkdir build
cd build

cmake -DOVITO_BUILD_DOCUMENTATION=OFF \
      -DOVITO_BUILD_GUI=ON \
      -DOVITO_BUILD_MONOLITHIC=OFF \
      -DOVITO_REDISTRIBUTABLE_PACKAGE=OFF \
      -DOVITO_USE_PRECOMPILED_HEADERS=ON \
      -DOVITO_BUILD_PYTHON_PACKAGE=OFF \
      -DOVITO_BUILD_CONDA=ON \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      ..

make -j ${CPU_COUNT}
make install
