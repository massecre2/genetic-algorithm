function [populasyon]=populasyon_olustur(n,d)
    populasyon=zeros(n,d);
    for i=1:n
        populasyon(i,:)=randperm(d);
    end
end