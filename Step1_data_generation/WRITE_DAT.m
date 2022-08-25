function WRITE_DAT(data,file) %x is 'x.dat', A is data points
fid=fopen(file,'wb');
R = real(data);
I = imag(data);
output = [R;I];
fwrite(fid, output, 'float');
fclose(fid);
end