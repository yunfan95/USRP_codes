function DAT = Packet_gen_FSK(Packet_Len,Mod_time)
sample_time = 2e-6 ;
Len         = round(Packet_Len/Mod_time);
f_mod       = 1/Mod_time/2;

time  = sample_time : sample_time : Mod_time;
DAT   = [];

for  i = 1 : Len
    f = round(rand(1)) * f_mod;
    DAT = [DAT, cos(2* pi * f * time)];
end

[b,a] = butter(12, sample_time/Mod_time);
DAT = filter(b,a,DAT);
end