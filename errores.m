function[porcentaje,aciertos,i] =errores(X_train,all_theta,y_train)
vector = ones(rows(X_train),1);
X_train=[vector X_train];
c = sigmoide(all_theta'*X_train');
[M,i] = max(c);
i = i';
aciertos = find(y_train!= i);
porcentaje = rows(aciertos) / rows(y_train) * 100;
endfunction
