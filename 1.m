clc
clear all
close all
a=imread('model1.jpg');
figure(1),imshow(a);title('Imagen de detección');%Leer en la imagen y mostrarla
hsv=rgb2hsv(a);
h=hsv(:,:,1);
s=hsv(:,:,2);
v=hsv(:,:,3);
figure(2),imshow(hsv);title('Imagen HSV');%Convertir a imagen y visualización hsv
rectangle('Position',floor(STATS(i).BoundingBox),'EdgeColor','g','linewidth',3);%%Tome el rectángulo circunscrito más grande como la posición de destino
 x=round(STATS(i).BoundingBox(1)+0.5*STATS(i).BoundingBox(3))-10;
 y=round(STATS(i).BoundingBox(2)+0.5*STATS(i).BoundingBox(4));
 text(x,y,'Rojo');
 
hold off

