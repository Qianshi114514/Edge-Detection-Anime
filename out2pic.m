clear;
clc;
se = strel('line',11,90);
path='';   %视频存放路径
obj=VideoReader(path);
num=obj.NumFrames;%帧数
for i=1:num  %帧数
    frame=read(obj,i);
    lujing=strcat('',num2str(i));  %帧图输出路径
    lujing=strcat(lujing,'.jpg');
    imwrite(frame,lujing)
end 