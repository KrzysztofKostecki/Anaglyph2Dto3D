function [ 3dImage ] = Anaglyph3D( left_pic, right_pic )
%3DANAGLYPH selecting diffrent channels of two images and add them
%   Left eye has red filter, right eye has cyan filter(green & blue)

% just empty array
a = zeros(size(left_pic,1),size(left_pic,2));


% Prepare picture for left eye
red = left_pic(:,:,1);
left_eye = cat(3,red,a,a);


% Prepare picture for right eye
green = right_pic(:,:,2);
blue = right_pic(:,:,3);
right_eye = cat(3,a,green,blue);


% adding previously prepared 
3dImage = imadd(left_eye,right_eye);


end

