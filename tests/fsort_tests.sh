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

clear
echo "> Running tests"
remove_folders
setup

cd ./target || exit
fsort &> /dev/null && cd ..

word_files_are_organized
excel_files_are_organized

remove_folders
echo -e "> Tests ended"
