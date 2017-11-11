#!/bin/bash
echo 'Hi, $USER!'
echo'Welcome to Macbuntu Script 14.04'

echo 'Downloading Mac Wallpapers ....'
wget -O mac-wallpapers.zip http://drive.noobslab.com/data/Mac-13.10/MBuntu-Wallpapers.zip

echo '=================================='
echo 'Installing Unity Tweak Tool...'
sudo apt-get install unity-tweak-tool -y

echo '=================================='
echo 'Installing Docky, The Mac OS X Dock'
sudo add-apt-repository ppa:docky-core/ppa -y
sudo apt-get update
sudo apt-get install docky -y

echo '=================================='
echo 'Downloading Docky Mac theme'
wget -O Buyi-idock.rar http://drive.noobslab.com/data/Mac-14.04/Mac-OS-Lion%28Docky%29.tar

echo '=================================='
echo 'Replace Ubuntu overlay scrollbars with normal scroll bars'
gsettings set com.canonical.desktop.interface scrollbar-mode normal


echo '=================================='
echo 'Replace ‘Ubuntu Desktop‘ text with ‘Mac OS X‘ on the top Panel'
wget -O Mac.po http://drive.noobslab.com/data/Mac-14.04/change-name-on-panel/mac.po
sudo msgfmt -o /usr/share/locale/en/LC_MESSAGES/unity.mo Mac.po;rm Mac.po;


echo '=================================='
echo 'Replace the Ubuntu logo with Apple logo on Launcher'
wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac-14.04/launcher-logo/apple/launcher_bfb.png
sudo mv launcher_bfb.png /usr/share/unity/icons/


echo '=================================='
echo 'Apply Mac OS X Splash Screen to Ubuntu 14.04'
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update
sudo apt-get install mbuntu-bscreen-v3 -y


echo '=================================='
echo 'Apply Mac OS X Login Screen to Ubuntu 14.04'
sudo apt-get install mbuntu-lightdm-v3 -y


echo '=================================='
echo 'Install Mac OS X theme for Ubuntu 14.04'
sudo apt-get install mac-ithemes-v3 -y
sudo apt-get install mac-icons-v3 -y


echo '=================================='
echo 'Disable Crash Reports on Ubuntu 14.04'
sudo sed -i "s/enabled=1/enabled=0/g" '/etc/default/apport'


echo '=================================='
echo 'Install Monochrome icons for Libreoffice in Ubuntu 14.04'
sudo apt-get install libreoffice-style-sifr -y
echo 'Change Libreoffice Icon theme on Libreoffice > Tools > Options > View > Icon Size and Style to Sifr'

echo '=================================='
echo 'Remove White Dots and Ubuntu Logo from Lock Screen'
sudo xhost +SI:localuser:lightdm
sudo su lightdm -s /bin/bash
gsettings set com.canonical.unity-greeter draw-grid false;exit
sudo mv /usr/share/unity-greeter/logo.png /usr/share/unity-greeter/logo.png.backup

echo 'Macbuntu Script Completed Successfully .....'
echo 'Open Unity Tweak Tool. Change Theme to Mbuntu-ac, Icons to Mbuntu-osx, Cursor to Mac-cursors'
echo 'Also Install Docky theme by selecting Buyi-idock.rar in Docky Settings'
echo 'Hide Unity Launcher on Settings > Appearance -> Behavior and turn off.'

echo 'Enjoy Mac Ubuntu 14.04'
echo 'Restart Ubuntu'
