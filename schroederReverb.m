function [output] = schroederReverb( ...
  inputSignal, ...
  Fs, ...
  combDelayVector, ...
  combType, ...
  allpassVector, ...
  delay, ...
  useAlternativeAllpass ...
)
  signalSize = length(inputSignal);
  [numCombs channels] = size(combDelayVector);
  [numAllPass unusedVariable] = size(allpassVector);

  filteredSignals = [];
  for i = 1 : numCombs
      switch combType
          case 'IIR'
              filterOutput = IIR( ...
                  inputSignal, ...
                  delay, ...
                  combDelayVector(i,1) ...
              );
          case 'FIR'
              filterOutput = FIR( ...
                  inputSignal, ...
                  delay, ...
                  combDelayVector(i,1) ...
              );
          otherwise
              error('Unknown filtertype');
      end

      filteredSignals = [filteredSignals filterOutput];
  end

  filterOutput = combineSignals(filteredSignals);
  
  for j = 1 : numAllPass
      c = allpassVector(j, 1);
      if nargin == 7 % this means that optional parameter useAlternativeAllpass has been passed in
        filterOutput = alternative_allpass(filterOutput, c);
      else 
        filterOutput = allpass(filterOutput, c);
      end
  end

  output = filterOutput;
end

