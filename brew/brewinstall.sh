#!/bin/sh
#  _    _                      _                       
# | |  | |                    | |                      
# | |__| | ___  _ __ ___   ___| |__  _ __ _____      __
# |  __  |/ _ \| '_ ` _ \ / _ \ '_ \| '__/ _ \ \ /\ / /
# | |  | | (_) | | | | | |  __/ |_) | | |  __/\ V  V / 
# |_|  |_|\___/|_| |_| |_|\___|_.__/|_|  \___| \_/\_/  
#                                                        
# Homebrew installation

BREW=$(which brew)

if ! [ "$BREW" ]; then
    echo " Homebrew not found! Installing... "
    echo " Must be run with Administrator access! "
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
   echo " Homebrew is installed "
fi

exit 0
