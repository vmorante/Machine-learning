function 
[Theta1,Theta2]=entrenamiento(num_entradas,num_etiquetas,num_ocultas,X_train,y_train, initial_theta)
options = optimset ( 'GradObj' , 'on' , 'MaxIter' , 50);
lambda = 1;
params_rn= fmincg (@( t ) (costeRN (t , num_entradas , num_ocultas ,num_etiquetas , X_train, y_train,
lambda)), initial_theta, options);
Theta1 = reshape (params_rn (1: num_ocultas * ( num_entradas + 1) ) ,num_ocultas , (
num_entradas + 1) ) ;
Theta2 = reshape (params_rn ((1 + (num_ocultas * ( num_entradas + 1) ) ) : end ) ,
num_etiquetas,( num_ocultas+ 1) ) ;

endfunction
