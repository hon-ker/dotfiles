# 壁纸
feh --bg-fill --randomize /data/bg/img/ &

# 状态栏
$HOME/.config/polybar/launch.sh

# 网络连接托盘
nm-applet &

# 输入法
fcitx5 -d

# 通知
dunst &

# 动画合成
picom --experimental-backends --config ~/.config/picom/picom.conf -b

# GUI授权工具
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
