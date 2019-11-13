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

function [ScreenBuffer] = DisplayScreen(ScreenBuffer, DungeonMap, PlayerX, PlayerY, PlayerA, FOV, MaxDistanceToWall)
  
  [ScreenHeight, ScreenWidth] = size(ScreenBuffer);

  [DungeonHeight, DungeonWidth] = size(DungeonMap);
  
  for x = [1:ScreenWidth]
    
    RayAngle = (PlayerA - FOV / 2.0) + x / ScreenWidth * FOV;
    
    DistanceToWall = 0.0;
    HitWall = false;
    
    EyeX = sin(RayAngle);
    EyeY = cos(RayAngle);
    
    %Ray casing for each collumn of screen
    for DistanceToWall = [0:0.1:MaxDistanceToWall]
      
      TestX = floor(PlayerX + EyeX * DistanceToWall);
      TestY = floor(PlayerY + EyeY * DistanceToWall);
      
      if (TestX < 0 || TestX > DungeonWidth || TestY < 0 || TestY > DungeonHeight)
        DistanceToWall = MaxDistanceToWall;
        break;
      else
        %Chceck hit the wall
        if DungeonMap(TestY,TestX)=='#'
          break;
        end
      end
    end
    
    %Calculate ceiling and floor widths
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
 
end