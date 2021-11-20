close all;
clc;

for i=1:7574  %前面所得的视频帧数
    path=''; %帧图路径
     disp(i); 
     path=strcat(path,num2str(i));
    p=strcat(path,'.jpg');
    f=imread(p);
    f=rgb2gray(f);
   roberts=edge(f,'roberts');   %roberts算子
   [m,n]=find(roberts==1);
   %scatter(n,-m,'.');   %  1     去掉注释直接展示
    mh=scatter(n,-m,'.'); %  2     确定输出
%     axis([-450 700 -750 400]);   %可依据窗口大小自行调整坐标系
    axis([0,1280,-720,0]);
    axis equal;%让画面横竖比保持一致，否则画面会被拉伸
    lujing=strcat('',num2str(i)); %  3    输出存放路径
    lujing=strcat(lujing,'.jpg'); %  4     输出格式为ipg
    saveas(mh,lujing); %  5     保存
    %这里默认是将边缘检测的每一张图片保存，方便后续合成视频；也可以不用保存直接展示，只需将注释编号为1的语句取消注释，将2、3、4、5加上注释即可。但直接展示的话效果不太好，比较卡。
    pause(0.05);
end