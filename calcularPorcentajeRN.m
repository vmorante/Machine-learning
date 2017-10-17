function [p]=calcularPorcentaje(Theta1,Theta2,X,y)
vector = ones(rows(X),1);
X=[vector X];
a2 = sigmoide(Theta1*X');
a2=a2';
a2=[vector a2];
h=sigmoide(Theta2*a2');
[M,i] = max(h);
i = i';
aciertos = find(y == i);
p= rows(aciertos) / rows(y) * 100;
endfunction
