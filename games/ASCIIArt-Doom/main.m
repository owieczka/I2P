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
ScreenWidth = 80;
ScreenHeight = 40;

while 1
  ScreenBuffer = repmat(EmptyCharacter,ScreenHeight,ScreenWidth);

  ScreenBuffer = RenderMap(ScreenBuffer, DungeonMap, PlayerX, PlayerY, PlayerA, FOV, MaxDistanceToWall);
  
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