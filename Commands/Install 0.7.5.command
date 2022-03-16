
disk="EFI"
src="/Users/wandersher/Desktop/ASUS FX553V/0.7.5/EFI"
dst="/Volumes/EFI/EFI"
config="/Volumes/EFI/EFI/OC/config.plist"

dev_motherboard="SET_HERE_MLB"
dev_serial="SET_HERE_SERIAL"
dev_uuid="SET_HERE_UUID"

motherboard="C028459024NHRPCCB"
serial="C02XNZZ5HV2N"
uuid="A5C71AA2-C485-4530-B31D-B497430C01F0"


sudo diskutil mount "$disk"

rm -rf "$dst"
cp -rf "$src" "$dst"

sed -i '' "s/$dev_motherboard/$motherboard/g" "$config"
sed -i '' "s/$dev_serial/$serial/g" "$config"
sed -i '' "s/$dev_uuid/$uuid/g" "$config"

sudo diskutil unmount "$disk"