# 自用多媒体脚本

## 功能

1. 切换音频设备
2. 全局快捷键暂停视频而不需要切换焦点（这样就可以一边看教程一边笔记啦😄

## Todo

 - [ ] 通过 Python 实现现在音频设备查询
 - [ ] 配合 Chrome 插件实现优雅的视频播放暂停，视频进度调整
 - [ ] 打包可执行文件，方便使用

## 使用教程


### 音频设备切换

确保安装了 [nircmd](https://www.nirsoft.net/utils/nircmd.html) ，并且添加到了环境变量中。

使用 `Alt+ 静音键` 切换

参考 [【小工具】自定义键盘快捷键切换音频播放设备、快速开关切换静音_win10声音播放切换小工具-CSDN博客](https://blog.csdn.net/Mr_Zing/article/details/111988451)

### 视频全局暂停

使用 `ControlSend` 向台前为视频的 Edge 浏览器窗口发送 `k` 键 ，适用于 Youtube ，Bilibili (通过 [Bilibili-Evolved](https://github.com/the1812/Bilibili-Evolved) 设置快捷键为 `k` )

使用 `Shift + Space` 暂停/开始