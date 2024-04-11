![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg)

# Tiny Tapeout Verilog Project Template

- [Read the documentation for project](docs/info.md)

## What is Tiny Tapeout?

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.

## Verilog Projects

1. Add your Verilog files to the `src` folder.
2. Edit the [info.yaml](info.yaml) and update information about your project, paying special attention to the `source_files` and `top_module` properties. If you are upgrading an existing Tiny Tapeout project, check out our [online info.yaml migration tool](https://tinytapeout.github.io/tt-yaml-upgrade-tool/).
3. Edit [docs/info.md](docs/info.md) and add a description of your project.
4. Optionally, add a testbench to the `test` folder. See [test/README.md](test/README.md) for more information.

The GitHub action will automatically build the ASIC files using [OpenLane](https://www.zerotoasiccourse.com/terminology/openlane/).

## Enable GitHub actions to build the results page

- [Enabling GitHub Pages](https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part)

## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://tinytapeout.com/discord)
- [Build your design locally](https://docs.google.com/document/d/1aUUZ1jthRpg4QURIIyzlOaPWlmQzr-jBn3wZipVUPt4)

## What next?

- [Submit your design to the next shuttle](https://app.tinytapeout.com/).
- Edit [this README](README.md) and explain your design, how it works, and how to test it.
- Share your project on your social network of choice:
  - LinkedIn [#tinytapeout](https://www.linkedin.com/search/results/content/?keywords=%23tinytapeout) [@TinyTapeout](https://www.linkedin.com/company/100708654/)
  - Mastodon [#tinytapeout](https://chaos.social/tags/tinytapeout) [@matthewvenn](https://chaos.social/@matthewvenn)
  - X (formerly Twitter) [#tinytapeout](https://twitter.com/hashtag/tinytapeout) [@matthewvenn](https://twitter.com/matthewvenn)


## Generador digital trifásico

How it works:

El circuito requiere una entrada de reloj, en este caso llamada "SE", ya que no se usará el reloj del sistema, para manejar un registro de tres bits en configuración de anillo (contador Johnson), con tres salidas digitales desfasadas 120° entre ellas.

La idea de aplicación del circuito se basa en alimentar motores trifásicos que se pudieran implementar en el área biomédica o similares. Por lo que para llegar a alimentar un motor se require procesar de las señales de salida de este circuito generador, la idea es filtrar analógicamente las ondas digitales para obtener tres señales senoidales de amplitudes iguales y desfasadas 120°. Esto como complemento del proyecto, pues en este circuito solo se llega hasta la parte de tres salidas cuadradas desfasadas 120°.

En el enlace siguiente se tiene el circuito en diagrama de bloques, en donde se muestra cómo se tiene el desfase de las tres señales de salida.
Para poder usarlo se usó un switch, en el que manualmente encenciéndolo y apagándolo, se simula la función de pulsos de entrada y se observa el desfasamiento entre los 3 leds que se tienen en la salida.
https://wokwi.com/projects/392934671873904641

![image](https://github.com/DeusJR/generador3f/assets/165088102/3dc9e98b-3402-4d18-b189-794334193555)


Para comprobar la funcionalidad del código en verilog de nuestro ciircuito, se simuló usando la herramienta de simulación del software Quartus II. En la imagen siguiente se puede apreciar que en las salidas "P0, P1 y P2" existe un desfasamiento de 120° entre sí, teniendo una sola señal de entrada de reloj. La señal de reloj de entrada se designó como "SE".
De igual forma el código se probó en una FPGA Altera Cyclone II, para comprobar su funcionamiento y arrojó los resultados esperados en las simulaciones. Siguiendo el procedimiento que se describe en este mismo archivo README, en la sección llamada "How to test".

![Imagen de WhatsApp 2024-03-31 a las 20 20 17_92d28c8a](https://github.com/DeusJR/generador3f/assets/163932147/93440c60-be47-4216-83eb-10290c88cc63)


How to test:

Para probar el circuito se requieren un generador de señales digitales y un osciloscopio, preferentemente con al menos 3 canales.

El circuito necesita una señal de reloj de entrada, puesto que no se usó el reloj de la placa, se requiere conectar un generador de señales en la entrada del circuito la cual está nombrada como “SE”. Esta señal de entrada se asignó al pin bidireccional "uio[7]"

La señal "Se" que se inyectará al circuito debe ser de pulsos (una señal cuadrada), con un voltaje que suba a 5 Vcd y baje a 0 Vcd, con un ciclo de trabajo del 50%. 

La frecuencia que se tenía pensada implementar para la señal de entrada es de 60 Hz, pues la idea original era alimentar un pequeño motor que pudiera servir para usos biomédicos o similares, pero para fines de prueba se puede usar cualquier otra frecuencia, siempre y cuando el osciloscopio que se vaya a conectar a las salidas, sea capaz de leer señales a dicha frecuencia. 

Antes de conectar la señal de entrada al circuito, es importante comprobar sus valores en un osciloscopio y un voltímetro, para asegurarse que la señal tiene la forma y magnitud adecuadas, y que el circuito no se dañe por exceso de voltaje.

Las salidas que estarán desfasadas 120° entre sí serán las llamadas P0, P1 y P2. Estas tres salidas se asignaron a los pines bidireccionales "uio[2], uio[1], uio[0]" respectivamente. A estos pines de salida se deberán conectar las entradas de los tres canales del osciloscopio, todo esto habiendo calibrado antes el osciloscopio y verificando que la señal que se le inyectará al circuito es la correcta. También es importante conectar las tierras de los cables del generador de señales digitales y del osciloscopio.

Una vez habiendo hecho todo lo anterior, se debería de poder observar en las salidas, los tres pulsos de igual magnitud, desfasados 120° entre sí.

Si se desean observar las salidas complementarias "Qa, Qb y Qc" estas se asignaron a los pines "uio[5], uio[4], uio[3]" respectivamente.  

External hardware:

Generador de señales digitales: Para alimentar la señal de entrada del circuito. La señal debe ser un pulso (una señal cuadrada) el cual vaya de 0 a 5V, con un ciclo de trabajo del 50%. La frecuencia de la señal no debe ser necesariamente una en particular, puede ser cualquiera, mientras que el osciloscopio que se conente a las salidas sea capaz de leerlas.

Osciloscopio: Este debe ser de al menos 3 canales, para poder leer las tres salidas principales del circuito, las cuales estarán desfasadas 120° entre sí. 


Para cualquier duda en cuanto a las pruebas del circuito, pueden mandar un correo electrónico a la siguiente dirección deusjrfm@gmail.com o al numero +522283543917
