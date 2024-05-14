#!/bin/bash

# 获取当前焦点窗口的ID
current_window_id=$(bspc query -N -n)

if [ -z "$current_window_id" ]; then
    echo "No window focused."
    exit 1
fi

# 查询当前窗口的状态
window_state=$(bspc query -T -n $current_window_id | grep -o "\"state\":\"[^\"]*\"" | cut -d'"' -f4)

# 切换窗口状态
if [ "$window_state" == "floating" ]; then
    bspc node $current_window_id -t tiled
    echo "Switched to tiling mode."
elif [ "$window_state" == "tiled" ]; then
    bspc node $current_window_id -t floating
    echo "Switched to floating mode."
else
    echo "Window is not in tiling or floating state."
fi
