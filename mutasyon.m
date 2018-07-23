function [mut_pop]=mutasyon(cap_pop, mut_olasilik)
   mut_pop=cap_pop;
   [n,d]=size(cap_pop);
   for i=1:n
       for j=1:d
           sayi=unifrnd(0,1);
           if sayi<mut_olasilik
              mut_pop(i,j)=unidrnd(d); 
           end
       end
   end
end