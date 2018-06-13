function filteredSignal = FIR(inputSignal, ff, delay)
  filteredSignal = zeros(length(inputSignal), 1);

  % fill in the part of the array that the filter cant process
  % because of the (n-delay) offset
  filteredSignal(1 : delay, 1) = inputSignal(1 : delay, 1);

  % add delay to avoid outofbounds exception on (n - delay)
  % ff is short for feedforward (coefficient)
  % FIR: y = ff * x(n) + x(n-delay)
  for n = 1 + delay : length(inputSignal)
      filteredSignal(n,1) = (ff * inputSignal(n)) + inputSignal(n - delay);
  end
  
  % filteredSignal is implicitely returned
end