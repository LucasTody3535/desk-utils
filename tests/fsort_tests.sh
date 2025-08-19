#!/bin/bash

source ./utils.sh

test_ms_office_files_sorting() {
    local base_dir="./target/ms_office"
    printf "\n  > MS Office files sorting\n"

    printf "    > Word files sorting..."
    it_exists_in_path "$base_dir"/word/documents/file.doc "doc"
    it_exists_in_path "$base_dir"/word/documents/file.docx "docx"
    it_exists_in_path "$base_dir"/word/templates/file.dot "dot"
    it_exists_in_path "$base_dir"/word/templates/file.dotx "dotx"
    it_exists_in_path "$base_dir"/word/macros/file.docm "docm"
    it_exists_in_path "$base_dir"/word/macros/file.dotm "dotm"
    printf "OK\n"

    printf "    > Excel files sorting..."
    it_exists_in_path "$base_dir"/excel/documents/file.xls "xls"
    it_exists_in_path "$base_dir"/excel/documents/file.xlsx "xlsx"
    it_exists_in_path "$base_dir"/excel/templates/file.xlt "xlt"
    it_exists_in_path "$base_dir"/excel/templates/file.xltx "xltx"
    it_exists_in_path "$base_dir"/excel/macros/file.xlm "xlm"
    it_exists_in_path "$base_dir"/excel/macros/file.xlsm "xlsm"
    it_exists_in_path "$base_dir"/excel/macros/file.xltm "xltm"
    printf "OK\n"

    printf "    > Power Point files sorting..."
    it_exists_in_path "$base_dir"/power_point/documents/file.ppt "ppt"
    it_exists_in_path "$base_dir"/power_point/documents/file.pptx "pptx"
    it_exists_in_path "$base_dir"/power_point/templates/file.pot "pot"
    it_exists_in_path "$base_dir"/power_point/templates/file.potx "potx"
    it_exists_in_path "$base_dir"/power_point/macros/file.pptm "pptm"
    it_exists_in_path "$base_dir"/power_point/macros/file.potm "potm"
    it_exists_in_path "$base_dir"/power_point/macros/file.ppsm "ppsm"
    it_exists_in_path "$base_dir"/power_point/macros/file.sldm "sldm"
    it_exists_in_path "$base_dir"/power_point/slideshows/file.pps "pps"
    it_exists_in_path "$base_dir"/power_point/slideshows/file.ppsx "ppsx"
    it_exists_in_path "$base_dir"/power_point/slideshows/file.sldx "sldx"
    printf "OK\n\n"
}

test_acrobat_files_sorting() {
    local base_dir="./target/acrobat"
    printf "  > Acrobat files sorting\n"

    printf "    > PDF file sorting..."
    it_exists_in_path "$base_dir"/pdf_documents/file.pdf "pdf"
    printf "OK\n\n"
}

test_libreoffice_files_sorting() {
    local base_dir="./target/libreoffice"
    printf "  > Libreoffice files sorting\n"

    printf "    > Writer files sorting..."
    it_exists_in_path "$base_dir"/writer/documents/file.odt "odt"
    it_exists_in_path "$base_dir"/writer/documents/file.fodt "fodt"
    it_exists_in_path "$base_dir"/writer/templates/file.ott "ott"
    printf "OK\n"

    printf "    > Calc files sorting..."
    it_exists_in_path "$base_dir"/calc/documents/file.ods "ods"
    it_exists_in_path "$base_dir"/calc/documents/file.fods "fods"
    it_exists_in_path "$base_dir"/calc/templates/file.ots "ots"
    printf "OK\n"

    printf "    > Impress files sorting..."
    it_exists_in_path "$base_dir"/impress/documents/file.odp "odp"
    it_exists_in_path "$base_dir"/impress/documents/file.fodp "fodp"
    it_exists_in_path "$base_dir"/impress/templates/file.otp "otp"
    it_exists_in_path "$base_dir"/impress/drawings/file.odg "odg"
    printf "OK\n\n"
}

