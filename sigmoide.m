function [g] = sigmoide (z)
g = 1 ./ (1 + exp (-z));
endfunction
