# Edge-Detection-Anime
Use Roberts edge detection operator to extract anime edges  
参考了B站一位up的视频，原地址是https://www.bilibili.com/video/BV1jU4y1u76p  
原作者公布的代码已经很完善了，我修改了一两行，让输出效果更好一点（侵删）  
使用matlab逐帧做边缘检测，用的是Roberts算子，最后放到pr里面加音轨  
先使用O2P得到帧画面，再用zed做边缘检测，再用P2V合成视频  
需要注意的一个是坐标轴需要保持刻度一致，否则导致画面拉伸。第二个我忘记固定坐标轴了，导致画面有点漂移...  
我做的东西在这里  https://www.bilibili.com/video/BV1pr4y1k7QK/
