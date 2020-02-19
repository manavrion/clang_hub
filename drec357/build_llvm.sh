cd "$(dirname "$0")"
rm -rf llvm_build
mkdir llvm_build
cd llvm_build
cmake -DCMAKE_TOOLCHAIN_FILE=../../toolchain.cmake ../clang-meta/llvm
cmake --build . -j 64
cmake --build .
mkdir install
cmake -DCMAKE_INSTALL_PREFIX=install -P cmake_install.cmake
