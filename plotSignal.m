function plotSignal(signal, label)
  figure;
  plot(signal);

  title(label);
  xlabel('Time (seconds)');
  ylabel('Amplitude')
end