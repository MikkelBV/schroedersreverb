clear all
close all

[rawsignal, Fs] = audioread('snare.mp3');

combDelay = [   
        1000
        1000
        1000 
        1000
    ];
allPassDelay = [   
        0.7
        0.7
    ];
combType = 'IIR';
%% Perform Schroeder's Reverb algorithm on raw signal
signal1 = schroederReverb(rawsignal, Fs, combDelay, combType, allPassDelay, 0.5);

combDelay = [   
        1000
        2000
        3000
        4000
    ];
allPassDelay = [   
        0.7
        0.7
    ];
combType = 'FIR';
%% Perform Schroeder's Reverb algorithm on raw signal
signal2 = schroederReverb(rawsignal, Fs, combDelay, combType, allPassDelay, 0.5);

disp('Now playing raw signal.');
soundsc(rawsignal, Fs);
plotSignal(rawsignal, 'Raw signal');
pause;

disp('Now playing filtered signal!');
soundsc(signal1, Fs);
plotSignal(signal1, 'IIR signal');
pause;

disp('Now playing filtered signal!');
soundsc(signal2, Fs);
plotSignal(signal2, 'FIR signal');

