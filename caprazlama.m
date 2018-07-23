function [cap_pop]=caprazlama(sec_pop, olasilik)
    [n,d]=size(sec_pop);
    capraz_dizisi=randperm(n);
    cap_pop=zeros(n,d);
    for i=1:n/2
            %disp('çaprazlama ikilileri');
            birey1=sec_pop(capraz_dizisi(2*i-1),:);
            birey2=sec_pop(capraz_dizisi(2*i),:);
            if unifrnd(0,1)<olasilik
                nokta=unidrnd(d-1);

                yenibirey1=zeros(size(birey1));
                yenibirey2=zeros(size(birey1));

                yenibirey1(1:nokta)=birey1(1:nokta);
                yenibirey1(nokta+1:end)=birey2(nokta+1:end);

                yenibirey2(1:nokta)=birey2(1:nokta);
                yenibirey2(nokta+1:end)=birey1(nokta+1:end);

                cap_pop(2*i-1,:) = yenibirey1;
                cap_pop(2*i  ,:) = yenibirey2;
            else
                cap_pop(2*i-1,:) = birey1;
                cap_pop(2*i  ,:) = birey2;
            end
    end
end
