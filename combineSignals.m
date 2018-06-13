function combinedSignal = combineSignals(signals)
  [signalSize numSignals] = size(signals);
  combination = zeros(signalSize,1);
  
  for n = 1 : numSignals   
      combination = combination + signals( : , n);
  end
  
  combinedSignal = combination / numSignals;
end