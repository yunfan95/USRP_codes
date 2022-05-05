%% load-data
load DAT1 

%% write-data
WRITE_DAT([zeros(1,length(DAT1)+1e5),DAT1],'tx_data1');
WRITE_DAT([DAT2,zeros(1,length(DAT2)+1e5)],'tx_data2');