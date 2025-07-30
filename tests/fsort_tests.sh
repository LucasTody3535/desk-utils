#!/bin/bash

# shellcheck disable=SC2188
setup() {
    > ./target/file.doc
    > ./target/file.docx
    > ./target/file.dot
    > ./target/file.dotx
    > ./target/file.docm
    > ./target/file.dotm

    > ./target/file.xls
    > ./target/file.xlsx
    > ./target/file.xlt
    > ./target/file.xltx
    > ./target/file.xlm
    > ./target/file.xlsm
    > ./target/file.xltm

    > ./target/file.ppt
    > ./target/file.pptx
    > ./target/file.pot
    > ./target/file.potx
    > ./target/file.pptm
    > ./target/file.potm
    > ./target/file.ppsm
    > ./target/file.sldm
    > ./target/file.pps
    > ./target/file.ppsx
    > ./target/file.sldx
}

remove_folders() {
    rm -rf ./target/ms_office
}

word_documents_are_organized() {
    printf "    > Word documents organization..."
    if ! [[ -e ./target/ms_office/word/documents/file.doc ]]; then
        echo -e "\n\t! .doc not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/word/documents/file.docx ]]; then
        echo -e "\n\t! .docx not found"
        exit 1
    fi
    printf "OK\n"
}

word_templates_are_organized() {
    printf "    > Word templates organization..."
    if ! [[ -e ./target/ms_office/word/templates/file.dot ]]; then
        echo -e "\n\t! .dot not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/word/templates/file.dotx ]]; then
        echo -e "\n\t! .dotx not found"
        exit 1
    fi
    printf "OK\n"
}

word_macros_are_organized() {
    printf "    > Word macros organization..."
    if ! [[ -e ./target/ms_office/word/macros/file.docm ]]; then
        echo -e "\n\t! .docm not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/word/macros/file.dotm ]]; then
        echo -e "\n\t! .dotm not found"
        exit 1
    fi
    printf "OK\n"
}

excel_documents_are_organized() {
    printf "    > Excel documents organization..."
    if ! [[ -e ./target/ms_office/excel/documents/file.xls ]]; then
        echo -e "\n\t! .xls not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/excel/documents/file.xlsx ]]; then
        echo -e "\n\t! .xlsx not found"
        exit 1
    fi
    printf "OK\n"
}

excel_templates_are_organized() {
    printf "    > Excel templates organization..."
    if ! [[ -e ./target/ms_office/excel/templates/file.xlt ]]; then
        echo -e "\n\t! .xlt not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/excel/templates/file.xltx ]]; then
        echo -e "\n\t! .xltx not found"
        exit 1
    fi
    printf "OK\n"
}

excel_macros_are_organized() {
    printf "    > Excel macros organization..."
    if ! [[ -e ./target/ms_office/excel/macros/file.xlm ]]; then
        echo -e "\n\t! .xlm not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/excel/macros/file.xlsm ]]; then
        echo -e "\n\t! .xlsm not found"
        exit 1
    fi
    if ! [[ -e ./target/ms_office/excel/macros/file.xltm ]]; then
        echo -e "\n\t! .xltm not found"
        exit 1
    fi
    printf "OK\n"
}

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

word_files_are_organized() {
    printf "\n  > Word files organization\n"
    word_documents_are_organized
    word_templates_are_organized
    word_macros_are_organized
    printf "\n"
}

excel_files_are_organized() {
    printf "  > Excel files organization\n"
    excel_documents_are_organized
    excel_templates_are_organized
    excel_macros_are_organized
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

word_files_are_organized
excel_files_are_organized
power_point_files_are_organized

remove_folders
echo -e "> Tests ended"
