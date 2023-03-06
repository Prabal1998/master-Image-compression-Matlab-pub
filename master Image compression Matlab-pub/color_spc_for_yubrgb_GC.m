%Image color space transform YUV, YIQ, YCbCr,CIE 1931 
%Here assuming gamma correction K.^(2.222)*(4.4888e-06)
%
%
%conversion to Y,U,V forward transform
 function[Y,U,V,YUV]=color_spc_for_yubrgb_GC(R2,G2,B2)
    try
        Y=(0.299*(R2.^2.22)+0.587*(G2.^2.22)+0.114*(B2.^2.22))*0.001153;
        U=(-0.147*(R2.^2.22)-0.289*(G2.^2.22)+0.436*(B2.^2.22))*0.001153;
        V=(0.615*(R2.^2.22)-0.515*(G2.^2.22)-0.100*(B2.^2.22))*0.001153;
        YUV=cat(3,Y,U,V);
    
    catch ME
        error=sprintf('Check \n Function: %s \n At line: %d \n Possible cause:%s \n forward transform RGB to YUV failure '...
        , ME.stack(1).name, ME.stack(1).line, ME.message)

   close all
    end
 end

