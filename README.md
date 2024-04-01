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
How it works
El circuito requiere una entrada de reloj, en este caso llamada "SE", ya que no se usará el reloj del sistema, para manejar un registro de tres bits en configuración de anillo (contador Johnson), con tres salidas digitales desfasadas 120° entre ellas. Además de las dos terminales para polarización del circuito.
En cuanto al proceso de las señales de salida del generador, la idea es filtrar analógicamente las ondas digitales para obtener tres señales senoidales de amplitudes iguales y desfasadas 120°. Esto como complemento del proyecto, pues la idea de aplicación del circuito se basa en alimentar motores trifásicos que se pudieran implementar en el área biomédica o similares.

Para comprobar la funcionalidad de el código en verilog de nuestro ciircuito, se simuló usando la herramienta de simulación del software Quartus II. En la imagen siguiente se puede apreciar que en las salidas existe un desfasamiento de 120° entre sí, teniendo una sola señal de entrada de reloj. Estas señales desfasadas 120° son las que están designadas como P0, P1 y P2. 
![Imagen de WhatsApp 2024-03-31 a las 20 20 17_92d28c8a](https://github.com/DeusJR/generador3f/assets/163932147/93440c60-be47-4216-83eb-10290c88cc63)

How it works
El circuito requiere una entrada de reloj, en este caso llamada "SE", ya que no se usará el reloj del sistema, para manejar un registro de tres bits en configuración de anillo (contador Johnson), con tres salidas digitales desfasadas 120° entre ellas. Además de las dos terminales para polarización del circuito.

En cuanto al proceso de las señales de salida del generador, la idea es filtrar analógicamente las ondas digitales para obtener tres señales senoidales de amplitudes iguales y desfasadas 120°. Esto como complemento del proyecto, pues la idea de aplicación del circuito se basa en alimentar motores trifásicos que se pudieran implementar en el área biomédica o similares.

En el enlace siguiente se tiene el circuito en diagrama de bloques, en donde se muestra cómo se tiene el desfase de las tres señales de salida.
https://wokwi.com/projects/392934671873904641

How to test
El circuito necesita una señal de reloj de entrada, puesto que no se usó el reloj de la placa, por lo que se requiere conectar un generador de señales en la entrada del circuito, la cual está nombrada como “SE”. La señal que se inyectará al circuito debe ser de pulsos, con un voltaje que suba a 5 Vcd y baje a 0 Vcd, con un ciclo de trabajo del 50%. La frecuencia que se tenía pensada implementar es de 60 Hz, pues la idea original era alimentar un pequeño motor que pudiera servir para usos biomédicos o similares, pero para fines de prueba se puede usar cualquier otra frecuencia. Las salidas que estarán desfasadas 120° entre sí serán las llamadas P0, P1 y P2, a las cuales se deberán conectar las entradas de los tres canales del osciloscopio. Todo esto habiendo calibrado antes el osciloscopio y verificando que la señal que se le inyectará al circuito es la correcta. También es importante conectar las tierras de los cables del generador de señales digitales y del osciloscopio.

External hardware
Osciloscopio
Generador de señales digitales
