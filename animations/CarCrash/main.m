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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define image of a Car
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
myCarA=zeros(14,16);
myCarA(2:13,2:15)=0;
%tyers window
myCarA(9:11,4:6)=1;
myCarA(10,5)=0;
myCarA(9:11,8:10)=1;
myCarA(10,9)=0;
%window
myCarA(4:7,5:9)=1;
myCarA(6,6)=0;
myCarA(6,8)=0;
%other parts
myCarA(4,5:9)=1;
myCarA(7:10,2)=1;
myCarA(5:7,7)=1;
myCarA(4:7,10)=1;
myCarA(4:7,4)=1;
myCarA(7,2:4)=1;
myCarA(10,2:4)=1;
myCarA(10,6:8)=1;
myCarA(10,10:13)=1;
myCarA(7:10,13)=1;
myCarA(7,11:13)=1;

[HeightOfCarA,WidthOfCarA] = size(myCarA);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define another image of a Car
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

myCarB=fliplr(myCarA); % Create an image by fliping first car

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define image of a explosion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
myBoom=[1 0 1 0 1;0 1 1 1 0;1 1 1 1 1;0 1 1 1 0;1 0 1 0 1];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create an animation frame by frame
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:1:200                                                                  % Create animation of cars moving towards each other
    bigImage=zeros(200,200);                                                   % Create empty image
    
    PositionXofCarA = i;                                                       % Define the position of a Car A
    PositionYofCarA = 100;
    bigImage=InsertSubImage(bigImage,myCarA,PositionYofCarA,PositionXofCarA);  % Insert first Car into the image 
    
    PositionXofCarB = 200-2*i;                                                 % Define the position of a Car B
    PositionYofCarB = 100;                                                     % Car B goes twice as fast as Car A
                                                                               % and in opposite direction 
    bigImage=InsertSubImage(bigImage,myCar2,PositionYofCarB,PositionXofCarB);  % Insert second Car into the image 

    if (PositionXofCarB < PositionXofCarA+WidthOfCarA)                         % Check if both cars are touching  
        break;                                                                 % each other. If so break loop
    end
    imshow(bigImage);                                                          % Show current frame of animation on screen
    myFileName=sprintf('out\\myFilename%03d.png',i);
    imwrite(bigImage,myFileName);                                              % Save current frame of animation to file
end

bigImage=InsertSubImage(bigImage,myBoom,PositionYofCarB+3,i+13);               % Insert explosion image onto a crashed cars
imshow(bigImage)
myFileName=sprintf('out\\myFilename%03d.png',i);                               % Show current frame of animation on screen
imwrite(bigImage,myFileName);                                                  % Save current frame of animation to file