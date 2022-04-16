
disk="EFI"
src="/Users/wandersher/Desktop/ASUS FX553V/0.7.9/EFI"
dst="/Volumes/EFI/EFI"
config="/Volumes/EFI/EFI/OC/config.plist"

sudo diskutil mount "$disk"

rm -rf "$dst"
cp -rf "$src" "$dst"

sudo diskutil unmount "$disk"