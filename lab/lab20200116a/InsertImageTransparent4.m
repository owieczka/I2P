function [ReturnImage] = InsertImageTransparent4(BackgroundImage,X,Y,Image,TransparentColor)
%Fast version of InsertImage with Transparency 
  ImageSize = size(Image);
  BackgroundImageSize = size(BackgroundImage);
  
  sYBackground = Y;                sYImage = 1;
  eYBackground = Y+ImageSize(1)-1; eYImage = ImageSize(1);
  sXBackground = X;                sXImage = 1;
  eXBackground = X+ImageSize(2)-1; eXImage = ImageSize(2);

  %disp(eYBackground-sYBackground);
  %disp(eYImage-sYImage);
  
  if sYBackground<1
    sYImage = -sYBackground+1; sYBackground = 1;
  end
  if sXBackground<1
    sXImage = -sXBackground+1; sXBackground = 1; 
  end
  
  if eYBackground<1
    ReturnImage = BackgroundImage;
    return;
  end
  if eXBackground<1
    ReturnImage = BackgroundImage;
    return;
  end
  
  if eYBackground>=BackgroundImageSize(1)
    eYBackground = BackgroundImageSize(1); eYImage = ImageSize(1)-(Y+ImageSize(1)-BackgroundImageSize(1))+1; 
  end
  if eXBackground>=BackgroundImageSize(2)
    eXBackground = BackgroundImageSize(2); eXImage = ImageSize(2)-(X+ImageSize(2)-BackgroundImageSize(2))+1;
  end
  
  if sYBackground>=BackgroundImageSize(1)
    ReturnImage = BackgroundImage;
    return;
  end
  if sXBackground>=BackgroundImageSize(2)
    ReturnImage = BackgroundImage;
    return;
  end
  
  %disp(sYImage);
  %disp(eYImage);
  %disp(sXImage);
  %disp(eXImage);
  
  
  BackgroundImagePathR = BackgroundImage(sYBackground:eYBackground,sXBackground:eXBackground,1);
  BackgroundImagePathG = BackgroundImage(sYBackground:eYBackground,sXBackground:eXBackground,2);
  BackgroundImagePathB = BackgroundImage(sYBackground:eYBackground,sXBackground:eXBackground,3);
  ImagePathR = Image(sYImage:eYImage,sXImage:eXImage,1);
  ImagePathG = Image(sYImage:eYImage,sXImage:eXImage,2);
  ImagePathB = Image(sYImage:eYImage,sXImage:eXImage,3);
  
  %idx = find(ImagePathR~=TransparentColor(1) || ImagePathG~=TransparentColor(2) || ImagePathB~=TransparentColor(3));
  %idx = find(~(ImagePathR==TransparentColor(1) && ImagePathG==TransparentColor(2) && ImagePathB==TransparentColor(3)))
  %idx = find(~(ImagePathR==1 && ImagePathG==1 && ImagePathB==1))
  MatR = ImagePathR==TransparentColor(1);
  MatG = ImagePathG==TransparentColor(2);
  MatB = ImagePathB==TransparentColor(3);
  Mat = 1 - MatR.*MatG.*MatB;
  
  idx = find(Mat);
  %size(BackgroundImagePathR);
  %size(ImagePathR);
  BackgroundImagePathR(idx) = ImagePathR(idx);
  BackgroundImagePathG(idx) = ImagePathG(idx);
  BackgroundImagePathB(idx) = ImagePathB(idx);
  
  BackgroundImage(sYBackground:eYBackground,sXBackground:eXBackground,1) = BackgroundImagePathR;
  BackgroundImage(sYBackground:eYBackground,sXBackground:eXBackground,2) = BackgroundImagePathG;
  BackgroundImage(sYBackground:eYBackground,sXBackground:eXBackground,3) = BackgroundImagePathB;
  
  ReturnImage=BackgroundImage;
end
