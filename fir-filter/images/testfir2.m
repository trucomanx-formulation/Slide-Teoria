%
L=10;
X1=sincfunc(0.5,L).*(hanning(L)');
N1=[0:L-1]/(L);

L=40;
X2=sincfunc(0.5,L).*(hanning(L)');
N2=[0:L-1]/(L);

L=160;
X3=sincfunc(0.5,L).*(hanning(L)');
N3=[0:L-1]/(L);

[Y1 N1]=freqmod(X1,300);
[Y2 N2]=freqmod(X2,300);
[Y3 N3]=freqmod(X3,300);
plot(N1,Y1,N2,Y2,N3,Y3);xlabel('W/\pi')
legend('N=10','N=40','N=160')
print('XW5h.eps','-depsc')

N=61;
plot([0:N-1],hanning(N),[0:N-1],sincfunc(0.5,N));xlabel('n');xlim([0,N]);
legend('hanning[n]','x_a[n-30]')
ylabel('hanning[n]')
print('hanning.eps','-depsc')

figure(2);
N=61;
[Y num]=freqmod(hanning(N),300);
Y2=[Y(300:-1:2) Y];
num2=[-num(300:-1:2) num];
plot(num2,Y2);xlabel('W/\pi');
legend('|FFT(hanning[n])|')
ylabel('|HANNING(W)|')
print('hanningfft.eps','-depsc')
