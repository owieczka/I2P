function [audiosoundout] = Echo(audiosound,delay,fs,att)
%Adds echo to the input sound
s = delay*fs;
audiosoundout = att*[zeros(1,s) audiosound] + [audiosound zeros(1,s)];
end