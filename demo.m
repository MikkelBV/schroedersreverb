clear all
close all

[rawsignal, Fs] = audioread('snare.mp3');
rawsignal = rawsignal( : , 1); % only use one channel for now

%% ex 1
combDelay1 = [   
        50
        60
        10
        20
    ];
allPassDelay1 = [   
        0.7
        0.7
    ];
combType1 = 'IIR';
coefficient1 = 0.7;
signal1 = schroederReverb(rawsignal, Fs, combDelay1, combType1, allPassDelay1, coefficient1);

%% ex 2
combDelay2 = [   
        150
        200
        250
        300
    ];
allPassDelay2 = [   
        0.7
        0.7
    ];
combType2 = 'FIR';
coefficient2 = 0.5;
signal2 = schroederReverb(rawsignal, Fs, combDelay2, combType2, allPassDelay2, coefficient2);

%% ex 3
combDelay3 = [   
        100
        200
        300
        400
        500
        600
        700
        800
        900
        1000
        1100
        1200
        1300
        1400
        1500
    ];
allPassDelay3 = [   
        0.7
        0.7
    ];
combType3 = 'IIR';
coefficient3 = 0.6;
signal3 = schroederReverb(rawsignal, Fs, combDelay3, combType3, allPassDelay3, coefficient3);

%% ex 4
combDelay4 = [   
        100
        200
        300
        400
    ];
allPassDelay4 = [   
        0.6
        0.4
    ];
combType4 = 'IIR';
coefficient4 = 0.6;
signal4 = schroederReverb(rawsignal, Fs, combDelay4, combType4, allPassDelay4, coefficient4);


%% ex 5
combDelay5 = [   
        100
        200
        300
        400
    ];
allPassDelay5 = [   
        0.1
        0.2
    ];
combType5 = 'IIR';
coefficient5 = 0.6;
signal5 = schroederReverb(rawsignal, Fs, combDelay5, combType5, allPassDelay5, coefficient5);

%% ex 6
combDelay6 = [   
        100
        200
        300
        400
    ];
allPassDelay6 = [   
        0.9
        0.8
    ];
combType6 = 'IIR';
coefficient6 = 0.6;
signal6 = schroederReverb(rawsignal, Fs, combDelay6, combType6, allPassDelay6, coefficient6);

%% ex 7
combDelay7 = [   
        100
        200
        300
        400
    ];
allPassDelay7 = [   
        0.1
        0.2
        0.3
        0.4
        0.5
        0.6
        0.7
        0.8
        0.9
    ];
combType7 = 'IIR';
coefficient7 = 0.6;
signal7 = schroederReverb(rawsignal, Fs, combDelay7, combType7, allPassDelay7, coefficient7);

%% ex 8
combDelay8 = [   
        100
        200
        300
        400
    ];
allPassDelay8 = [   
        0.7
        0.7
    ];
combType8 = 'IIR';
coefficient8 = 1;
signal8 = schroederReverb(rawsignal, Fs, combDelay8, combType8, allPassDelay8, coefficient8);

%% ex 9
combDelay9 = [   
        100
        200
        300
        400
    ];
allPassDelay9 = [   
        0.7
        0.7
    ];
combType9 = 'FIR';
coefficient9 = 1;
signal9 = schroederReverb(rawsignal, Fs, combDelay9, combType9, allPassDelay9, coefficient9);

%% ex 10
combDelay10 = [   
        100
        200
        300
        400
    ];
allPassDelay10 = [   
        0.7
        0.7
    ];
combType10 = 'IIR';
coefficient10 = 0.6;
signal10 = schroederReverb(rawsignal, Fs, combDelay10, combType10, allPassDelay10, coefficient10, true);

%% ex 11
combDelay11 = [   
        100
        200
        300
        400
    ];
allPassDelay11 = [   
        0.7
        0.7
    ];
combType11 = 'IIR';
coefficient11 = 0.6;
signal11 = schroederReverb(rawsignal, Fs, combDelay11, combType11, allPassDelay11, coefficient11);

%% ex 12
combDelay12 = [   
        50
        200
        300
        350
    ];
