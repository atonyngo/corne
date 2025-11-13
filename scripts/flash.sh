#! /bin/sh

cd /home/atonyngo/downloads
unzip firmware.zip

echo "Sleeping for 10 seconds..."
echo "Plug-in the left side"
sleep 10

echo "Flashing left side..."
mount /dev/sda /media/corne
mv "corne_left nice_view_adapter nice_view-nice_nano_v2-zmk.uf2" /media/corne
umount /media/corne
echo "Finished flashing left side"

echo "Sleeping for 20 seconds..."
echo "Plug-in the right side"
sleep 20

echo "Flashing right side..."
mount /dev/sda /media/corne
mv "corne_right nice_view_adapter nice_view-nice_nano_v2-zmk.uf2" /media/corne
umount /media/corne
echo "Finished flashing right side"
