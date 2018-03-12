function [AH varargout]=freqmod(H0,N)
% this function return the modulus of frequency response of function H0.
% Frequently H0 will be a FIR filter.
%
%  If  H0    = [h0 h1 h2 ... h(M-1)] then your Z transform is:
%  M2=floor(M/2);
%  H0[Z] = h0 Z^(+M2) + h1 Z^(+M2-1) + ...  h(M-1) Z^(+M2-(M-1)) 
%  and the function return AH=|H0[Z=exp(jW)]| for W from 0 to pi.
%
%  References:
%  [1]  
%
%  Code developer by:  Fernando Pujaico Rivera <fernando.pujaico.rivera@gmail.com>
%  Code adapted by:    
%  Code documented by: Fernando Pujaico Rivera <fernando.pujaico.rivera@gmail.com>
%  
%  Date: 01 of December of 2015.
%  Review: 15 of December of 2015.
%
%  After starting the main routine just type the following command at the
%  prompt:
%  AH=freqmod(H0,N)
%  [AH FREQN]=freqmod(H0,N);
%  
%  Input:
%  H0     Is a vector with the parameters of H0 function. 
%  N      Is the number of analysis points of frequency response.
%  Output:
%  AH     Is the modulus of frequency response of function H0. 
%         AH=|H0[Z=exp(jW)]| for W from 0 to pi.
%  FREQN  [OPTIONAL] Is the normalized frequency of points in AH, thus for the 
%         point AH(id) we have W=FREQN(id)*pi.
%  
%  This file is a part of the Bio Speckle Laser - Tool Library (BSLTL) package.
%
%  This BSLTL computer package is free software; you can redistribute it
%  and/or modify it under the terms of the GNU General Public License as
%  published by the Free Software Foundation; either version 2 of the
%  License, or (at your option) any later version. 
%
%  This BSLTL computer package is distributed in the hope that it will be
%  useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
%
%  You should have received a copy of the GNU General Public License
%  along with this program; if not, please download it from
%  <http://www.gnu.org/licenses>.
%
%  For help, bug reports and feature suggestions, please visit:
%  http://
%
    M =length(H0);
    
    TETA=[0:(N-1)]*pi/(N-1);
    
        
    AH=0;
    for II=1:M
        AH=AH+H0(II)*exp(i*TETA*(II-1));
    end
    AH=abs(AH);

    if nargout>1
        %FREQN=[0:(N-1)]/(N-1);
        varargout{1}=[0:(N-1)]/(N-1);
    end
end
