%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  _                    _             _   %
% | |    __ _ _ __ ___ | |__       _-(")- %
% | |   / _` | '_ ` _ \| '_ \    `%%%%%   %
% | |__| (_| | | | |_| | |_) | _  // \\   %
% |_____\__,_|_| |_| |_|_.__/_| |__  ___  %
%                  | |   / _` | '_ \/ __| %
%                  | |__| (_| | |_) \__ \ %
%  2018-12-06      |_____\__,_|_.__/|___/ %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [Image]=InsertSubImage(Image,SubImage,y,x)
  [SubImageHeight, SubImageWidth] = size(SubImage); %Get Sub Image size
  Image(y:1:y+(SubImageHeight-1),x:1:x+(SubImageWidth-1)) = SubImage; %Select appriopriate submatrix of image and copy subimage into it. 
end
