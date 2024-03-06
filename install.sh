#!/bin/bash

cd ./packages

filename=$(ls -lt|awk '{if ($9) printf("%s\n",$9)}'|head -n 1)

sshpass -p $PASSWD scp ./$filename mobile@$THEOS_DEVICE_IP:/var/mobile/Documents/$filename
sshpass -p $PASSWD ssh mobile@$THEOS_DEVICE_IP "echo '$PASSWD' | sudo -S dpkg -i '/var/mobile/Documents/$filename' && rm -f /var/mobile/Documents/$filename"