allPassDelay12 = [   
        0.7
        0.7
    ];
combType12 = 'IIR';
coefficient12 = 0.9;
signal12 = schroederReverb(rawsignal, Fs, combDelay12, combType12, allPassDelay12, coefficient12, true);

%% play demos
disp('Now playing raw signal.');
soundsc(rawsignal, Fs);
plotSignal(rawsignal, 'Raw signal');
pause;

disp('Now playing filtered signal.');
disp('combFilterDelays:');
disp(combDelay1);
disp('allPassCoeffs:');
disp(allPassDelay1);
disp('combType:');
disp(combType1);
soundsc(signal1, Fs);
plotSignal(signal1, 'IIR');
pause;

disp('Now playing filtered signal.');
disp('combFilterDelays:');
disp(combDelay12);
disp('allPassCoeffs:');
disp(allPassDelay12);
disp('combType:');
disp(combType12);
soundsc(signal12, Fs);
plotSignal(signal12, 'IIR with high coefficient');
pause;

disp('Now playing filtered signal.');
disp('combFilterDelays:');
disp(combDelay3);
disp('allPassCoeffs:');
disp(allPassDelay3);
disp('combType:');
disp(combType3);
soundsc(signal3, Fs);
plotSignal(signal3, 'IIR with 15xcomb');
pause;

disp('Now playing filtered signal.');
disp('combFilterDelays:');
disp(combDelay2);
disp('allPassCoeffs:');
disp(allPassDelay2);
disp('combType:');
disp(combType2);
soundsc(signal2, Fs);
plotSignal(signal2, 'FIR');
pause;

disp('Now playing filtered signal.');
disp('combFilterDelays:');
disp(combDelay4);
disp('allPassCoeffs:');
disp(allPassDelay4);
disp('combType:');
disp(combType4);
soundsc(signal4, Fs);
plotSignal(signal4, 'IIR - allpass 1');
pause;

disp('Now playing filtered signal.');
disp('combFilterDelays:');
disp(combDelay5);
disp('allPassCoeffs:');
disp(allPassDelay5);
disp('combType:');
disp(combType5);
soundsc(signal5, Fs);
plotSignal(signal5, 'IIR - allpass with low values');
pause;

disp('Now playing filtered signal.');
disp('combFilterDelays:');
disp(combDelay6);
disp('allPassCoeffs:');
disp(allPassDelay6);
disp('combType:');
disp(combType6);
soundsc(signal6, Fs);
plotSignal(signal6, 'IIR - allpass with high values');
pause;

disp('Now playing filtered signal.');
disp('combFilterDelays:');
disp(combDelay7);
disp('allPassCoeffs:');
disp(allPassDelay7);
disp('combType:');
disp(combType7);
soundsc(signal7, Fs);
plotSignal(signal7, 'IIR - allpass with many values');
pause;

disp('Now playing filtered signal.');
disp('combFilterDelays:');
disp(combDelay10);
disp('allPassCoeffs:');
disp(allPassDelay10);
disp('combType:');
disp(combType10);
soundsc(signal10, Fs);
plotSignal(signal10, 'alternative allpass');
pause;

disp('Now playing filtered signal.');
disp('combFilterDelays:');
disp(combDelay11);
disp('allPassCoeffs:');
disp(allPassDelay11);
disp('combType:');
disp(combType11);
soundsc(signal11, Fs);
plotSignal(signal11, 'Matlabs allpass: dfilt.allpass');
pause;

disp('HEADPHONES OFF and hit a key to continue');
pause;

disp('Now playing filtered signal.');
disp('combFilterDelays:');
disp(combDelay8);
disp('allPassCoeffs:');
disp(allPassDelay8);
disp('combType:');
disp(combType8);
soundsc(signal8, Fs);
plotSignal(signal8, 'IIR with coefficient = 1');
pause;

disp('Now playing filtered signal.');
disp('combFilterDelays:');
disp(combDelay9);
disp('allPassCoeffs:');
disp(allPassDelay9);
disp('combType:');
disp(combType9);
soundsc(signal9, Fs);
plotSignal(signal9, 'FIR with coefficient = 1');
pause;