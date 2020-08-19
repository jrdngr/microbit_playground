param(
    [Parameter(Mandatory = $true)][string]$targetDirectory
)

echo "Building"
cargo build --release
echo "Running arm compiler"
arm-none-eabi-objcopy -O ihex target\thumbv6m-none-eabi\release\microbit_playground main.hex
echo "Copying file to micro:bit"
Copy-Item main.hex -Destination $targetDirectory
echo "Finished!"
