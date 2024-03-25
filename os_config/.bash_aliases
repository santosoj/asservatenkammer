alias totp='flatpak run com.belmoussaoui.Authenticator &>/dev/null&'
alias whatsapp='snap run whatsie &>/dev/null&'
alias chromium='flatpak run com.github.Eloston.UngoogledChromium &>/dev/null&'
alias mtsshfs="sshfs -o IdentityFile=/home/user/.ssh/id_dexhole_user,Port=11523 user@$DEXHOLE:/home/user/sshfs /home/user/sshfs"
alias showmeta='exiftool -all'

tagfile() {
	exiftool -artist="Andouille" \
	    -copyright="© `date +%Y` Jonas Santoso, published under Creative Commons licence BY-NC-ND 4.0 International." "$1" \
	    -usercomment="https://and0uille.net" \
	    && rm *original
}

stripmeta() {
	exiftool -all= "$1" && rm *original
}