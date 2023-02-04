seq = [1,1]
temp = seq;
for i = 1:20
    seq_len = length(seq);
    temp_length = length(temp);
    temp_padded = [temp zeros(1,temp_length)];
    zero_for_seq = length(temp_padded) - seq_len;
    seq_padded = [seq zeros(1,zero_for_seq)];
    temp = ifft(fft(seq_padded).*fft(temp_padded));

end



