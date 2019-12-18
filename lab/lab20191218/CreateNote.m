function [note] = CreateNote(f,fs,duration)
%Create sound of a single note
t = 0:1/fs:duration;
note = sin(2*pi*f*t);
end