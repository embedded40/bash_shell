# cai dat opencv tren linux

echo -e "\e[333m ----------------------------------------\e[2m"
echo -e "\e[1m https://www.facebook.com/embedded.4.0     \e[1m"
echo -e "\e[1m date    : 08/04/2019			 \e[2m"
echo -e "\e[33m ---------------------------------------- \e[2m"


# sudo apt-get update
# sudo apt-get upgrade

echo -e "\e[33m shell cai dat Opencv tren linux, co the mat 1H de cai dat xong,\r\n
  lien he https://www.facebook.com/embedded.4.0 neu gap loi\r\n\e[0m"

echo -e "\e[33m Cài đặt các packages cần thiết trước khi cài OpenCV\r\n\e[0m"
sudo apt-get install build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
echo -e "\e[33mcai dat python\r\n\e[1m"
sudo apt-get install python3.5-dev python3-numpy libtbb2 libtbb-dev
echo -e "\e[33mcai dat goi thu vien\r\n\e[2m"
sudo apt-get install libjpeg-dev libpng-dev libtiff5-dev libjasper-dev libdc1394-22-dev libeigen3-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev sphinx-common libtbb-dev yasm libfaac-dev libopencore-amrnb-dev libopencore-amrwb-dev libopenexr-dev libgstreamer-plugins-base1.0-dev libavutil-dev libavfilter-dev libavresample-dev

# git source
echo -e "\e[33m tai ve opencv \r\n\e[1m"

echo $PWD
cd /opt
echo $PWD
sudo git clone https://github.com/opencv/opencv.git && sudo git clone https://github.com/opencv/opencv_contrib.git
echo -e "\e[33m tai xong \r\n\e[2m"

cd /opt/opencv
git checkout 3.*
cd /opt/opencv_contrib
git checkout 3.*
cd ../opt/opencv 
sudo mkdir build
cd build

echo -e "\e[33m tao Makefile \r\n\e[3m"

sudo  cmake -D BUILD_TIFF=ON -D WITH_CmakeUDA=OFF -D ENABLE_AVX=OFF -D WITH_OPENGL=OFF -D WITH_OPENCL=OFF -D WITH_IPP=OFF -D WITH_TBB=ON -D BUILD_TBB=ON -D WITH_EIGEN=OFF -D WITH_V4L=OFF -D WITH_VTK=OFF -D WITH_GTK_2_X=ON -D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib/modules /opt/opencv/

# sudo  cmake -D BUILD_TIFF=ON -D WITH_CmakeUDA=OFF -D ENABLE_AVX=OFF -D WITH_OPENGL=OFF -D WITH_OPENCL=OFF -D WITH_IPP=OFF -D WITH_TBB=ON -D BUILD_TBB=ON -D WITH_EIGEN=OFF -D WITH_V4L=OFF -D WITH_VTK=OFF -D WITH_GTK_2_X=ON -D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib/modules /opt/opencv/ -D CMAKE_TOOLCHAIN_FILE=../platforms/linux/arm-gnueabi.toolchain.cmake 


echo -e "\e[33m bulid source \r\n\e[1m"
sudo make clean
echo "sudo make -j4"
sudo make -j4
echo "sudo make install"
sudo make install
echo -e "\e[33m cai dat hoan thanh \r\n\e[1m"
