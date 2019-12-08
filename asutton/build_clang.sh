rm -rf clang_build
mkdir clang_build
cd clang_build
cmake -DLLVM_CONFIG=../llvm_build/install/bin/llvm-config ../clang
cmake --build . --target clang -j 64
