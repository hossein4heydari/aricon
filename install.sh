#!/bin/bash

both () {
	mkdir ~/.Aricon
	mkdir Aricon-files
	cp ./aricon ~/.Aricon
	cp ./ffmpeg.png notify.wav ./Aricon-files
	cp ./Aricon-files ~/.Aricon
	cp ./"Video Removal" ~/.local/share/nautilus/scripts
	cp ./"Audio Removal" ~/.local/share/nautilus/scripts
	chmod +rwx ~/.local/share/nautilus/scripts/"Audio Removal"
	chmod +rwx ~/.local/share/nautilus/scripts/"Video Removal"
	cp ./Aricon ~/.local/share/nautilus/scripts
	sudo chmod +x ~/.local/share/nautilus/scripts/Aricon
	chmod +rwx ~/.local/share/nemo/scripts/"Audio Removal"
	chmod +rwx ~/.local/share/nemo/scripts/"Video Removal"
	cp ./Aricon ~/.local/share/nemo/scripts
	sudo chmod +x ~/.local/share/nemo/scripts/Aricon
	sudo cp arihis /usr/local/bin
	sudo chmod +rwx /usr/local/bin/arihis
	sudo cp clear-arihis /usr/local/bin
	sudo chmod +rwx /usr/local/bin/clear-arihis
	sudo cp aricon.desktop /usr/share/applications
	sudo chmod +rwx /usr/share/applications/aricon.desktop
	sudo cp ./ffmpeg.png /usr/share/icons

}
nautilus () {
	mkdir ~/.Aricon
	mkdir Aricon-files
	cp ./aricon ~/.Aricon
	cp ./ffmpeg.png notify.wav ./Aricon-files
	cp ./Aricon-files ~/.Aricon
	cp ./"Video Removal" ~/.local/share/nautilus/scripts
	cp ./"Audio Removal" ~/.local/share/nautilus/scripts
	chmod +rwx ~/.local/share/nautilus/scripts/"Audio Removal"
	chmod +rwx ~/.local/share/nautilus/scripts/"Video Removal"
	cp ./Aricon ~/.local/share/nautilus/scripts
	sudo chmod +x ~/.local/share/nautilus/scripts/Aricon
	sudo cp arihis /usr/local/bin
	sudo chmod +rwx /usr/local/bin/arihis
	sudo cp clear-arihis /usr/local/bin
	sudo chmod +rwx /usr/local/bin/clear-arihis
	sudo cp aricon.desktop /usr/share/applications
	sudo chmod +rwx /usr/share/applications/aricon.desktop
	sudo cp ./ffmpeg.png /usr/share/icons
}
nemo () {
	mkdir ~/.Aricon
	mkdir Aricon-files
	cp ./aricon ~/.Aricon
	cp ./ffmpeg.png notify.wav ./Aricon-files
	cp ./Aricon-files ~/.Aricon
	cp ./"Video Removal" ~/.local/share/nemo/scripts
	cp ./"Audio Removal" ~/.local/share/nemo/scripts
	chmod +rwx ~/.local/share/nemo/scripts/"Audio Removal"
	chmod +rwx ~/.local/share/nemo/scripts/"Video Removal"
	cp ./Aricon ~/.local/share/nemo/scripts
	sudo chmod +x ~/.local/share/nemo/scripts/Aricon
	sudo cp arihis /usr/local/bin
	sudo chmod +rwx /usr/local/bin/arihis
	sudo cp clear-arihis /usr/local/bin
	sudo chmod +rwx /usr/local/bin/clear-arihis
	sudo cp aricon.desktop /usr/share/applications
	sudo chmod +rwx /usr/share/applications/aricon.desktop
	sudo cp ./ffmpeg.png /usr/share/icons

}

Arch () {
	sudo pacman -S zenity ffmpeg
}

Debian () {
	sudo add-apt-repository ppa:kirillshkrogalev/ffmpeg-next
	sudo apt-get update
	sudo apt-get install ffmpeg
}
Fedora () {
	sudo dnf install zenity ffmpeg
}

color='\033[0;36m'
echo -e "\n ${color}------ This is Aricon Installer ------"
sleep 1
while [ true ]
do
	sleep 1
	read -p "What is your distro? {(A)rch, (D)ebian, (F)edora}: " distro
	if [ "$distro" = "A" ]; then
		Arch
		break
	elif [ "$distro" = "D" ]; then
		Debian
		break
	elif [ "$distro" = "F" ]; then
		Fedora
		break
	else
		continue	
	fi
done

while [ true ]
do
	sleep 1
	read -p "What is your file manager? {(N)emo, n(A)utilus, (B)oth}: " fm
	if [ "$fm" = "N" ]; then
		nemo
		break
	elif [ "$fm" = "A" ]; then
		nautilus
		break
	elif [ "$fm" = "B" ]; then
		both
		break
	else
		continue	
	fi
done



