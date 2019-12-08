cd "$(dirname "$0")"
rm -rf links
mkdir links

./asutton/build_llvm.sh
./asutton/build_clang.sh
ln -s ../asutton/clang_build/bin/clang++ ./links/clang_of_asutton

./lock3/build.sh
ln -s ../lock3/build/bin/clang++ ./links/clang_of_lock3

./matus-chochlik/build_llvm.sh
./matus-chochlik/build_clang.sh
ln -s ../matus-chochlik/clang_build/bin/clang++ ./links/clang_of_matus-chochlik
