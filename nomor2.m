I=imread('pout.tif');
I2=im2double(I);
m=mean2(I2);

imshow(I2);

fprintf('pencarian manual = 1 ; otomatis = 2\n') ;
prompt = 'masukkan input = ';
p = input(prompt);

if p == 2
    for i = 3:3:10
        for j = 0:0.1:m
            contrast1=1./(1+(j./(I2+eps)).^i);
            figure,imshow(contrast1);
            plot(j,i);
        end
    end
else
    z = 1;
    while z == 1
        prompt = 'masukkan nilai m = ';
        x = input(prompt);
        em = im2double(x);

        prompt = 'masukkan nilai E = ';
        E = input(prompt);

        contrast1=1./(1+(em./(I2+eps)).^E);
        figure,imshow(contrast1);
        
        prompt = 'coba lagi (iya masukkan 1) = ';
        z = input(prompt);
    end
end