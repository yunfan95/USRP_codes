Packet_Len = 120e-3;
Mod_time = 2e-5;
Gap  = 35e-3;
fs   = 5e5;
fd   = 125e3;
time = 1/fs : 1/fs : Packet_Len;


DAT_BPSK  = Packet_gen_BPSK(Packet_Len,Mod_time/2).*exp(-1j*2*pi*fd*time); 

DAT_FSK = Packet_gen_FSK(Packet_Len,2*Mod_time).*exp(-1j*2*pi*fd*time);

DAT = [DAT_BPSK/max(abs(DAT_BPSK)),DAT_FSK/max(abs(DAT_FSK))];

save DAT DAT

WRITE_DAT(DAT,'tx_loop')