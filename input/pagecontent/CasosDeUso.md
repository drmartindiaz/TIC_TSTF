### Casos de uso

El objetivo principal del caso de uso Tele-interconsulta transfronteriza es la creación de un sistema de apoyo a la toma de decisiones sobre el oportuno diagnóstico, pronóstico y tratamiento de enfermedades oncológicas u otras, buscando soporte en especialistas de otros países. Al mismo tiempo, se puede involucrar a las familias y/o cuidadores de pacientes en el proceso de toma de decisiones.

La tele-interconsulta transfronteriza implica la solicitud de una segunda opinión médica —frecuentemente especializada— por parte de un profesional que atiende a un paciente en un país, dirigida a un colega ubicado en otro país. Este modelo puede aplicarse a diversos dominios clínicos como la oncología (Tele-Oncología) o la atención primaria de la salud (Tele-APS).

#### Tele-Oncología

Tele-Oncología contempla el conjunto de servicios de telemedicina y otras intervenciones de telesalud aplicables al ámbito de la oncología. El caso de uso de Tele-interconsulta transfronteriza aplicada a oncología se centra en la realización de **tele-interconsultas transfronterizas** en las que el profesional consultado es un **especialista en oncología**, o bien un **equipo multidisciplinario especializado** en esta área (por ejemplo, oncología clínica, cirugía oncológica, radioterapia, cuidados paliativos, entre otros). 

Estas interconsultas tienen como finalidad principal apoyar al profesional remitente en el **diagnóstico oportuno, estadificación, elección de tratamiento y seguimiento** de pacientes con enfermedades oncológicas, especialmente en contextos donde existen limitaciones de acceso a especialistas o a centros de alta complejidad. Este modelo favorece la equidad en el acceso a la atención oncológica y promueve la continuidad del cuidado a través de redes de colaboración internacional.

#### Tele-APS

Tele-APS refiere a los servicios de telemedicina y otras intervenciones de telesalud en el **ámbito de la atención primaria de la salud (APS)**. En el caso de uso de Tele-interconsulta transfronteriza aplicada a APS, el profesional solicitante es un integrante del primer nivel de atención (por ejemplo, médico/a generalista, médico/a de familia, enfermero/a o agente sanitario), quien realiza una **tele-interconsulta transfronteriza** con un profesional o equipo que se desempeña habitualmente en un centro de **segundo nivel de atención o de mayor complejidad**. 

Las tele-interconsultas en APS pueden abordar una amplia gama de condiciones clínicas —desde enfermedades crónicas hasta síntomas agudos complejos— y tienen por objetivo **fortalecer la capacidad resolutiva del primer nivel**, mejorar la coordinación de la atención y reducir derivaciones innecesarias. 

Asimismo, permiten desarrollar procesos de atención compartida y facilitar la toma de decisiones clínicas en contextos rurales, remotos o de difícil acceso.

### Actores y proceso
Una Tele-interconsulta transfronteriza puede realizarse de manera **asincrónica** (modelo _store and forward_) o **sincrónica** (modelo de servicio interactivo). 
Esta guía aborda la **Tele-interconsulta transfronteriza asincrónica** donde intervienen los siguientes actores:

 * **Profesional remitente** quien genera y envía la solicitud de interconsulta utilizando un **HIS origen**

 * **Profesional consultado** quien recibe y responde la interconsulta utilizando un **HIS receptor**

Debe entenderse por *HIS Origen* y *HIS Receptor* los sistemas de información sanitarios que intervienen en las operaciones de teleinterconsulta trasnfronteriza.
En este esquema simple no incluimos un eventual sistema coordinador de teleinterconsutlas transfronterizas que podría actuar como mediador o ehub de las operaciones.

El proceso de interacción entre sistemas se inicia cuando el HIS origen envía la solicitud de Tele-interconsulta transfronteriza y finaliza cuando el HIS receptor devuelve la respuesta a la interconsulta. Se contempla también el rechazo de la solicitud si la interconsulta no puede realizarse, y la posibilidad de comunicación adicional si el profesional consultado necesita más información para elaborar la respuesta.  
Para la trazabilidad administrativa del flujo de trabajo se propone utilizar tareas (recurso Task). Una tarea principal en respuesta a la solicitud de Tele-interconsulta, y subtareas opcionales para el pedido y envío de información adicional.

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="TICTFproc.png"> 
  <p>Diagrama de Proceso TICTF general</p>
</div>
<br>