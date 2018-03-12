function F=sincfunc(A,N)
	F=zeros(1,N);
	N2=(N-1)/2.0;
	
	II=1;
	for n=linspace(-N2,N2,N);
		if n==0
			F(II)=A;
		else
			F(II)=sin(pi*A*n)/(pi*n);
		end
		II=II+1;
	end
	
end
