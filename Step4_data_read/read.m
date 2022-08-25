file_name = 'rx_leo.dat';

fid = fopen(file_name);
data = fread(fid, [2,inf],'float');
yn = data(1,:) + 1i*data(2,:);
fclose(fid);
fs = 5e5;

time = 1/fs : 1/fs : length(yn)/fs;
hold on
plot(time, real(yn))
plot(time, imag(yn))
