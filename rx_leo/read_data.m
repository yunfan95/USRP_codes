
file_name = 'rx_leo.dat';

%% file_name = 'tx_data1';
fid = fopen(file_name);
data = fread(fid, [2,inf],'float');
yn = data(1,:) + 1i*data(2,:);
fclose(fid);

fs   = 5e5;
%% time = 1/fs : 1/fs : length(yn)/fs;
f_c  = 125e3;
f_p  = 75e3;

figure() 
plot(1/fs : 1/fs : length(yn(1:1e7))/fs , real(yn(1:1e7)),'k','linewidth', 2)
xlabel('Time(s)')
ylabel('Amplitude(V)')
set(gca,'linewidth',3)
set(gca,'fontsize',20)


figure() 
plot(fs/length(yn(1:1e7)):fs/length(yn(1:1e7)):fs, abs(fft(yn(1:1e7))),'linewidth', 2)
xlabel('Frequenc(Hz)')
ylabel('Amplitude')
set(gca,'linewidth',3)
set(gca,'fontsize',20)

y1 = yn;

%% signal detection
load DAT
ref  = conj(DAT(17501:77500));
len  = length(ref);


start_index = 0.233*fs;
while(start_index < length(yn)-0.2*fs)
    
for i = round(start_index-0.1*fs) : 5 : round(start_index + 0.1*fs)
    dat = y1(i:i+len-1);
    spectrum = abs(fft(dat.*ref));
    peak1(i) = max(spectrum);
end

start_index = start_index + 6*fs;
end

plot(peak1)
