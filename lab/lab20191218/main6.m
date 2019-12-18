%Read sound from file
[note,fs] = audioread('record.wav');
%Extract single track from stereo file
note =note';
note = note(1,:);
note = Echo(note,0.76,fs,0.2);

soundsc(note,fs);


%SoundofWord=SayWord('cat'); %Homework
%soundsc(SoundofWord);