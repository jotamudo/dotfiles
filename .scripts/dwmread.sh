if [[ POLYBARTOGGLE == l ]]; then
    ./.config/polybar_back/relaunch.sh
    POLYBARTOGGLE=0
elif [[ POLYBARTOGGLE == 0 ]]; then
    POLYBARTOGGLE=1
fi

