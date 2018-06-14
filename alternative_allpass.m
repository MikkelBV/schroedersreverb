function filteredSignal = alternative_allpass(inputSignal, c)
  % somewhat unsuccesful attempt at implementing an allpass filter
  % y(n) = -c x(n) + c y(n - 1)
  filteredSignal = zeros(length(inputSignal), 1);

  % start at 2 to avoid outofbounds exception on (n-1)
  for n = 2 : length(inputSignal)
    filteredSignal(n) = (-c * inputSignal(n)) + (c * filteredSignal(n - 1)); 
  end
end


