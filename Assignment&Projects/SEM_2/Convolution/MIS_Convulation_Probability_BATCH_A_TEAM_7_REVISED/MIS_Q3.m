coin = [1/2 1/2]
coin_padded = [coin, zeros(1,length(coin))];
coin2 = ifft(fft(coin_padded).* fft(coin_padded));
coin2_padded = [coin2, zeros(1,length(coin2))];
coun_padded = [coin, zeros(1,length(coin2_padded) - length(coin))];
coin_3 = ifft(fft(coin2_padded).*fft(coun_padded))