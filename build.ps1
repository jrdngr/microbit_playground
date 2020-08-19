echo "Building"
cargo build --release
echo "Running arm compiler"
arm-none-eabi-objcopy -O ihex target\thumbv6m-none-eabi\release\microbit_playground main.hex
