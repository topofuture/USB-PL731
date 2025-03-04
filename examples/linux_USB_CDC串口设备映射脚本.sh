#!/bin/sh

check_ttyUSB_device()
{
	i=0
	while [ $i -le 6 ];
	do
		if [ -f /tmp/rs485-ch${i} ]; then
			i=$((i+1))
			continue
		fi

		dev_path=${CH341_PATH}$((i*2))/tty
		echo $dev_path
		file_name=`ls ${dev_path} | grep ttyACM | awk '{print $0}'`
		dev_file_name=/dev/${file_name}
		echo ${dev_file_name}
		if [ -e "${dev_file_name}" ]; then
			ln -s ${dev_file_name} /tmp/rs485-ch$i
			echo "dev${i}=/tmp/rs485-ch${i}" >> /tmp/dev_map
			echo "tmp/rs485-ch${i} -> ${dev_file_name}"
			touch "/tmp/ipc/${i}"
		else
			let complete_flag=0
		fi
		i=$((i+1))
	done
}

CH341_PATH=/sys/bus/usb/drivers/cdc_acm/1-1.2:1.
complete_flag=1

echo "check rs485 channel start ..."
echo "[dev_map]" > /tmp/dev_map

# 先清掉再创建
for i in 0 1 2 3 4 5 6 7;do
	rm /tmp/rs485-ch$i
done

index=0
while [ $index -le 8 ];
do
	let complete_flag=1
	check_ttyUSB_device
	if [ $complete_flag = 1 ]; then
		break
	fi
	index=$((index+1))
	sleep 1
done

chmod a+rw /tmp/dev_map

echo "complete!"
