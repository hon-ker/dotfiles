(README文件可能已过期,因为hyprland是一直在使用,配置案件等一直在更新,所有安装包等会有一小部分的变动)

# 简介

> 个人一直使用的hyprland配置文件,及相关脚本


写`install.sh`的目的是为了从刚安装好archlinux的终端界面开始一键配置好日常使用的配置



个人有很强的强迫症,绝对不多安一个额外的软件,删除也必须是彻彻底底.



过去用过很多的窗口管理器,bspwm,i3,awesome,dwm,使用时间最长的是awesomewm,其次是dwm,最后尝试了一周左右的Hyprland之后就决定以后就是他了,



我对Hyprland的评价是:  **Hyprland,满足你对窗口管理器的所有期待(除却输入法)**


# Usage



**目录**

```bash
.
├── .config             # 核心配置
│   ├── dunst           # 通知程序的样式
│   ├── fcitx5          # fcitx5输入法的配置
│   ├── nvim            # neovim编辑器的配置
│   ├── pip             # pip清华源
│   ├── alacritty       # alacritty终端配置
│   ├── kitty           # kitty终端的配置
│   ├── bspwm           # bspwm窗口管理器的配置
│   ├── sxhkd           # bspwm的快捷键配置(和bspwm一起用)
│   ├── polybar         # polybar状态栏的配置(和bspwm一起用)
│   ├── rofi            # 程序菜单的配置
│   ├── hypr            # hyprland的配置
│   ├── swaylock        # 屏锁的配置(和Hyprland一起用)
│   └── waybar          # waybar状态栏(和Hyprland一起用)
├── etc                 # /etc下修改的部分配置
│   ├── environment     # 输入法的配置
│   ├── fonts           # 系统字体的修改
│   │   ├── conf.d
│   │   ├── fonts.conf
│   │   └── local.conf
│   ├── usr             # 主要是修改fcitx5默认中文"拼"字tray图标修改(默认太丑了)
│   │   └── share
│   └── X11             # 触控板轻触实现点击的配置
│       └── xorg.conf.d
├── install.sh          # 安装必要软件包的程序,所有包是针对Hyprland的,虽然配置里有bspwm但是install.sh里没有下载bspwm
├── screenshot          # Hyprland的截图样式
│   ├── dunst.jpg
│   ├── neofetch.jpg
│   ├── rofi.jpg
│   └── waybar.png
├── logo.txt            # logo(脚本的logo,不用管)
├── zsh.sh              # oh-my-zsh主题自动下载常用插件和基础配置及美化
└── README.md           # README
```

**hypr目录**
```bash
.config/hypr
├── bg                      
│   └── queen_medusa.jpg
├── exec.conf               # hyprland启动时自动启动的程序
├── hyprland.conf           # hyprland核心配置文件 
├── keybinds.conf           # 快捷键绑定
├── scripts                 # 部分快捷键绑定的脚本
│   ├── cpu.sh              # CPU占用率的TOP10
│   ├── ip.sh               # 获取当前本机的内外内网IP,常用
│   ├── memory.sh           # 获取占用内存TOP10
│   ├── screenshot.sh       # 屏幕截屏
│   ├── start-vmware.sh     # 没用,可删除
│   └── toggle-waybar.sh    # 打开/关闭 waybar
└── starthypr.sh            # 启动hyprland的脚本(设置很多环境变量,也可以直接使用Hyprland命令启动)
```


# Keymap(快捷键绑定)




