function [sec_pop]=dogal_secilim(populasyon,f_degeri)
    % f=4,1,1,1
    
    rulet=rulet_olustur(f_degeri);
    [n,d]=size(populasyon);
    sec_pop=zeros(n,d);
    for i=1:n
        sayi=unifrnd(0,1);
        idx=find(sayi<rulet,1);
        sec_pop(i,:)=populasyon(idx,:);
    end
    
end