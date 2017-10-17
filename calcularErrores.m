function [erroresAsignados,erroresCalculados] = calcularErrores (error, y_test , num_etiquetas,ycalculada)
erroresAsignados= zeros(num_etiquetas, 1);
erroresCalculados= zeros(num_etiquetas, 1);
for i=1:rows(error)
erroresAsignados(y_test(error(i))) = erroresAsignados(y_test(error(i))) + 1;
erroresCalculados(ycalculada(error(i))) = erroresCalculados(ycalculada(error(i))) + 1;
endfor
endfunction