| 快捷键                      | 功能                            | 备注    |
|---------------------------|---------------------------------|---------|
| $mainMod + Enter         | 打开终端 (alacritty)           |         |
| $mainMod + Q             | 关闭当前窗口                    |         |
| $mainMod + E             | 打开文件管理器                  |         |
| $mainMod + 空格          | 切换当前窗口的浮动状态          |         |
| $mainMod + F         | 全屏当前窗口 fullscreen |         |
| $mainMod + C             | 打开 Google Chrome 浏览器      |         |
| $mainMod + V             | 打开 VMware 虚拟机              |         |
| $mainMod + D             | 打开 应用菜单(rofi) |         |
| $mainMod + P             | 切换 dwindle 窗口(个人不怎么使用这个功能,感觉没啥用) |         |
| $mainMod + B             | 执行 toggle-waybar.sh 脚本(打开关闭waybar) |         |
| $mainMod + J             | 切换当前窗口的拆分方式（水平<=>垂直,多个窗口才有效,比较少用） |       |
| $mainMod + SHIFT + B     | 使用 swaybg 更换背景             |         |
| $mainMod + SHIFT + Q     | 退出 hyprland                    |         |
| $mainMod + CONTROL + SHIFT + D | 锁屏                          |         |
| $mainMod + CONTROL + SHIFT + S | 关机                          |         |
| $mainMod + CONTROL + SHIFT + R | 重启                          |         |
| $mainMod + XF86MonBrightnessUp | 增加屏幕亮度(F7 笔记本增加亮度图标的那个) |         |
| $mainMod + XF86MonBrightnessDown | 减少屏幕亮度(F6 笔记本减少亮度图标的那个) |         |
| $mainMod + XF86AudioRaiseVolume | 提高音量(F3 笔记本减少亮度图标的那个)   |         |
| $mainMod + XF86AudioLowerVolume | 降低音量(F2 笔记本减少亮度图标的那个)   |         |
| $mainMod + XF86AudioMicMute | 麦克风静音/取消静音 |         |
| $mainMod + XF86AudioMute    | 静音/取消静音(F1 笔记本减少亮度图标的那个) |         |
| $mainMod + XF86AudioPlay / XF86AudioPause | 播放/暂停媒体(F4 笔记本减少亮度图标的那个) |         |
| $mainMod + XF86AudioNext   | 播放下一曲    |         |
| $mainMod + XF86AudioPrev   | 播放上一曲    |         |
| $mainMod + 方向键           | 在窗口间移动焦点               |         |
| $mainMod + [1-9]           | 切换到对应的工作区               |         |
| $mainMod + SHIFT + [1-9]   | 将当前窗口移动到对应的工作区     |         |
| $mainMod + 0               | 切换到第10个工作区               |         |
| $mainMod + SHIFT + 0       | 将当前窗口移动到第10个工作区     |         |
| $mainMod + S               | 切换 scratchpad 工作区           |         |
| $mainMod + SHIFT + S       | 将当前窗口移动到 scratchpad 工作区 |       |
| $mainMod + 滚动方向        | 浏览现有的工作区                 |         |
| $mainMod + 拖动鼠标左右键 | 通过拖动来移动/调整窗口大小      |         |
| $mainMod + SHIFT + 方向键 | 在指定方向上调整当前窗口的大小   |         |



# Packages(安装包列表)

关于每个安装包的作用:
### 1. 基础工具
| 包名 | 作用                       | 备注 |
| ---- | -------------------------- | ---- |
| paru | AUR 辅助工具               |      |
| zsh  | 挂载移动存储设备的工具     |      |
| git  | 管理网络连接的系统托盘图标 |      |




### 2. 字体
| 包名                            | 作用                                                         | 备注 |
| ------------------------------- | ------------------------------------------------------------ | ---- |
| wqy-zenhei                      | 文泉译正黑，一个优秀的中文字体**非常好看的中文字体,显示中文时使用** |      |
| adobe-source-han-serif-cn-fonts | Adobe 思源宋体，Adobe 推出的支持中文的开源字体**非常好看的中文字体,显示中文时使用** |      |
| noto-fonts-cjk                  | Noto CJK 字体，包含了支持中日韩文字的字体                    |      |
| noto-fonts-emoji                | Noto Emoji 字体，包含了丰富的 Emoji 表情符号                 |      |
| noto-fonts-extra                | Noto Extra 字体，Noto 字体家族的额外拓展字体                 |      |
| ttf-nerd-fonts-symbols          | Nerd Fonts 符号字体，一套专为开发者设计的符号字体集合**waybar上的字符图标都是来自这里** |      |
| ttf-dejavu                      | DejaVu 字体，包含了多种语言字符的开源字体,**主要用来显示alacrittyo终端上的英文字体**,很好看 |      |
| terminus-font                   | 一个等宽字体，**适合作为终端字体, 就是纯无图形界面的终端**   |      |

