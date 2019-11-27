%1A Count how many times letter A occures in given word
%1B Count how many times given number occures in given vector
%%fun1A.m fun2B.m fun3A.m fun4B.m
%2A Sort given vector in assending order (with out sort function)
%2B Divide given vector into a odd and even parts (output should be one vector first odd than even part)
 1 2 3 4 5 6 -> 1 3 5 2 4 6
%3A Make an animation of ball
%3B Make an animation of stickman walking left to right

%4A make a plot of a Cos and Sin on one figure (each different color and line type)
%4B make a plot of x^2 and exp(-2x) on two figures (each different color and line type)

BallImage = [ 1 0 0 1; 0 0 0 0; 0 0 0 0; 1 0 0 1];
% 1001 0011000
% 0000 0001000
% 0000 0111110
% 1001 0001000
%      0010100
%      0100010
BackgroundImage = ones(20,20);
for pos=1:20
  Image = InsertImage(BackgroundImage,BallImage,10,pos);
  DispImage(Image);
end

function []=DispImage(Image)
cls;
Character1 = ' '; %for 1
Character2 = '#'; %for 0

for y=1:size(Image,1)
  StringToBeDisplay = ' ';
  for x=1:size(Image,2)
    if Image(y,x)==1
      StringToBeDisplay = [StringToBeDisplay Character1];
    else
      StringToBeDisplay = [StringToBeDisplay Character0];
    end
  end
  disp(StringToBeDisplay);
end

pause(0.5);
end

function [OutputImage]=InsertImage(BackgoundImage, Image, x,y)
OutputImage = BackgoundImage;
OutputImage[y:y+size(Image,1)-1,x:x+size(Image,2)-1]=Image;
end



