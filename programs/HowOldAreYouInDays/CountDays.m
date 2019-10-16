%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  _                    _             _   %
% | |    __ _ _ __ ___ | |__       _-(")- %
% | |   / _` | '_ ` _ \| '_ \    `%%%%%   %
% | |__| (_| | | | |_| | |_) | _  // \\   %
% |_____\__,_|_| |_| |_|_.__/_| |__  ___  %
%                  | |   / _` | '_ \/ __| %
%                  | |__| (_| | |_) \__ \ %
%  2019-10-16      |_____\__,_|_.__/|___/ %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
%         How old are you in days         %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [days] = CountDays(day,month,year)
  
  MonthLength = [31,28,31,30,31,30,31,31,30,31,30,31] ;

  %Count whole years and add days
  days = year * 365 + day;
  %Count months
  for i=[1:month-1]
    days = days + MonthLength(i);
  end
  %Add leap years
  days = days + CountLeapYears(day,month,year);
  
end
