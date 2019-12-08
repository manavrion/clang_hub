cd "$(dirname "$0")"
rm -rf build
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../../toolchain.cmake -DLLVM_ENABLE_PROJECTS="clang;libcxx;libcxxabi" ../clang/llvm
cmake --build . -j 64
cmake --build .
