function W= pesosAleatorios (L_in , L_out)
epsilon=sqrt(6)/sqrt(L_in+L_out);
W = rand(L_in,L_out)*(2*epsilon)-epsilon;
endfunction
