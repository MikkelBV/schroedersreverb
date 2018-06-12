function filteredSignal = allPass(inputSignal, c)
  filteredSignal = filter(dfilt.allpass(c), inputSignal);
end