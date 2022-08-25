# USRP_codes

1. Step1_data_generation

|Script Name | Description | Comments|
| :---: | :---: | :---: | 
|  `Main.m`     |  Generate random BPSK and FSK signals, and convert to binary data 'tx_loop.dat' | |
|  `Packet_gen_FSK.m`     |  Generate random 2FSK signal for a given modulation & sample rate  | frequency spacing = modulation rate/2|
|  `Packet_gen_BPSK.m`    |  Generate random BPSK signal for a given modulation & sample rate  |[roll-off factor](https://en.wikipedia.org/wiki/Raised-cosine_filter#:~:text=the%20mathematical%20one.-,Roll%2Doff%20factor,is%20the%20symbol%2Drate.)=0.5|
|  `WRITE_DAT.m`     |  Convert complex data into IQ binary data | Pay attention to **row/column** vector |

2. Use USRP to send tx_loop.dat periodically and record time for every transmission

    - In tx_leo.cpp, 'sleep_for' blocks the execution of the current thread for at least the specified sleep_duration. (Unit ms)
        ```
     do {  send_from_buffer(tx_stream, buff);
     
         if (repeat and delay > 0.0) {
            std::this_thread::sleep_for(std::chrono::milliseconds(int64_t(delay * 1000)));
           }
        } while (repeat and not stop_signal_called);
     ```
    - Following functions are very important

|Function | Description | Comments|
| :---: | :---: | :---: | 
| `read_from_file`| read tx_loop.dat and covert to complex number| |
| `send_from_buffer`| USRP sends out data | |
| `TX_time`| Obtain current time and stream it out|'chrono' and 'ctime' should be included [link](https://stackoverflow.com/questions/997946/how-to-get-current-time-and-date-in-c)|



