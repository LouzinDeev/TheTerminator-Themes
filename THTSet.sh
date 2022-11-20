#!/bin/bash

echo "What THT theme do you want to add? "
read THT_CHOISE
echo "Do you want to install THT Themes before?[y/n] "
read INSTALL_CHOISE
THEME_PATH=/home/$USER/THT-THEMES
if [ "$INSTALL_CHOISE" = "y" ]; 
then
        git clone https://github.com/LouzinDeev/TheTerminator-Themes.git $THEME_PATH
else
	echo "No download"
fi

if [ "$THT_CHOISE" = "THT-V" ];
then
	cp $THEME_PATH/VOID/THT-V.zsh ~/.p10k.zsh
else
	cp $THEME_PATH/Legacy/$THT_CHOISE.zsh ~/.p10k.zsh
fi

echo "Done!!! Now just run : \"source ~/.p10k.zsh\""


