# Install dependencies script

if [ $ARCH == "linux_x86_64" ]; then
  sudo apt-get install -y build-essential cmake
  sudo apt-get autoremove -y
fi

if [ $ARCH == "linux_i686" ]; then
  sudo apt-get install -y build-essential cmake \
                          gcc-multilib g++-multilib
  sudo apt-get autoremove -y
fi

if [ $ARCH == "linux_armv7l" ]; then
  sudo apt-get install -y build-essential cmake \
                          gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
  sudo apt-get autoremove -y
fi

if [ $ARCH == "linux_aarch64" ]; then
  sudo apt-get install -y build-essential cmake \
                          gcc-aarch64-linux-gnu g++-aarch64-linux-gnu
  sudo apt-get autoremove -y
fi

if [[ $ARCH == "windows_x86" || $ARCH == "windows_amd64" ]]; then
  sudo apt-get install -y build-essential cmake mingw-w64
  sudo apt-get autoremove -y
fi

if [ $ARCH == "darwin" ]; then
  brew install wget libusb libftdi
fi
