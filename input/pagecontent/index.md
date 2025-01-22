### Versión de Desarrollo
<br>

Esta Guía se encuentra en definición aún

### Cómo leer esta Guía
<br>

Esta Guía sigue un formato especificado para **FHIR R4**, y se divide en varias paginas que proporcionan información de **Casos de Telesalud Transfronteriza** y la explicación técnica de los **Artefactos Generados**. El menú se encuentra en la parte superior en la *barra de menú*.
<br>

* [Home](index.html): Provee la introducción acerca de esta guía.
* [Generalidades](Aspectos-Generales.html): Se especifican algunos conceptos importantes para poder comprender la lectura de los artefactos con el fin de hacer uso de la guía con objetivos de implementación.
* Operaciones: Define las operaciones más usadas para el intercambio, manejo, consulta, actualización, etc. de Recursos Generados en un servidor.
* Artefactos: Estas páginas proveen descripciones detalladas y definiciones formales para los artefactos FHIR definidos en la guía.
<br>

### Perfiles de la Guía

Cada perfil define los elementos obligatorios mínimos, extensiones y requerimientos terminológicos que **DEBEN** cumplirse. Para cada perfil, estos requerimientos se declaran con un sencillo resumen narrativo.

También se presenta una tabla jerárquica con una vista lógica del contenido como *Snapshot* y *Differential*. Para cada perfil también expresamos el conjunto de interacciones FHIR Restful asociadas (búsquedas, operaciones u otras interacciones)

* [Requerimiento de Interconsulta TF](StructureDefinition-TICF-ServiceRequest.html)
* [Respuesta de Interconsutla TF](StructureDefinition-tictf-task.html)

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

[FHIR R4](http://hl7.org/fhir/)

[FHIR Shorthand Documentation](https://build.fhir.org/ig/HL7/fhir-shorthand) 

[FHIR Shorthand documentation code repository](https://github.com/HL7/fhir-shorthand)

[SUSHI code repository](https://github.com/FHIR/sushi)

[Zulip](https://chat.fhir.org) channel: #shorthand

