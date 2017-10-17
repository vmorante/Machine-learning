# Machine learning


En este trabajo se va analizar un dataset en Smartphone sobre el reconocimiento de actividades humanas. Los datos se han obtenido con 30 voluntarios, de cada uno de ellos se han obtenido 17 señales como la aceleración, el giroscopio, etc.…Posteriormente de cada una de estas señales se han obtenido 17 medidas como la media, la varianza, el máximo, el mínimo…Tras segmentar en ventanas da lugar a 561 características y 7767 ejemplos de entrenamiento. En X_train están cargados estos datos y en y_train.txt están cargados los datos de cual actividad corresponde, en total hay 12. Tras cargar los datos aplicaremos las técnicas de aprendizaje automático vistas en clase. Para comprobar la efectividad del sistema tenemos unos datos de prueba con 3162 ejemplos que dividiremos por la mitad para hacer ejemplos de validación y de test. Para finalizar comparamos todas las técnicas y explicaré cual es la técnica que se aproxima mejor a este conjunto de datos.

Tenemos las siguientes actividades:

1 WALKING           
2 WALKING_UPSTAIRS  
3 WALKING_DOWNSTAIRS
4 SITTING           
5 STANDING          
6 LAYING            
7 STAND_TO_SIT      
8 SIT_TO_STAND      
9 SIT_TO_LIE        
10 LIE_TO_SIT        
11 STAND_TO_LIE      
12 LIE_TO_STAND      
