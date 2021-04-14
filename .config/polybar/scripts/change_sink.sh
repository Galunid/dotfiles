#!/bin/bash


show_sink() {
	if [[ $(pacmd list-sinks | grep 'index' | grep -v '*' | tr -dc 0-9) = 1 ]]
	then
		echo ""
	else
		echo ""
	fi
}

change_sink() {
	non_default_sink="$(pacmd list-sinks | grep 'index' | grep -v '*' | tr -dc 0-9)"
	pacmd set-default-sink "$non_default_sink"
}

if [ "$1" = "show" ] 
then
	show_sink
elif [ "$1" = "change" ]
then
	change_sink
fi
