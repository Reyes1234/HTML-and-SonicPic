# Welcome to Sonic Pi v3.1
2.times do
  play:C
  sleep 1
  play:D
  sleep 1
  play 72
  sleep 1
  play 79
  sleep 1
  play:B
end

in_thread do
  loop do
    sample:ambi_haunted_hum
    sample:ambi_piano
    sleep 1
  end
end
loop do
  use_synth :fm
  play 40, release: 0.2
  sleep 0.5
end

loop do
  
  if one_in(2)
    sample:ambi_piano
  else
    sample:bd_808
  end
  
  sleep 0.5
  
end