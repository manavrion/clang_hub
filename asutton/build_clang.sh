cd "$(dirname "$0")"
rm -rf clang_build
mkdir clang_build
cd clang_build
cmake -DCMAKE_TOOLCHAIN_FILE=../../toolchain.cmake -DLLVM_CONFIG=../llvm_build/install/bin/llvm-config ../clang
cmake --build . -j 64
cmake --build .
cmake -DCMAKE_INSTALL_PREFIX=install -P cmake_install.cmake
tar -czvf clang_of_asutton.tar.gz install/
