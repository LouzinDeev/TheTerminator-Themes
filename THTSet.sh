#!/bin/bash

THEME_PATH=/home/$USER/THT-THEMES
Legacy_list="THT-L = TheTerminator-Legacy
THT-LB = TheTerminator-Legacy Blue
THT-LG = TheTerminator-Legacy Green
THT-LP = TheTerminator-Legacy Purple
THT-LY = TheTerminator-Legacy Yellow"

VOID_List="THT-V = TheTerminator-Void"
Deluxe_list="THT-DA = TheTerminator-Arch"

echo "What THT theme Category do you want to add?
1-Lecacy
2-VOID
3-Deluxe 
Chose [1/2/3]: "
read THTC_CHOISE
echo "Do you want to install THT Themes before?[y/n] "
read INSTALL_CHOISE

if [ "$INSTALL_CHOISE" = "y" ]; 
then
        git clone https://github.com/LouzinDeev/TheTerminator-Themes.git $THEME_PATH
else
	echo "No download"
fi

if [ "$THTC_CHOISE" = "1" ];
then
	echo "${Legacy_list}"
	echo "Chose [THT-L/THT-LB/THT-LG/THT-LP/THT-LY]: "
	read THT_CH
	cp $THEME_PATH/Legacy/$THT_CH.zsh ~/.p10k.zsh
elif [ "$THTC_CHOISE" = "2" ];
then
	echo "${VOID_list}"
	echo "Chose [THT-V]: "
	read THT_CH
	cp $THEME_PATH/VOID/$THT_CH.zsh ~/.p10k.zsh
else
	echo "${Deluxe_list}"
	echo "Chose [THT-DA]: "
	read THT_CH
	cp $THEME_PATH/Deluxe/$THT_CH.zsh ~/.p10k.zsh
fi

echo "Done!!! Now just run : \"source ~/.p10k.zsh\""