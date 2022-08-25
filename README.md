# USRP_codes

1. Step1_data_generation

|Script Name | Description | Comments|
| :---: | :---: | :---: | 
|  `Main.m`     |  Generate random BPSK and FSK signals, and convert to binary data  | |
|  `Packet_gen_FSK.m`     |  Generate random 2FSK sinal for a given modulation rate and sample rate  | frequency spacing = modulation rate/2|
|  `Packet_gen_BPSK.m`    |  Generate random BPSK sinal for a given modulation rate and sample rate  |[roll-off factor](https://en.wikipedia.org/wiki/Raised-cosine_filter#:~:text=the%20mathematical%20one.-,Roll%2Doff%20factor,is%20the%20symbol%2Drate.)=0.5|
