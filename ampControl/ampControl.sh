#!/bin/bash

# Zones
# - hw:0 - built-in
# - hw:1 - Bedroom
# - hw:2 - Bathroom
# - hw:3 - Living Room
# - hw:4 - Dining Room
# - hw:5 - Patio
# - hw:6 - Test

active_index=()
new_index=('0' '0' '0' '0' '0' '0' '0')
active_array=('0' '0' '0' '0' '0' '0' '0')
upstairs=(1 2)
downstairs=(3 4)
patio=(5 6)

while [ true ]
do
	active_index=$(find /proc/asound/card*/pcm0p/* -name status | xargs grep "RUNNING" | sed 's/\/proc\/asound\/card//' | sed 's/\/pcm0p\/sub0\/status:state: RUNNING//')
	new_index=('0' '0' '0' '0' '0' '0' '0')

	for t in ${active_index[@]}; do
		new_index[$t]='1'
	done

	for i in ${!active_array[@]}; do
		if (( ${active_array[$i]} != ${new_index[$i]} ));then
			if (( ${new_index[$i]} == '1' ));then
				printf "\nzone on: $i"
				active_array[$i]='1'
				off_delay=0
				# determine in which array the changed value is located
				if [[ " ${upstairs[*]} " =~ " ${i} " ]];then
					curl -X POST "http://10.0.1.56/switch/amplifier_z/turn_on" &>/dev/null
					printf "\n\tupstairs on: $i"
				elif [[ " ${downstairs[*]} " =~ " ${i} " ]];then
					curl -X POST "http://10.0.1.56/switch/amplifier_x/turn_on" &>/dev/null
					printf "\n\tdownstairs on: $i"
				elif [[ " ${patio[*]} " =~ " ${i} " ]];then
					curl -X POST "http://10.0.1.56/switch/amplifier_y/turn_on" &>/dev/null
					printf "\n\tpatio on: $i"
				fi
			elif (( ${new_index[$i]} == '0' ));then
				active_array[$i]='0'
				printf "\nzone off: $i"
				if [[ " ${upstairs[*]} " =~ " ${i} " ]];then
					any_on='0'
					for j in ${!upstairs[@]}; do
						if (( ${active_array[${upstairs[$j]}]}  == '1' ));then
							any_on='1'
						fi
					done
					if (( $any_on != '1' ));then
						curl -X POST "http://10.0.1.56/switch/amplifier_z/turn_off" &>/dev/null
						printf "\n\tupstairs off: $i"
					fi
				elif [[ " ${downstairs[*]} " =~ " ${i} " ]];then
					any_on='0'
					for j in ${!downstairs[@]}; do
						#printf "\ntest active_array at j$j: ${active_array[$j]}"
						if (( ${active_array[${downstairs[$j]}]}  == '1' ));then
							any_on='1'
						fi
					done
					if (( $any_on != '1' ));then
						curl -X POST "http://10.0.1.56/switch/amplifier_x/turn_off" &>/dev/null
						printf "\n\tdownstairs off: $i"
					fi
				elif [[ " ${patio[*]} " =~ " ${i} " ]];then
					any_on='0'
					for j in ${!patio[@]}; do
						if (( ${active_array[${patio[$j]}]}  == '1' ));then
							any_on='1'
						fi
					done
					if (( $any_on != '1' ));then
						curl -X POST "http://10.0.1.56/switch/amplifier_y/turn_off" &>/dev/null
						printf "\n\tpatio off: $i"
					fi
				fi
			fi
		fi
	done
#	sleep 1.0
done
