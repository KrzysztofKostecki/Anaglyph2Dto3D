I = imread('images/test2.png');
depht = 30;
ymax = size(I,1);
xmax = size(I,2);
 disp(ymax);
 disp(xmax);
crop_rect_left = [depht,0,xmax-depht-1,ymax];
crop_rect_right = [0,0,xmax-depht,ymax];

left_pic = imcrop(I,crop_rect_left);
right_pic = imcrop(I,crop_rect_right);
%  subplot(1,2,1), imshow(left_pic);
%  subplot(1,2,2), imshow(right_pic);
%J = Anaglyph3D(left_pic,right_pic);
 disp(crop_rect_left);
 disp(crop_rect_right);
 
 disp(size(left_pic));
 disp(size(right_pic));

% just empty array
a = zeros(size(left_pic,1),size(left_pic,2));


% Prepare picture for left eye
red = left_pic(:,:,1);
left_eye = cat(3,red,a,a);


% Prepare picture for right eye
green = right_pic(:,:,2);
blue = right_pic(:,:,3);
right_eye = cat(3,a,green,blue);


% adding previously prepared pictures
J = imadd(left_eye,right_eye);


figure, imshow(J);