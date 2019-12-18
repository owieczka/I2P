%Simple note
f = 440; % Frequency of middle A4 note
fs = 44100;
t = 0:1/fs:3;
note = 2*sin(2*pi*f*t);
soundsc(note,fs);

%Function for creating sound of a single note
duration = 0.5;
note = CreateNote(f,fs,duration);
soundsc(note,fs);

%Play Gama
fC4=261.63;
fD4=293.67;
fE4=329.63;
fF4=349.23;
fG4=392.00;
fA4=440.00;
fB4=492.88;
fC5=523.25;
duration = 0.2;
noteC4 = CreateNote(fC4,fs,duration);
noteD4 = CreateNote(fD4,fs,duration);
noteE4 = CreateNote(fE4,fs,duration);
noteF4 = CreateNote(fF4,fs,duration);
noteG4 = CreateNote(fG4,fs,duration);
noteA4 = CreateNote(fA4,fs,duration);
noteB4 = CreateNote(fB4,fs,duration);
noteC5 = CreateNote(fC5,fs,duration);
note = [noteC4 noteD4 noteE4 noteF4 noteG4 noteA4 noteB4 noteC5];
soundsc(note,fs);

