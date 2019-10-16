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

BirthDayDay = 2;
BirthDayMonth = 7;
BirthDayYear = 1984;

TodayDay = 16;
TodayMonth = 10;
TodayYear = 2019;

NumberOfDaysUntilBirthDay = CountDays(BirthDayDay,BirthDayMonth,BirthDayYear);
NumberOfDaysUntilToday = CountDays(TodayDay,TodayMonth,TodayYear);

NumberOfDaysBetweenBirthDayAndToday = NumberOfDaysUntilToday-NumberOfDaysUntilBirthDay;

Message = sprintf('Number of days between %d-%d-%d and today is %d', BirthDayDay,BirthDayMonth,BirthDayYear,NumberOfDaysBetweenBirthDayAndToday);
disp(Message)