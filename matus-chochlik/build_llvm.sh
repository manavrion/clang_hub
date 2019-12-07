rm -rf llvm_build
mkdir llvm_build
cd llvm_build
cmake ../llvm
make -j 64
mkdir install
cmake -DCMAKE_INSTALL_PREFIX=install -P cmake_install.cmake