### 1. 窗口管理器
| 包名         | 作用                       | 备注 |
| ------------ | -------------------------- | ---- |
| hyprland-git | 窗口管理器                 |      |
| alacritty    | 终端                       |      |
| rofi         | 应用菜单栏                 |      |
| swaybg       | Wayland 组合器的壁纸显示器 |      |
| waybar       | hyprland 状态栏            |      |

### 2. 输入法

| 包名                  | 作用                                                         | 备注 |
| --------------------- | ------------------------------------------------------------ | ---- |
| fcitx5-im             | 灵活的输入法框架，适用于类 Unix 系统                         |      |
| fcitx5-chinese-addons | Fcitx5 输入法框架的中文附加组件                              |      |
| fcitx5-material-color | Fcitx5 输入法框架的 Material Design 风格皮肤, 评价:其中blue是arch的fcitx5中最好看的皮肤(个人感受) |      |
| fcitx5-pinyin-zhwiki  | Fcitx5 输入法框架的拼音输入法中文词库                        |      |

### 3. 驱动
| 包名                | 作用                                 | 备注 |
| ------------------- | ------------------------------------ | ---- |
| xf86-video-nouveau  | 适用于 Nvidia 显卡的开源 3D 加速驱动 |      |
| mesa                | OpenGL 规范的开源实现 Nvidia驱动     |      |
| xf86-input-libinput | libinput 的 X.Org 输入驱动           |      |
| libinput            | 输入设备管理和事件处理库             |      |

### 4. 声音
| 包名          | 作用                                                         | 备注 |
| ------------- | ------------------------------------------------------------ | ---- |
| pamixer       | 命令行音频控制器                                             |      |
| playerctl/    | 命令行控制媒体播放器的程序,**用来控制音乐播放的,可以不安装** |      |
| pulseaudio    | 音频系统                                                     |      |
| alsa-utils    | Advanced Linux Sound Architecture 工具                       |      |
| alsa-firmware | ALSA 驱动所需的固件资源                                      |      |
| sof-firmware  | Sound Open Firmware 固件                                     |      |
| alsa-ucm-conf | ALSA UCM 配置文件                                            |      |

### 5. 工具
| 包名                   | 作用                               | 备注 |
| ---------------------- | ---------------------------------- | ---- |
| bluez                  | 蓝牙协议栈                         |      |
| bluez-utils            | 蓝牙协议栈的实用程序               |      |
| brightnessctl          | 用于 Linux 的亮度控制命令行工具    |      |
| acpi                   | 显示电池状态和电源适配器信息的命令 |      |
| paru                   | AUR 辅助工具                       |      |
| udisks2                | 挂载移动存储设备的工具             |      |
| network-manager-applet | 管理网络连接的系统托盘图标         |      |
| google-chrome          | Google Chrome 浏览器               |      |




### list

1. hyprland-git
2. alacritty
3. rofi
4. xorg-xrdb 
5. swaybg
6. waybar
7. fcitx5-im 
8. fcitx5-chinese-addons
9. fcitx5-material-color
10. fcitx5-pinyin-zhwiki
11. xf86-video-nouveau
12. mesa
13. xf86-input-libinput
14. libinput
15. pamixer
16. playerctl
17. pulseaudio
18. alsa-utils
19. alsa-firmware
20. sof-firmware
21. alsa-ucm-conf
22. udev
23. bluez bluez-utils
24. brightnessctl
25. acpi
26. paru
27. udisks2
28. network-manager-applet
29. chromium
30. google-chrome
31. discord
32. telegram-desktop
33. ranger
34. code
35. v2raya
36. wps-office-cn 
37. ttf-wps-fonts 
38. wps-office-mui-zh-cn
39. vmware-workstation
40. pycharm-community-edition
41. wqy-zenhei
42. adobe-source-han-serif-cn-fonts
43. noto-fonts-cjk
44. noto-fonts-emoji
45. noto-fonts-extra
46. ttf-nerd-fonts-symbols
47. ttf-dejavu
48. terminus-font
