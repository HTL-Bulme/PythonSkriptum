rm ./../ebook/src/*
cp *.md ./../ebook/src -f -v
cp tablefilter ./../ebook/src -f
cp images/* ./../ebook/images -f

find ./../ebook/src -type f -exec sed -i 's/📝/![](.\/images\/pencil-svgrepo-com.svg){ width=16px }/gI' {} \;
find ./../ebook/src -type f -exec sed -i 's/🐢/![](.\/images\/turtle-svgrepo-com.svg){ width=16px }/gI' {} \;
find ./../ebook/src -type f -exec sed -i 's/💡/![](.\/images\/lightbulb-svgrepo-com.svg){ width=16px }/gI' {} \;
find ./../ebook/src -type f -exec sed -i 's/🧭/![](.\/images\/compass-svgrepo-com.svg){ width=16px }/gI' {} \;
find ./../ebook/src -type f -exec sed -i 's/ℹ/![](.\/images\/information-svgrepo-com.svg){ width=16px }/gI' {} \;
find ./../ebook/src -type f -exec sed -i 's/⚠/![](.\/images\/warning-svgrepo-com.svg){ width=16px }/gI' {} \;
find ./../ebook/src -type f -exec sed -i 's/😉/![](.\/images\/wink-svgrepo-com.svg){ width=16px }/gI' {} \;
find ./../ebook/src -type f -exec sed -i 's/✨/![](.\/images\/stars-star-svgrepo-com.svg){ width=16px }/gI' {} \;
find ./../ebook/src -type f -exec sed -i 's/🎨/![](.\/images\/drawing-drawing-svgrepo-com.svg){ width=16px }/gI' {} \;
find ./../ebook/src -type f -exec sed -i 's/🧮/![](.\/images\/calculator-svgrepo-com.svg){ width=16px }/gI' {} \;
find ./../ebook/src -type f -exec sed -i 's/📜/![](.\/images\/scroll-svgrepo-com.svg){ width=16px }/gI' {} \;
find ./../ebook/src -type f -exec sed -i 's/🔤/![](.\/images\/abc-squares-svgrepo-com.svg){ width=16px }/gI' {} \;
find ./../ebook/src -type f -exec sed -i 's/🖱/![](.\/images\/cursor-svgrepo-com.svg){ width=16px }/gI' {} \;

pushd ./../ebook/
./compile_pdf.sh
popd
