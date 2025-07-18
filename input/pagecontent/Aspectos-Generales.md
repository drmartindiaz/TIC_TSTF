### Límites y Condiciones de Solicitudes de Interconsulta

1. **Definición de límites y condiciones:**
   *   Es necesario especificar bajo qué escenarios el sistema de información en salud (HIS) solicitará una interconsulta a profesionales no validados localmente. Estos límites deben considerar:
       * **La necesidad de la consulta:** Establecer si la interconsulta es requerida por falta de especialistas locales o por la necesidad de conocimientos especializados.
       * **El perfil del profesional externo:** Definir los criterios específicos (ejemplo: certificaciones o licencias internacionales) que permitan aceptar la participación del profesional en el proceso de interconsulta.          
       * **La temporalidad:** Determinar si estas consultas se limitan a casos de emergencia o si forman parte de servicios regulares.
            
2. **Responsabilidad del HIS:**
    
    *   El HIS debe ser responsable de validar que el profesional externo cuenta con los requisitos mínimos necesarios establecidos en los acuerdos legales transfronterizos.
        

### Normativas Aplicables y Restricciones ###

1.  **Normativas sobre emisión de recetas:**
    
    *   Los marcos regulatorios nacionales deberán especificar:
        
        *   Quiénes tienen la autoridad para emitir recetas dentro del territorio.
            
        *   Si las recetas emitidas por un profesional extranjero tendrán validez o si deben ser validadas por un profesional local registrado.
            
        *   Qué tipo de medicamentos pueden ser recetados bajo este esquema.
            
2.  **Restricciones aplicables:**
    
    *   Los profesionales no reconocidos oficialmente en el país receptor podrán tener restricciones como:
        
        *   Limitación en la emisión de recetas controladas.
            
        *   Necesidad de acompañar los informes médicos con una firma digital certificada internacionalmente.
            
        *   Prohibición de realizar ciertos procedimientos clínicos de manera remota.
            
3.  **Alineación con acuerdos transfronterizos:**
    
    *   Estos elementos deben ser coherentes con las disposiciones planteadas en el documento “Propuesta de acuerdo transfronterizo entre países”. Dicho documento establece un marco de colaboración donde:
        
        *   Las responsabilidades legales entre países quedan claramente definidas.
            
        *   Se prioriza la interoperabilidad entre sistemas de información en salud para facilitar un flujo de información seguro y confiable.
            
        *   Se consideran las barreras legales y culturales que podrían influir en la práctica de telesalud.
  
### Alineación regional con marcos existentes
<br>
Esta guía de implementación para teleconsulta transfronteriza se ha diseñado considerando los marcos técnicos y semánticos de interoperabilidad promovidos en la región de América Latina y el Caribe. En particular, se ha tomado como referencia la [Guía de Implementación de LACPass](https://lacpass.racsel.org/index.html), impulsada por la Organización Panamericana de la Salud (OPS), con el objetivo de promover la compatibilidad con otras soluciones regionales y facilitar la integración de sistemas.

LACPass define un conjunto mínimo de perfiles y extensiones FHIR para representar conceptos fundacionales como `Patient`,  `Organization`, `Immunization` entre otros. Esta guía busca mantener alineación con dichas definiciones cuando es pertinente para asegurar la interoperabilidad técnica, semántica y organizacional entre países.


### Aspectos a considerar para comprender la Guía
<br>
Las siguientes secciones describen definiciones, interpretaciones y requisitos importantes aplicables a todos los artefactos utilizados en esta guía. Los verbos de conformidad - **SHALL** *(Debe)*, **SHOULD** *(Debería Si Condición)*, **MAY** *(Podría)* - utilizados en esta guía se definen en las reglas de conformidad de FHIR.

### Perfiles

Los perfiles contienen ciertos elementos que son importantes de comprender a la hora de usarlos para implementación


#### Vistas de los perfiles

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


### Definición del Conjunto Mínimo de Datos
<br>

El CMD definido para cada recurso se deja caracterizado por los elementos obligatorios y por la bandera **S** que significa *Must Support*. 

Los elementos obligatorios se especifican en la cardinalidad (valor mínimo o inicial 1). 

La existencia de un elemento o ruta marcada con **S** no determina la obligatoriedad de que un recurso generado contenga el elemento, pero define que los sistemas que producen o consumen el recurso **DEBEN** soportar el elemento, es decir, deben poder almacenarlo y procesarlo si el dato está presente.


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

### Vocabularios y uso de códigos

Vocabularios o terminología refiere a los valores codificados que se utilizan en varios elementos. 

Un conjunto de valores (ValueSet) establece un conjunto de códigos tomados de uno o más sistemas de codificación (CodeSystem).

El *binding* especifica la vinculación de un elemento con determinado ValueSet.

Como patrón general, para un valor codificable se esperan tres o cuatro elementos: sistema (URI del CodeSystem), código, display y la versión del sistema toda vez que resulte relevante.
Para los elementos de tipo code se utiliza el código solamente ya que el sistema está implicito (definido en el elemento).

Este ejemplo es un CodeableConcept que contiene un elemento Coding. El ejemplo muestra el sistema LOINC, el código y el display asignado por LOINC:
```
"code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11488-4",
        "display" : "Consult note"
      }
    ]
  }
```


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
