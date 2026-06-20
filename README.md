## Directory describe

- Fast-DDS: base DDS library
- tools: compatible asio lib and cmake tool to compile Fast-DDS on ubuntu20.04 successful
- workspace_DDSHelloWorld: the simplest example creat a publisher and subscriber
- qt_fast_dds: DDSPublisher and DDSSubscriber using Qt

## Platform

Soc rk3588 arm64

## env set up

mv Fast-DDS ~
echo 'source ~/Fast-DDS/install/setup.bash' >> ~/.bashrc
echo 'export PATH=$PATH:~/Fast-DDS/src/fastddsgen/scripts' >> ~/.bashrc
source ~/.bashrc

