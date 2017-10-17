function [ all_theta ] = oneVsAll (X, y , num_etiquetas , lambda)
options = optimset ( 'GradObj' , 'on' , 'MaxIter' , 50);
vector = ones(rows(X),1);
X=[vector X];
z = (y(1:rows(X), 1) == 1:num_etiquetas);
for cont = 1:num_etiquetas
initial_theta = zeros (columns(X) , 1);
theta = fmincg (@( t ) (lrCostFunction (t , X, z(:,cont), lambda)), initial_theta, options);
all_theta(:,cont) = theta;
endfor
endfunction
