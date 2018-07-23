clear all;
clc;

n=4;
d=8;
cap_olasilik=0.90;
mut_olasilik=0.05;
[populasyon]=populasyon_olustur(n,d)
f_degeri=uygunluk(populasyon)

for iter=1:100
    f_degeri=uygunluk(populasyon);
    idx=find(f_degeri==0);
    if length(idx)~=0
        break;
    else
       sec_pop=dogal_secilim(populasyon,f_degeri);
       cap_pop=caprazlama(sec_pop, cap_olasilik);
       mut_pop=mutasyon(cap_pop, mut_olasilik);
    end
    populasyon=mut_pop;
end
disp('Son populasyon ');
iter
populasyon
f_degeri=uygunluk(populasyon);
idx=find(f_degeri==0);
cozum=populasyon(idx,:)