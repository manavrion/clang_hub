cd "$(dirname "$0")"
rm -rf build
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../../toolchain.cmake -DLLVM_ENABLE_PROJECTS="clang;libcxx;libcxxabi" ../clang/llvm
cmake --build . -j 64
cmake --build .
cmake -DCMAKE_INSTALL_PREFIX=install -P cmake_install.cmake
tar -czvf clang_of_lock3.tar.gz install/
