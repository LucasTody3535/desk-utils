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
    printf "OK\n"

    printf "\n"
}

test_acrobat_files_sorting() {
    local base_dir="./target/acrobat"
    printf "  > Acrobat files sorting\n"

    printf "    > PDF file sorting..."
    it_exists_in_path "$base_dir"/pdf_documents/file.pdf "pdf"
    printf "OK\n\n"
}

test_writer_files_sorting() {
    local base_dir="./target/libreoffice/writer"
    printf "  > Writer files sorting\n"

    printf "    > Documents sorting..."
    it_exists_in_path "$base_dir"/documents/file.odt "odt"
    it_exists_in_path "$base_dir"/documents/file.fodt "fodt"
    printf "OK\n"

    printf "    > Templates sorting..."
    it_exists_in_path "$base_dir"/templates/file.ott "ott"
    printf "OK\n"

    printf "\n"
}

test_calc_files_sorting() {
    local base_dir="./target/libreoffice/calc"
    printf "  > Calc files sorting\n"

    printf "    > Documents sorting..."
    it_exists_in_path "$base_dir"/documents/file.ods "ods"
    it_exists_in_path "$base_dir"/documents/file.fods "fods"
    printf "OK\n"

    printf "    > Templates sorting..."
    it_exists_in_path "$base_dir"/templates/file.ots "ots"
    printf "OK\n"

    printf "\n"
}

test_impress_files_sorting() {
    local base_dir="./target/libreoffice/impress"
    printf "  > Impress files sorting\n"

    printf "    > Documents sorting..."
    it_exists_in_path "$base_dir"/documents/file.odp "odp"
    it_exists_in_path "$base_dir"/documents/file.fodp "fodp"
    printf "OK\n"

    printf "    > Templates sorting..."
    it_exists_in_path "$base_dir"/templates/file.otp "otp"
    printf "OK\n"

    printf "    > Drawings sorting..."
    it_exists_in_path "$base_dir"/drawings/file.odg "odg"
    printf "OK\n"

    printf "\n"
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
    printf "OK\n"

    printf "\n"
}

clear
echo "> Running tests"
rm -rf ./target
setup

cd ./target || exit
fsort &> /dev/null && cd ..

test_ms_office_files_sorting
test_acrobat_files_sorting

test_writer_files_sorting
test_calc_files_sorting
test_impress_files_sorting

test_image_files_sorting

rm -rf ./target
echo -e "> Tests ended"
