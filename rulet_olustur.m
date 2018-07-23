function [rulet]=rulet_olustur(f_degeri)
    oran=sum(f_degeri)./f_degeri;
    oran=oran/sum(oran);
    n=length(f_degeri);
    rulet=zeros(n,1);
    
    rulet(1)=oran(1);
    for i=2:n
        rulet(i)=rulet(i-1)+oran(i);
    end
end