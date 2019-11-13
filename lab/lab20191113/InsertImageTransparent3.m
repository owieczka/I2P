function [ReturnImage] = InsertImageTransparent3(BackgroundImage,X,Y,Image,TransparentColor)
  ImageSize = size(Image);
  BackgroundImageSize = size(BackgroundImage);
  for i=1:ImageSize(1)
    for j=1:ImageSize(2)
      if Image(i,j,1) == TransparentColor(1) && Image(i,j,2) == TransparentColor(2) && Image(i,j,3) == TransparentColor(3)
      else
        if Y+i-1<=BackgroundImageSize(1) && X+j-1<=BackgroundImageSize(2) && Y+i-1>0 && X+j-1>0
          BackgroundImage(Y+i-1,X+j-1,1:3)=Image(i,j,1:3);
        end
      end
    end
  end
  ReturnImage=BackgroundImage;
end
