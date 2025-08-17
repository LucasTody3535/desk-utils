#!/bin/bash

source ./utils.sh

power_point_documents_are_organized() {
    printf "    > Power Point documents organization..."
    if ! [[ -e ./target/ms_office/power_point/documents/file.ppt ]]; then
        echo -e "\n\t! .ppt not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/power_point/documents/file.pptx ]]; then
        echo -e "\n\t! .pptx not found"
        exit 1
    fi
    printf "OK\n"
}

power_point_templates_are_organized() {
    printf "    > Power Point templates organization..."
    if ! [[ -e ./target/ms_office/power_point/templates/file.pot ]]; then
        echo -e "\n\t! .pot not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/power_point/templates/file.potx ]]; then
        echo -e "\n\t! .potx not found"
        exit 1
    fi
    printf "OK\n"
}

power_point_macros_are_organized() {
    printf "    > Power Point macros organization..."
    if ! [[ -e ./target/ms_office/power_point/macros/file.pptm ]]; then
        echo -e "\n\t! .pptm not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/power_point/macros/file.potm ]]; then
        echo -e "\n\t! .potm not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/power_point/macros/file.ppsm ]]; then
        echo -e "\n\t! .ppsm not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/power_point/macros/file.sldm ]]; then
        echo -e "\n\t! .sldm not found"
        exit 1
    fi
    printf "OK\n"
}

power_point_slideshows_are_organized() {
    printf "    > Power Point slideshows organization..."
    if ! [[ -e ./target/ms_office/power_point/slideshows/file.pps ]]; then
        echo -e "\n\t! .pps not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/power_point/slideshows/file.ppsx ]]; then
        echo -e "\n\t! .ppsx not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/power_point/slideshows/file.sldx ]]; then
        echo -e "\n\t! .sldx not found"
        exit 1
    fi
    printf "OK\n"
}

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

power_point_files_are_organized() {
    printf "  > Power Point files organization\n"
    power_point_documents_are_organized
    power_point_templates_are_organized
    power_point_macros_are_organized
    power_point_slideshows_are_organized
    printf "\n"
}


clear
echo "> Running tests"
remove_folders
setup

cd ./target || exit
fsort &> /dev/null && cd ..

test_word_files_sorting
test_excel_files_sorting
power_point_files_are_organized

remove_folders
echo -e "> Tests ended"
