function filteredSignal = IIR(inputSignal, ff, fb, delay, maxDelay)
  filteredSignal = zeros(length(inputSignal), 1);

  % add maxDelay to avoid outofbounds exception on (n - delay)
  for n = 1 + maxDelay : length(inputSignal)
      filteredSignal(n,1) = (ff * inputSignal(n)) + (fb * filteredSignal (n - delay));
  end
end