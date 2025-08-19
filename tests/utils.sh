# shellcheck disable=SC2148

function it_exists_in_path() {
    if ! [[ -e "$1" ]]; then
        echo -e "\n\t! .""$2"" not found"
        exit 1
    fi
    return
}

# shellcheck disable=SC2188
setup() {
    mkdir ./target

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

    > ./target/file.pdf

    > ./target/file.odt
    > ./target/file.fodt

    > ./target/file.ott

    > ./target/file.ods
    > ./target/file.fods

    > ./target/file.ots

    > ./target/file.odp
    > ./target/file.fodp

    > ./target/file.otp

    > ./target/file.odg

    > ./target/file.png
    > ./target/file.avif
    > ./target/file.gif
    > ./target/file.jpg
    > ./target/file.jpeg
    > ./target/file.svg
    > ./target/file.webp
    > ./target/file.bmp
    > ./target/file.ico

    > ./target/file.zip
    > ./target/file.bz2
    > ./target/file.gz
    > ./target/file.tar
    > ./target/file.rar
    > ./target/file.7z

    > ./target/file.jar
}
