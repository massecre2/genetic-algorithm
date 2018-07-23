function [f_degeri]=uygunluk(populasyon)
    
    [n,d]=size(populasyon);
    f_degeri=zeros(n,1);
    
    for b=1:n
        tehdit=0;    
        birey=populasyon(b,:);  % 2     3     4     1
        for i=1:d-1
            gen=birey(i); % 2
            for j=i+1:d
                if gen==birey(j)
                    tehdit=tehdit+1;
                end
                farkx=abs(i-j);
                farky=abs(gen-birey(j));
                if farkx==farky
                    tehdit=tehdit+1;
                end
            end
            
        end
        f_degeri(b)=tehdit;
    end
end