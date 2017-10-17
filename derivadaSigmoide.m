function [g] = derivadaSigmoide (z)
g = sigmoide(z) .* (1-sigmoide(z));
endfunction
