rm -rf llvm_build
mkdir llvm_build
cd llvm_build
cmake ../llvm
cmake --build . -j 32
mkdir install
cmake -DCMAKE_INSTALL_PREFIX=install -P cmake_install.cmake
