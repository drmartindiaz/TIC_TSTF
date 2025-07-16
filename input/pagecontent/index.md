### Introducción
<br>

La presente guía FHIR se enmarca en el desarrollo de servicios de telesalud con alcance internacional, abordando específicamente el caso de uso de **tele-interconsultas transfronterizas** entre profesionales de la salud. 

Este tipo de práctica implica la solicitud de una segunda opinión médica —frecuentemente especializada— por parte de un profesional que atiende a un paciente en un país, dirigida a un colega ubicado en otro país. Dicha interacción puede realizarse de manera **asincrónica** (modelo _store and forward_) o **sincrónica** (modelo de servicio interactivo), y tiene como objetivo mejorar la **calidad y oportunidad de la atención médica**, particularmente en contextos donde se requieren capacidades diagnósticas o terapéuticas de alta complejidad que no se encuentran localmente disponibles.

En este escenario, el **profesional remitente** (quien solicita la consulta) suele ser un médico clínico que se encuentra a cargo de la atención directa del paciente en un centro de salud u hospital. El **profesional consultado** es habitualmente un médico especialista que trabaja en una institución de mayor complejidad en otro país. Este modelo se aplica a diversos dominios clínicos, como la oncología (_tele-oncología_) o la atención primaria de la salud (_tele-APS_), y permite fortalecer redes internacionales de colaboración clínica, apoyar la toma de decisiones en tiempo y forma, e involucrar, cuando sea pertinente, a las familias y/o cuidadores en el proceso de atención.

El objetivo principal de esta guía es **proporcionar una especificación técnica estandarizada basada en FHIR (Fast Healthcare Interoperability Resources)** que facilite la interoperabilidad de los sistemas involucrados en estos procesos, garantizando la **seguridad, confidencialidad y trazabilidad** de la información intercambiada entre los equipos de salud participantes.

A través de esta implementación, se busca no solo mejorar los procesos clínicos, sino también brindar soporte a las áreas administrativas responsables de gestionar las interconsultas (por ejemplo, Oficinas de Comunicación a Distancia – OCD), promoviendo una gestión más eficiente y coordinada.

Este documento establece los requerimientos funcionales y técnicos necesarios para la implementación de soluciones FHIR que respalden este tipo de escenarios, incluyendo tanto el flujo de información clínica como las funciones administrativas. Se contemplan distintas tecnologías habilitantes, desde plataformas básicas hasta soluciones interoperables avanzadas que permiten el uso de servicios web y el intercambio estructurado de documentos clínicos.

### Cómo leer esta Guía
<br>

Esta Guía sigue un formato especificado para **FHIR R4**, y se divide en varias paginas que proporcionan información de **Casos de Telesalud Transfronteriza** y la explicación técnica de los **Artefactos Generados**. El menú se encuentra en la parte superior en la *barra de menú*.
<br>

* [Home](index.html): Provee la introducción acerca de esta guía.
* [Generalidades](Aspectos-Generales.html): Se especifican algunos conceptos importantes para poder comprender la lectura de los artefactos con el fin de hacer uso de la guía con objetivos de implementación.
* [Casos de Uso](CasosDeUso.html): Define los casos de uso contemplados en esta guía.
* [Operaciones](operaciones.html): Define las operaciones más usadas para el intercambio, manejo, consulta, actualización, etc. de Recursos Generados en un servidor.
* [Artefactos](artifacts.html): Estas páginas proveen descripciones detalladas y definiciones formales para los artefactos FHIR definidos en la guía.
<br>

### Perfiles de la Guía

Cada perfil define los elementos obligatorios mínimos, extensiones y requerimientos terminológicos que **DEBEN** cumplirse. Para cada perfil, estos requerimientos se declaran con un sencillo resumen narrativo.

También se presenta una tabla jerárquica con una vista lógica del contenido como *Snapshot* y *Differential*. Para cada perfil también expresamos el conjunto de interacciones FHIR Restful asociadas (búsquedas, operaciones u otras interacciones)

### Requerimientos de Conformidad

Los requerimientos de conformidad describen las expectativas sobre la funcionalidad de las aplicaciones servidor/cliente, identificando los perfiles específicos y las interacciones que deben implementar. Los perfiles individuales identifican los requerimientos estructurales y terminológicos. Las definiciones de parámetros de búsqueda y operaciones especifican cómo son implementados por los servidores.

###	 Autores y Colaboradores

- Autores de la guia:
  - **Martín Diaz Maffni (IECS)** [mdiaz@iecs.org.ar](mailto:mdiaz@iecs.org.ar)
  - **Inés Otegui (IECS)** [inesmotegui@gmail.com](mailto:inesmotegui@gmail.com)
  - **Alejandro Lopez Osornio (IECS)** [alopezosornio@iecs.org.ar](mailto:alopezosornio@iecs.org.ar)
  - **Diego Kaminker (HL7)** [kaminker.diego@gmail.com](mailto:kaminker.diego@gmail.com)
  

### Dependencias

{% include dependency-table.xhtml %}

### Analisis de versiones cruzadas

{% include cross-version-analysis.xhtml %}

### Perfiles globales

{% include globals-table.xhtml %}

### Declaracion de propiedad intelectual

{% include ip-statements.xhtml %}


### Recursos a Disposición

[HL7 Internacional](http://hl7.org)

[FHIR R4](http://hl7.org/fhir/R4)

[FHIR Shorthand Documentation](https://build.fhir.org/ig/HL7/fhir-shorthand) 

[FHIR Shorthand documentation code repository](https://github.com/HL7/fhir-shorthand)

[SUSHI code repository](https://github.com/FHIR/sushi)

[Zulip](https://chat.fhir.org) channel: #shorthand

