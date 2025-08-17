#!/bin/bash

source ./utils.sh

test_word_files_sorting() {
    local base_dir="./target/ms_office/word"
    printf "\n  > Word files sorting\n"

    printf "    > Documents sorting..."
    it_exists_in_path "$base_dir"/documents/file.doc "doc"
    it_exists_in_path "$base_dir"/documents/file.docx "docx"
    printf "OK\n"

    printf "    > Templates sorting..."
    it_exists_in_path "$base_dir"/templates/file.dot "dot"
    it_exists_in_path "$base_dir"/templates/file.dotx "dotx"
    printf "OK\n"

    printf "    > Macros sorting..."
    it_exists_in_path "$base_dir"/macros/file.docm "docm"
    it_exists_in_path "$base_dir"/macros/file.dotm "dotm"
    printf "OK\n"

    printf "\n"
}

test_excel_files_sorting() {
    local base_dir="./target/ms_office/excel"
    printf "  > Excel files sorting\n"

    printf "    > Documents sorting..."
    it_exists_in_path "$base_dir"/documents/file.xls "xls"
    it_exists_in_path "$base_dir"/documents/file.xlsx "xlsx"
    printf "OK\n"

    printf "    > Templates sorting..."
    it_exists_in_path "$base_dir"/templates/file.xlt "xlt"
    it_exists_in_path "$base_dir"/templates/file.xltx "xltx"
    printf "OK\n"

    printf "    > Macros sorting..."
    it_exists_in_path "$base_dir"/macros/file.xlm "xlm"
    it_exists_in_path "$base_dir"/macros/file.xlsm "xlsm"
    it_exists_in_path "$base_dir"/macros/file.xltm "xltm"
    printf "OK\n"

    printf "\n"
}

test_powerpoint_files_sorting() {
    local base_dir="./target/ms_office/power_point"
    printf "  > Power Point files sorting\n"

    printf "    > Documents sorting..."
    it_exists_in_path "$base_dir"/documents/file.ppt "ppt"
    it_exists_in_path "$base_dir"/documents/file.pptx "pptx"
    printf "OK\n"

    printf "    > Templates sorting..."
    it_exists_in_path "$base_dir"/templates/file.pot "pot"
    it_exists_in_path "$base_dir"/templates/file.potx "potx"
    printf "OK\n"

    printf "    > Macros sorting..."
    it_exists_in_path "$base_dir"/macros/file.pptm "pptm"
    it_exists_in_path "$base_dir"/macros/file.potm "potm"
    it_exists_in_path "$base_dir"/macros/file.ppsm "ppsm"
    it_exists_in_path "$base_dir"/macros/file.sldm "sldm"
    printf "OK\n"

    printf "    > Slideshows sorting..."
    it_exists_in_path "$base_dir"/slideshows/file.pps "pps"
    it_exists_in_path "$base_dir"/slideshows/file.ppsx "ppsx"
    it_exists_in_path "$base_dir"/slideshows/file.sldx "sldx"
    printf "OK\n"

    printf "\n"
}


clear
echo "> Running tests"
rm -rf ./target
setup

cd ./target || exit
fsort &> /dev/null && cd ..

test_word_files_sorting
test_excel_files_sorting
test_powerpoint_files_sorting

rm -rf ./target
echo -e "> Tests ended"
