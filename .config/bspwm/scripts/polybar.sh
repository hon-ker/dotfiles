#!/bin/bash

# 获取当前显示的 Polybar 实例ID
polybar_instance=$(pgrep -x polybar)

# 如果没有 Polybar 实例在运行，启动 Polybar
if [ -z "$polybar_instance" ]; then
    polybar bar &
else
    # 如果有 Polybar 实例在运行，则杀死它
    kill "$polybar_instance"
fi

