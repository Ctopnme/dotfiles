#!/usr/bin/env bash
# Author: Rajex 
# Dependencies: ImageMagick, i3lock-color-git, sed, grep
set -o errexit -o noclobber -o nounset

letterEnteredColor=d23c3dff
letterRemovedColor=d23c3dff
passwordCorrect=00000000
passwordIncorrect=d23c3dff
background=00000000
foreground=ffffffff
image="$HOME/wallpaper.png"
i3lock_cmd=(i3lock -i "$image" -t -n)
params=(--timepos="x-90:h-ch+30" \
    --datepos="tx+24:ty+25" \
    --clock --datestr "Type password to unlock..." \
    --insidecolor=$background --ringcolor=$foreground --line-uses-inside \
    --keyhlcolor=$letterEnteredColor --bshlcolor=$letterRemovedColor --separatorcolor=$background \
    --insidevercolor=$passwordCorrect --insidewrongcolor=$passwordIncorrect \       
    --ringvercolor=$foreground --ringwrongcolor=$foreground --indpos="x+280:h-70" \
    --radius=20 --ring-width=4 --veriftext="" --wrongtext="" \
    --textcolor="$foreground" --timecolor="$foreground" --datecolor="$foreground" \
    --force-clock)

if [[ $# -eq 1 ]] ; then
    effect=()
    "${i3lock_cmd[@]}" "${params[@]}"
    exit
fi

effect=(-scale 10% -scale 1000%)
image=$(mktemp).png
shot=(import -window root)
i3lock_cmd=(i3lock -i "$image" -t -n)

command -- "${shot[@]}" "$image"
trap 'rm -f "$image"' EXIT
dom=$(convert $image -scale 1x1\! -modulate 100,200,120 -format '%[pixel:u]' info:- | sed 's/[^0-9,]*//g')
transparency=0.85

rectangles=" "                                                              
SR=$(xrandr --query | grep ' connected' | grep -o '[0-9][0-9]*x[0-9][0-9]*[^ ]*')
for RES in $SR; do                                                          
    SRA=(${RES//[x+]/ })                                                    
    CX=$((${SRA[2]} + 25))                                                  
    CY=$((${SRA[1]} - 30))                                                  
    rectangles+="rectangle $CX,$CY $((CX+300)),$((CY-80)) "                 
done

convert "$image" "${effect[@]}" -draw "fill rgba($dom, $transparency) $rectangles" "$image"

"${i3lock_cmd[@]}" "${params[@]}"
