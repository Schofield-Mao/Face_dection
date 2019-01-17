function image = Bright_image(image,BrightFactor)
Ima_hsv = rgb2hsv( image ); %ͼƬ����ɫ�ռ�ת�� 
Ima_hsv( : , : , 3 ) = Ima_hsv( : , : , 3 ) * BrightFactor;
image = uint8(hsv2rgb( Ima_hsv )*255); % hsv => rgb
end