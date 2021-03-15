dir=~/.i3/layouts
cd "$dir"

res=$(echo * | dmenu -fn 'Caskaydia Cove Nerd Font:regular:pixelsize=17' -nb '#333333' -nf '#cccccc' -sb '#30b7f3' -sf '#333333')

i3-msg "append_layout ${dir}/${res}"
