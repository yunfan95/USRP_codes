function DAT = Packet_gen(Packet_Len)
Sample_time = 2e-6 ;
Mod_time = 2e-5;

%% Signal generations
Len = round(Packet_Len/Mod_time);
DAT_raw = 2 * round(rand(1, Len)) - 1; 

%% Raised cosine filter
Nsym = 6;          
beta = 0.5;        
sampsPerSym = round(Mod_time/Sample_time);  

rctFilt = comm.RaisedCosineTransmitFilter(...
  'Shape','Normal', ...
  'RolloffFactor',beta, ...
  'FilterSpanInSymbols',Nsym, ...
  'OutputSamplesPerSymbol',sampsPerSym);

%% Filtered Data
DAT = rctFilt(DAT_raw');
DAT = DAT'/rms(DAT);

end

