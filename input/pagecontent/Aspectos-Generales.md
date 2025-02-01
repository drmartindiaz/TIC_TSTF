### Aspectos a Considerar
<br>

Esta sección describe definiciones, interpretaciones y requisitos importantes aplicables a todos los actores utilizados en esta guía. Los verbos de conformidad - **SHALL** *(Debe)*, **SHOULD** *(Debería Si Condición)*, **MAY** *(Podría)* - utilizados en esta guía se definen en las reglas de conformidad de FHIR.
<br>
### definiciones Para comprender la Guía

Los perfiles contienen ciertos elementos que son importantes de comprender a la hora de usarlos para implementación
<br>

#### Vistas de los perfiles
<br>

Al revisar un perfil tenemos la opción de visualizarlo desde múltiples perspectivas.

##### Statistics/References

Esta vista ofrece un resumen del perfil, incluyendo el origen del recurso los elementos <em>mandatorios</em>, <em>eliminados</em> y que deben ser <em>soportados</em>. Además, resume las <em>extensiones</em> y <em>slices</em> generados en el diseño.
<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="StatisticsReferences.png"> 
  <p>Visión resumen de un Perfil</p>
</div>
<br>

##### Vista Diferencial 

Esta vista permite observar todos aquellos elementos de un recurso que han sido modificadas o adecuadas para la realidad local. Esto incluye cambios como cardinalidad, explicaciones, MS o cualquier otro. Los elementos que se han mantenido tal cual en el recurso madre no figuran en esta vista. 

*Por razones de lenguaje, toda traducción de la descripción de un elemento se considera un cambio y se incluye en esta vista.*

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="Diferential.png"> 
  <p>Vista Diferencial de un Perfil</p>
</div>
<br>

##### Vista Snapshot 

En la vista de la **Snapshot Table**, todos los elementos obligatorios definidos para el perfil, y cualquier elemento obligatorio o que deba ser respaldado y heredado de un perfil base, están marcados con una **S**. 

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="snap.png"> 
  <p>Vista Snapshot Table de un perfil</p>
</div>
<br>

##### Vista Key Elements

En la vista **Key Elements Table**, todos los elementos presentados en la vista son obligatorios o deben ser compatibles con el perfil.

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="keyelements.png"> 
  <p>Vista Key Elements de un perfil</p>
</div>

### Definición del Conjunto Mínimo de Datos
<br>

El CMD definido para cada recurso se deja caracterizado por la bandera **MS** que significa *Must Support*. Este indicador determina que el sistema que recibe ese elemento de un recurso **DEBE** soportar el poder procesarlo y almacenarlo.

La existencia de un elemento o ruta con **MS** no determina la obligatoriedad de que un recurso generado contenga el dato. Esto se define mediante la obligatoriedad del dato lo cual **DEBE** estar especificado en la cardinalidad.
<br>

<div align="center" >
  <img  style="border: 1px solid; color: black;" src="MS.png"> 
  <p>Definición de elementos Must Support</p>
</div>

### Búsquedas Soportadas

Los Métodos y los parámetros para la consulta de recursos se describen a continuación y se basan en la búsqueda sobre recurso Paciente:

1.  En este caso los servidores **DEBEN** soportar buscar un recurso Patient usando el parámetro de búsqueda **[`_id`]**:

    `GET [base]/Patient[id]`

    Ejemplos

    1.  GET [base]/Patient/1032702
    2.  GET [base]/Patient?_id=1032702

Lo anterior es aplicable para un recurso ya creado, el cual se almacena con una identificación generada en ese momento

2.  Los servidores **DEBEN** soportar buscar un recurso Patient por un identificador como el número RUN de la Cédula de Identidad Nacional, utilizando el parámetro de búsqueda **[`identifier`]**:

    `GET [base]/Patient?identifier={system}[value]`

    Ejemplo:

    1. GET [base]/Patient?identifier=http://minsal.cl/API/Paciente|99999999

3.  Ejemplos de búsquedas por otros parámetros.

    Ejemplo:

    1.  GET [base]/Patient?name=Villanueva

### Agregado de Recursos (Creando Recursos para ser almacenados)

POST [base]/Patient En el Body, un recurso paciente compatible con el/los perfiles definidos core definido en el clcore (para este caso sería el perfil Paciente-Cl).

### Vocabularios




### Cardinalidad
<br>

La cardinalidad define dos aspectos de un elemento dentro de un perfil: 

* Cantidad de veces que un elemento se **Puede** repetir.
* La mínima cantidad de veces que un elemento **Debe** ser descrito al generar un recurso.

De esta forma nos encontramos con varias situaciones.

~~~
 
 {0..1}: El elemento puede no estar presente en el recurso (valor 0 inicial), pero si se utiliza, debe ser desarrollado solo una vez (valor 1 final).
 {1..1} : El elemento es obligatorio pero solo se puede desplegar 1 sola vez.
 {0..3} : Elemento no obligatorio que se puede repetir hasta 3 veces.
 {1..3} : Elemento obligatorio que puede repetirse hasta 3 veces.
 {1..*} : Elemento obligatorio que se puede repetir infinitas veces.


~~~

### Bindings
<br>

La vinculación obligatoria a una definición de conjunto de valores significa que SE **DEBE** utilizar uno de los códigos del conjunto de valores especificado. En el caso de *CodeableConcept*, no es válido utilizar sólo texto, pero se permiten múltiples codificaciones (traducciones).

La *vinculación extensible* a una definición de conjunto de valores significa que uno de los códigos del conjunto de valores especificado **SE DEBE USAR** si existe un concepto aplicable. Sin embargo, si no existe un código adecuado en el conjunto de valores, se **PUEDE** proporcionar un código o códigos alternativos en su lugar. Para *CodeableConcept* se permiten múltiples codificaciones y esta regla se aplica a una de ellas. También en el caso de *CodeableConcept*, si sólo se dispone de texto, se puede utilizar sólo el texto.

<br>

<div align="center" >
  <img  style="border: 1px solid; color: black;" src="binding.png"> 
  <p>Definición de Vinculaciones en Códigos</p>
</div>
<br>


### Ejemplos
<br>

La guía incluye una serie de ejemplos por cada perfil desarrollado. Estos ejemplos muestran en código como un sistema hace uso de un perfil para generar un recurso. Estos ejemplos se acceden desde la página ejemplos o desde la pestaña ejemplo de cada perfil
<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="ejemplo.png"> 
  <p>Acceso a Ejemplo desde perfil</p>
</div>
<br>

<br>
Además, cada ejemplo viene descrito en 4 formatos:
<br>

* Narrativa del ejemplo: Texto Legible
* Código en JSON
* Código en XML
* Código en Representación TTL
<br>
