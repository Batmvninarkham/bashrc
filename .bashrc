#terminal fonts
alias ls='ls -G'
export LSCOLORS=ExFxBxDxCxegedabagacad

#ytdlp alias
yt-playlist() {
    yt-dlp \
    -x --audio-format mp3 --audio-quality 0 \
    --embed-thumbnail --add-metadata --embed-metadata \
    --output "%(playlist_title)s/%(playlist_index)03d - %(title)s.%(ext)s" \
    "$@"
}

# annotated by dave eddy (@yousuckatprogramming)
# explained - https://youtu.be/D0sG2fj0G4Y
# borrowed heavily from https://grml.org

# Begin blinking text mode
# I just use bold red here since my terminal has blinking disabled
export LESS_TERMCAP_mb=$'\e[1;31m'

# Begin bold text mode
export LESS_TERMCAP_md=$'\e[1;31m'

# End all special formatting started by mb/md/etc.
export LESS_TERMCAP_me=$'\e[0m'

# End standout mode
export LESS_TERMCAP_se=$'\e[0m'

# Begin standout mode
# search results - bold, yellow foreground, blue background.
export LESS_TERMCAP_so=$'\e[1;33;44m'

# End underline mode
export LESS_TERMCAP_ue=$'\e[0m'

# Begin underline mode
# underline and bold green
export LESS_TERMCAP_us=$'\e[4;1;32m'

# Begin reverse-video mode
export LESS_TERMCAP_mr=$'\e[7m'

# Begin dim/half-bright mode
export LESS_TERMCAP_mh=$'\e[2m'

# Begin subscript mode
# (probably isn't supported)
export LESS_TERMCAP_ZN=$'\e[74m'

# End subscript mode
# (probably isn't supported)
export LESS_TERMCAP_ZV=$'\e[75m'

# Begin superscript mode
# (probably isn't supported)
export LESS_TERMCAP_ZO=$'\e[73m'

# End superscript mode
# (probably isn't supported)
export LESS_TERMCAP_ZW=$'\e[75m'

# Finally wire up `man` to use `less`
# this is usually the default but let's just be sure
export MANPAGER='less'
#for kali linux 
#export MANROFFOPT="-c" 
#discard the rest above
#edit the prompt dirtrim to change dir depth
PROMPT_DIRTRIM=1
host='\[\e[1;33m\]\h\[\e[0m\]'
user='\[\e[1;31m\]\u\[\e[0m\]'
dirc='\[\e[1;36m\]\w\[\e[0m\]'
Time='\[\e[1;30m\]\A\[\e[0m\]'
PS1="$Time $user $host $dirc \$ "


