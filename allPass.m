function filteredSignal = allpass(inputSignal, c)
  filteredSignal = filter(dfilt.allpass(c), inputSignal);
end






