cd "$(dirname "$0")"
# Fix compilation
cd clang
git apply ../fix_clang.patch
cd ..

rm -rf clang_build
mkdir clang_build
cd clang_build
cmake -DCMAKE_TOOLCHAIN_FILE=../../toolchain.cmake -DLLVM_CONFIG=../llvm_build/install/bin/llvm-config ../clang
cmake --build . --target clang -j 64
cmake --build . --target clang

# Revert patch
cd "$(dirname "$0")"
cd clang
git checkout -- lib/StaticAnalyzer/Core/Z3ConstraintManager.cpp
