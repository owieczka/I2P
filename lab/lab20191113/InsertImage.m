function [ReturnImage] = InsertImage(BackgroundImage,X,Y,Image)
  ImageSize = size(Image);
  BackgoundImage(Y:Y+ImageSize(1)-1,X:X+ImageSize(2)-1,1:3)=Image;
  ReturnImage=BackgoundImage;
end
