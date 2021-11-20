clear;
clc;

WriterObj=VideoWriter('disco.mp4', 'MPEG-4');   %这里输出的路径是默认路径，合成的视频的格式是avi
     %avi格式的话光是影 流 之 主那个14秒的视频都要1个多G，过于高清，可以改为mp4，这样就合成的视频比较小
     %改为mp4格式只需将内容改为：VideoWriter('master of shadow.mp4', 'MPEG-4')
open(WriterObj);
for i=1:7574  %帧图数量
  pic='';  %前面边缘检测的图片的存储路径
  pic=strcat(pic,num2str(i));
  ppic=strcat(pic,'.jpg');
  frame=imread(ppic);  % 读取图像，放在变量frame中
  disp(ppic);
  writeVideo(WriterObj,frame);  % 将frame放到变量WriterObj中
end
close(WriterObj);