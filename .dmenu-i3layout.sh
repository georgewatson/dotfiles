dir=~/.i3/layouts
cd "$dir"

res=$(echo * | dmenu -fn 'Rec Mono Duotone:regular:pixelsize=17' -nb '#ffffff' -nf '#333333' -sb '#30b7f3' -sf '#333333')

i3-msg "append_layout ${dir}/${res}"
