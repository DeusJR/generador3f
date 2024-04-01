<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
El circuito requiere una entrada de reloj, en este caso llamada "SE", ya que no se usará el reloj del sistema, para manejar un registro de tres bits en configuración de anillo (contador Johnson), con tres salidas digitales desfasadas 120° entre ellas. Además de las dos terminales para polarización del circuito. 

En cuanto al proceso de las señales de salida del generador, la idea es filtrar analógicamente las ondas digitales para obtener tres señales senoidales de amplitudes iguales y desfasadas 120°. Esto como complemento del proyecto, pues la idea de aplicación del circuito se basa en alimentar motores trifásicos que se pudieran implementar en el área biomédica o similares.

En el enlace siguiente se tiene el circuito en diagrama de bloques, en donde se muestra cómo se tiene el desfase de las tres señales de salida.
https://wokwi.com/projects/392934671873904641



## How to test

El circuito necesita una señal de reloj de entrada, puesto que no se usó el reloj de la placa, por lo que se requiere conectar un generador de señales en la entrada del circuito, la cual está nombrada como “SE”.  La señal que se inyectará al circuito debe ser de pulsos, con un voltaje que suba a 5 Vcd y baje a 0 Vcd, con un ciclo de trabajo del 50%. La frecuencia que se tenía pensada implementar es de 60 Hz, pues la idea original era alimentar un pequeño motor que pudiera servir para usos biomédicos o similares, pero para fines de prueba se puede usar cualquier otra frecuencia.
Las salidas que estarán desfasadas 120° entre sí serán las llamadas P0, P1 y P2, a las cuales se deberán conectar las entradas de los tres canales del osciloscopio. Todo esto habiendo calibrado antes el osciloscopio y verificando que la señal que se le inyectará al circuito es la correcta.
También es importante conectar las tierras de los cables del generador de señales digitales y del osciloscopio. 


## External hardware
 - Osciloscopio
 - Generador de señales digitales
