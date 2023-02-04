seq = [1,1];
temp = seq;
for i=1:50
    convo_length = length(temp)+length(seq)-1;
    x = [seq zeros(1,convo_length-length(seq))];
    y = [temp zeros(1,convo_length-length(temp))];
    temp = nonzeros(ifft(fft(x).*fft(y)))'
end