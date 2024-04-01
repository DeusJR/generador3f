<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Informe sobre el Microgenerador Digital Trifásico

El propósito del presente informe es describir el diseño y la funcionalidad del microgenerador digital trifásico, concebido como un proyecto experimental en la facultad de ingeniería, orientado al diseño y fabricación de circuitos integrados. La idea original surgió de una simulación realizada hace años, la cual fue publicada en un artículo académico. La intención ahora es llevar a cabo la fabricación del microgenerador para caracterizar su desempeño práctico y demostrar su viabilidad como un componente integral en aplicaciones futuras.

Diseño del Circuito

El circuito del microgenerador digital trifásico se fundamenta en un contador Johnson de tres bits, configurado en un anillo para generar tres salidas digitales desfasadas entre sí en 120°. Además de las salidas digitales, el circuito requiere una entrada de reloj para sincronizar el contador.
En una fase adicional del diseño, se contempla la posibilidad de integrar un divisor de frecuencia alimentado por el reloj disponible en la tecnología utilizada. Esto permitiría obtener al menos dos salidas con frecuencias diferentes para alimentar el microgenerador. Si bien esta opción no es esencial, representa un ejemplo complementario de circuito y brinda flexibilidad en la alimentación del generador.

Funcionamiento y Características

El microgenerador digital trifásico produce tres señales senoidales de igual amplitud, desfasadas entre sí en 120°. Para lograrlo, las señales digitales de salida son sometidas a un proceso de filtrado analógico. El circuito cuenta con tres pines de entrada digital para las señales del contador Johnson, tres pines de salida analógica para las señales senoidales generadas y dos terminales para la polarización del circuito.

https://wokwi.com/projects/392934671873904641

Conclusiones

El microgenerador digital trifásico representa un avance significativo en el ámbito de la fabricación de circuitos integrados en nuestra facultad. Su diseño y funcionamiento demuestran la viabilidad de la simulación original y su capacidad para generar señales trifásicas de alta precisión. La inclusión opcional del divisor de frecuencia amplía aún más las posibilidades de aplicación y demuestra la versatilidad del enfoque propuesto.


## How to test

El circuito necesita una señal de reloj de entrada, puesto que no se usó el reloj de la placa, por lo que se requiere conectar un generador de señales en la entrada del circuito, la cual está nombrada como “SE”.  La señal que se inyectará al circuito debe ser de pulsos, con un voltaje que suba a 5 Vcd y baje a 0 Vcd, con un ciclo de trabajo del 50%. La frecuencia que se tenía pensada implementar es de 60 Hz, pues la idea original era alimentar un pequeño motor que pudiera servir para usos biomédicos o similares, pero para fines de prueba se puede usar cualquier otra frecuencia.
Las salidas que estarán desfasadas 120° entre sí serán las llamadas P0, P1 y P2, a las cuales se deberán conectar las entradas de los tres canales del osciloscopio. Todo esto habiendo calibrado antes el osciloscopio y verificando que la señal que se le inyectará al circuito es la correcta.
También es importante conectar las tierras de los cables del generador de señales digitales y del osciloscopio. 


## External hardware
 - Osciloscopio
 - Generador de señales digitales