test_image_files_sorting() {
    local base_dir="./target/images"
    printf "  > Image files sorting\n"

    printf "    > Png file sorting..."
    it_exists_in_path "$base_dir"/png/file.png "png"
    printf "OK\n"

    printf "    > Avif file sorting..."
    it_exists_in_path "$base_dir"/avif/file.avif "avif"
    printf "OK\n"

    printf "    > Gif file sorting..."
    it_exists_in_path "$base_dir"/gif/file.gif "gif"
    printf "OK\n"

    printf "    > Jpeg files sorting..."
    it_exists_in_path "$base_dir"/jpeg/file.jpg "jpg"
    it_exists_in_path "$base_dir"/jpeg/file.jpeg "jpeg"
    printf "OK\n"

    printf "    > Svg file sorting..."
    it_exists_in_path "$base_dir"/svg/file.svg "svg"
    printf "OK\n"

    printf "    > Webp file sorting..."
    it_exists_in_path "$base_dir"/webp/file.webp "webp"
    printf "OK\n"

    printf "    > Bitmap file sorting..."
    it_exists_in_path "$base_dir"/bitmap/file.bmp "bmp"
    printf "OK\n"

    printf "    > Ico file sorting..."
    it_exists_in_path "$base_dir"/ico/file.ico "ico"
    printf "OK\n\n"
}

test_compressed_files_sorting() {
    local base_dir="./target/compressed_files"
    printf "  > Compressed files sorting\n"

    printf "    > Zip file sorting..."
    it_exists_in_path "$base_dir"/zip/file.zip "zip"
    printf "OK\n"

    printf "    > Bz2 file sorting..."
    it_exists_in_path "$base_dir"/bzip2/file.bz2 "bz2"
    printf "OK\n"

    printf "    > Gzip file sorting..."
    it_exists_in_path "$base_dir"/gzip/file.gz "gz"
    printf "OK\n"

    printf "    > Tar file sorting..."
    it_exists_in_path "$base_dir"/tar/file.tar "tar"
    printf "OK\n"

    printf "    > Rar file sorting..."
    it_exists_in_path "$base_dir"/rar/file.rar "rar"
    printf "OK\n"

    printf "    > 7zip file sorting..."
    it_exists_in_path "$base_dir"/7zip/file.7z "7z"
    printf "OK\n\n"
}

test_java_files_sorting() {
    local base_dir="./target/java"
    printf "  > Java files sorting\n"

    printf "    > Jar file sorting..."
    it_exists_in_path "$base_dir"/jars/file.jar "jar"
    printf "OK\n\n"
}

test_uncategorized_files_sorting() {
    local base_dir="./target/uncategorized"
    printf "  > Uncategorized files sorting\n"

    printf "    > Txt file sorting..."
    it_exists_in_path "$base_dir"/txt/file.txt "txt"
    printf "OK\n"
    
    printf "    > Drawio file sorting..."
    it_exists_in_path "$base_dir"/drawio/file.drawio "drawio"
    printf "OK\n\n"
}

test_applications_sorting() {
    local base_dir="./target/applications"
    printf "  > Applications sorting\n"

    printf "    > Windows apps sorting..."
    it_exists_in_path "$base_dir"/windows/msi/file.msi "msi"
    it_exists_in_path "$base_dir"/windows/exe/file.exe "exe"
    printf "OK\n"

    printf "    > Linux apps sorting..."
    it_exists_in_path "$base_dir"/linux/deb/file.deb "deb"
    it_exists_in_path "$base_dir"/linux//appimage/file.AppImage "AppImage"
    printf "OK\n\n"
}

test_audios_sorting() {
    local base_dir="./target/audios"
    printf "  > Audios sorting\n"

    printf "    > Mp3 file sorting..."
    it_exists_in_path "$base_dir"/mp3/file.mp3 "mp3"
    printf "OK\n"

    printf "    > Wav file sorting..."
    it_exists_in_path "$base_dir"/wav/file.wav "wav"
    printf "OK\n\n"
}

clear
echo "> Running tests"
rm -rf ./target
setup

cd ./target || exit
fsort &> /dev/null && cd ..

test_ms_office_files_sorting
test_acrobat_files_sorting
test_libreoffice_files_sorting
test_image_files_sorting
test_compressed_files_sorting
test_java_files_sorting
test_uncategorized_files_sorting
test_applications_sorting
test_audios_sorting

rm -rf ./target
echo -e "> Tests ended"
