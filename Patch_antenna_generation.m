Packet_Len = [10e-3 20e-3 30e-3 60e-3 120e-3 240e-3 360e-3];
DAT1 = [];
for i = 1 : 7
Len = Packet_Len(i);    
DAT1 = [DAT1, Packet_gen(Len), zeros(1,10000)];
end
DAT1 = [zeros(1,10000),DAT1];
DAT1 = DAT1/max(DAT1);

Packet_Len = 60e-3;
Gap = 1e4;
DAT_energy = [zeros(1,Gap/2), Packet_gen(Packet_Len), zeros(1,Gap) ,Packet_gen(Packet_Len)/sqrt(2),zeros(1,Gap),Packet_gen(Packet_Len)/2/sqrt(2),zeros(1,Gap), Packet_gen(Packet_Len)/4, zeros(1,Gap), Packet_gen(Packet_Len)/4/sqrt(2), zeros(1,Gap/2)];
DAT_length = [zeros(1,Gap/2), Packet_gen(20e-3)/sqrt(2),zeros(1,Gap), Packet_gen(40e-3)/2, zeros(1,Gap), Packet_gen(80e-3)/2/sqrt(2), zeros(1,Gap), Packet_gen(120e-3)/2/sqrt(3), zeros(1,Gap), Packet_gen(240e-3)/2/sqrt(6),  zeros(1,Gap/2)];
DAT2 = [DAT_energy, DAT_length];
DAT2 = DAT2/max(DAT2);


DAT_energy = [zeros(1,Gap/2), Packet_gen(Packet_Len), zeros(1,Gap) ,Packet_gen(Packet_Len)/sqrt(2),zeros(1,Gap),Packet_gen(Packet_Len)/2/sqrt(2),zeros(1,Gap), Packet_gen(Packet_Len)/4, zeros(1,Gap), Packet_gen(Packet_Len)/4/sqrt(2), zeros(1,Gap/2)];
DAT_length = [zeros(1,Gap/2), Packet_gen(20e-3)/sqrt(2),zeros(1,Gap), Packet_gen(40e-3)/2, zeros(1,Gap), Packet_gen(80e-3)/2/sqrt(2), zeros(1,Gap), Packet_gen(120e-3)/2/sqrt(3), zeros(1,Gap), Packet_gen(240e-3)/2/sqrt(6),  zeros(1,Gap/2)];
DAT3 = [DAT_energy, DAT_length];
DAT3 = DAT3/max(DAT3);
