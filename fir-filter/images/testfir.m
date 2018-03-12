L=10;
X1=sincfunc(0.5,L);
N1=[0:L-1]/(L);

L=40;
X2=sincfunc(0.5,L);
N2=[0:L-1]/(L);

L=160;
X3=sincfunc(0.5,L);
N3=[0:L-1]/(L);

[Y1 N1]=freqmod(X1,300);
[Y2 N2]=freqmod(X2,300);
[Y3 N3]=freqmod(X3,300);
plot(N1,Y1,N2,Y2,N3,Y3);xlabel('W/\pi')

legend('N=10','N=40','N=160')
print('XW5.eps','-depsc')

