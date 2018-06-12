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
signal1 = schroederReverb(rawsignal, Fs, combDelay, combType, allPassDelay, 0.9, 0.5);

combDelay = [   
        50
        50
        50 
        50
    ];
allPassDelay = [   
        0.7
        0.7
        0.7
        0.7
        0.7
    ];
combType = 'IIR';
%% Perform Schroeder's Reverb algorithm on raw signal
signal2 = schroederReverb(rawsignal, Fs, combDelay, combType, allPassDelay, 0.9, 0.5);

combDelay = [   
        500
        500
        500
        500
    ];
allPassDelay = [   
        0.9
        0.5
    ];
combType = 'IIR';
%% Perform Schroeder's Reverb algorithm on raw signal
signal3 = schroederReverb(rawsignal, Fs, combDelay, combType, allPassDelay, 0.9, 0.5);

disp('Now playing raw signal.');
soundsc(rawsignal, Fs);
plotSignal(rawsignal, 'Raw signal');
pause;

disp('Now playing filtered signal!');
soundsc(signal1, Fs);
plotSignal(signal1, 'Filtered signal');
pause;

disp('Now playing filtered signal!');
soundsc(signal2, Fs);
plotSignal(signal2, 'Filtered signal, low delay');
pause;

disp('Now playing filtered signal!');
soundsc(signal3, Fs);
plotSignal(signal3, 'Filtered signal');
pause;
