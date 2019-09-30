fs = 10000; %Definir frecuencia de muestreo (que tan preciso es elanalisis y graficado)
t = (0:1/fs:1)'; %Linear space para generar se�ales y gr�ficas apresentar
fc = 100; fx=100; %kHz %Frecuencia de carrier (portadora), frecuenciamodulante
x =1+0.5*sin(2*pi*fx*t); %Se�al de informaci�n (f�rmula sin)
%Modulaci�n en Amplitud
yam = ammod(x,fc,fs);
cam = fmmod(x, fc, fs, 500);
%Genera sin, funciona como carrier
plot(t,cam);
%title('Se�al modulada en Amplitud');
%Spectrum Analyzer
%sa = dsp.SpectrumAnalyzer('SampleRate',fs, ...
 %'PlotAsTwoSidedSpectrum',false, ...
 %'YLimits',[-60 40]); %Db
%step(sa,yam)
