rm -rf build
mkdir build
cd build
cmake -DCMAKE_CXX_FLAGS="-fpermissive" ../clang-meta/llvm
cmake --build . -j 64
cmake --build . --target clang-wreflection -j 64
