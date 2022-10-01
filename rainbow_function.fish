function paint_rainbow -a str
	set Colors brmagenta brred bryellow brgreen brcyan brblue 
	set colored_str ''
	for i in (seq (string length $str))
		set color_index (math $i % (count $Colors) + 1)
		set colored_char (set_color $Colors[$color_index]) (string sub -s $i -l 1 $str)
		set colored_str (string join '' $colored_str $colored_char)
	end
	set_color normal
	echo $colored_str
end
