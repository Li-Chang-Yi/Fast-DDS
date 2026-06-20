## Fast-DDS(eProsima product and ROS2 default DDS implement)
#### office link

https://fast-dds.docs.eprosima.com/en/latest/installation/sources/sources_linux.html#colcon-installation

#### compile on ubuntu

```
// 1.depend pkg
sudo apt install cmake g++ python3-pip wget git
sudo apt install libasio-dev libtinyxml2-dev
sudo apt install libssl-dev
pip3 install -U colcon-common-extensions vcstool

// 2.build Fast-DDS library
mkdir ~/Fast-DDS
cd ~/Fast-DDS
wget https://raw.githubusercontent.com/eProsima/Fast-DDS/master/fastdds.repos
mkdir src
vcs import src --workers 1 < fastdds.repos
colcon build --packages-up-to fastdds
colcon build --packages-up-to fastdds --event-handlers console_direct+ console_stderr+

// 3.env set up
source ~/Fast-DDS/install/setup.bash
echo 'source ~/Fast-DDS/install/setup.bash' >> ~/.bashrc

// 4.Fast DDS-Gen installation, will generate fastddsgen/share/fastddsgen/java/fastddsgen.jar
sudo apt install openjdk-17-jdk
cd ~/Fast-DDS/src/fastddsgen
./gradlew assemble
echo 'export PATH=$PATH:~/Fast-DDS/src/fastddsgen/scripts' >> ~/.bashrc
fastddsgen HelloWorld.idl
```

#### using on ubuntu20.04(library version incompatible) extra step
```
// CMake 3.20 or higher is required. ghfast && gitclone to speed up downloading
wget https://ghfast.top/https://github.com/Kitware/CMake/releases/download/v3.26.4/cmake-3.26.4-linux-aarch64.tar.gz
tar -xvf cmake-3.26.4-linux-aarch64.tar.gz
sudo ln -sf ~/tools/cmake-3.26.4-linux-aarch64/bin/cmake /usr/bin/cmake
cmake --version

//Found Asio version 1.12.2, which is not compatible with Fast DDS. Minimum required Asio version:1.13.0
wget https://github.com/chriskohlhoff/asio/archive/refs/tags/asio-1-28-0.tar.gz
sudo ln -sf ~/tools/asio-asio-1-28-0/asio/include/asio.hpp /usr/local/include/asio.hpp
sudo ln -sf ~/tools/asio-asio-1-28-0/asio/include/asio /usr/local/include/asio
```

