function [audioout] = AmplitudeModulation(audio,fs,A,f,offset)
t=0:1/fs:(length(audio)-1)/fs;
attenuation = A*sin(2*pi*f*t)+offset;
audioout = audio.*attenuation;
end