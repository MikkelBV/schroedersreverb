function filteredSignal = IIR(inputSignal, fb, delay)
  filteredSignal = zeros(length(inputSignal), 1);
  
  % fill in the part of the array that the filter cant process
  % because of the (n-delay) offset
  filteredSignal(1 : delay, 1) = inputSignal(1 : delay, 1);

  % add maxDelay to avoid outofbounds exception on (n - delay)
  % fb is short for feedback(coefficient)
  % IIR: y = x(n) + fb * y(n-delay)
  for n = 1 + delay : length(inputSignal)
      filteredSignal(n,1) = inputSignal(n) + (fb * filteredSignal(n - delay));
  end

  % filteredSignal is implicitely returned
end