#!/data/data/com.termux/files/usr/bin/env bash
# ------------------------------------------
# Crates a list of signing keys not listed
# in the local keyring
# ------------------------------------------
# Enter use ID to check local keyring for
# as first parameter
# ------------------------------------------
function cksigKeys () {
    if [ $# != 1 ]; then
        echo -ne "You must supply a <USERID> for a signature to check the keyring for locally..."
        return 13
    else
        gpg --list-sigs --with-colons $1 | awk -F: '$1=="sig" && $2=="?"{if($13){print $13}else{print $5}}' > ~/missing-sigKeys-in-Keyring.txt
    fi
}
