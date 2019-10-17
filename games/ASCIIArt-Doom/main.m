%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  _                    _             _   %
% | |    __ _ _ __ ___ | |__       _-(")- %
% | |   / _` | '_ ` _ \| '_ \    `%%%%%   %
% | |__| (_| | | | |_| | |_) | _  // \\   %
% |_____\__,_|_| |_| |_|_.__/_| |__  ___  %
%                  | |   / _` | '_ \/ __| %
%                  | |__| (_| | |_) \__ \ %
%  2019-10-17      |_____\__,_|_.__/|___/ %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
%              ASCIIArt-Doom              %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

DungeonMap( 1,:) = '################';
DungeonMap( 2,:) = '#              #';
DungeonMap( 3,:) = '#              #';
DungeonMap( 4,:) = '#              #';
DungeonMap( 5,:) = '#         #    #';
DungeonMap( 6,:) = '#         #    #';
DungeonMap( 7,:) = '#         #    #';
DungeonMap( 8,:) = '#              #';
DungeonMap( 9,:) = '#              #';
DungeonMap(10,:) = '#              #';
DungeonMap(11,:) = '#              #';
DungeonMap(12,:) = '#              #';
DungeonMap(13,:) = '#        #######';
DungeonMap(14,:) = '#              #';
DungeonMap(15,:) = '#              #';
DungeonMap(16,:) = '################';

DungeonWidth = 16;
DungeonHeight = 16;

PlayerX = 8.0;
PlayerY = 8.0;
PlayerA = 0.0;

FOV = 3.141592 / 4.0;

MaxDistanceToWall = 30.0;

EmptyCharacter = ' ';
ScreenWidth = 120;
ScreenHeight = 40;

while 1
  ScreenBuffer = repmat(EmptyCharacter,ScreenHeight,ScreenWidth);

  for x = [1:ScreenWidth]
    
    RayAngle = (PlayerA - FOV / 2.0) + x / ScreenWidth * FOV;
    
    DistanceToWall = 0.0;
    HitWall = false;
    
    EyeX = sin(RayAngle);
    EyeY = cos(RayAngle);
    
    for DistanceToWall = [0:0.1:MaxDistanceToWall]
      
      TestX = floor(PlayerX + EyeX * DistanceToWall);
      TestY = floor(PlayerY + EyeY * DistanceToWall);
      
      if (TestX < 0 || TestX > DungeonWidth || TestY < 0 || TestY > DungeonHeight)
        DistanceToWall = MaxDistanceToWall;
        break;
      else
        if DungeonMap(TestY,TestX)=='#'
          break;
        end
      end
    end
    
    CeilingHeight = ScreenHeight / 2.0 - ScreenHeight / DistanceToWall;
    FloorHeight = ScreenHeight - CeilingHeight;
    
    % .:-=+*#%@
    if DistanceToWall<MaxDistanceToWall/5.0
      ShadeColor = '@';
    elseif DistanceToWall<MaxDistanceToWall/4.0
      ShadeColor = '%';
    elseif DistanceToWall<MaxDistanceToWall/3.0
      ShadeColor = '#';
    elseif DistanceToWall<MaxDistanceToWall/2.0
      ShadeColor = '*';
    elseif DistanceToWall<MaxDistanceToWall/1.0
      ShadeColor = ':';
    else
      ShadeColor = 'e';
    end
        
    for y=[1:ScreenHeight]
      if y < CeilingHeight   %Celing
        ScreenBuffer(y,x) = ' ';
      elseif y < FloorHeight %Wall
        ScreenBuffer(y,x) = ShadeColor;
      else                   %Floor
        b = 1.0 - (y-ScreenHeight/2.0)/(ScreenHeight/2.0);
        if b < 0.25 
          FloorShadeColor = '#';
        elseif b < 0.5
          FloorShadeColor = 'x';
        elseif b < 0.75
          FloorShadeColor = '.';
        elseif b < 0.9
          FloorShadeColor = '_';
        else
          FloorShadeColor = ' ';
        end
        ScreenBuffer(y,x) = FloorShadeColor;
      end
    end
    
  end

  DisplayScreen(ScreenBuffer);

  Key = input('?',"s");
  switch Key
    case 'a'
      PlayerA = PlayerA - 0.1;
    case 'd'
      PlayerA = PlayerA + 0.1;
    case 'w'
      PlayerX = PlayerX + sin(PlayerA) * 1.0;
      PlayerY = PlayerY + cos(PlayerA) * 1.0;
      if DungeonMap(floor(PlayerY),floor(PlayerX))=='#'
        PlayerX = PlayerX - sin(PlayerA) * 1.0;
        PlayerY = PlayerY - cos(PlayerA) * 1.0;
      end
    case 's'
      PlayerX = PlayerX - sin(PlayerA) * 1.0;
      PlayerY = PlayerY - cos(PlayerA) * 1.0;
      if DungeonMap(floor(PlayerY),floor(PlayerX))=='#'
        PlayerX = PlayerX + sin(PlayerA) * 1.0;
        PlayerY = PlayerY + cos(PlayerA) * 1.0;
      end
    case 'q'
      break;
  end
end