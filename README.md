Introducción

Esta aplicación web escrita en Ruby on Rails tiene como fin poder ver las distintas Clinícas que existen en Guápiles, así como servicios que ofrecen y de esta forma obtener cita en una clínica especifica vía web. Esto debido a que en este momento para hacer consultas de servicios médicos y obtener una cita en Guápiles es dificil, ya que solo se puede obtener a traves de diferentes consultas telefónicas.git push -u origin main

El objetivo de la aplicación es que sea simple de usar, que tanto Pacientes, como Doctores y Administradores puedan ingresar a la Aplicación, que los botones estén siempre visibles y accesibles y hacer uso de los recursos que la misma ofrece.

La aplicación hace una consulta a una Appi de clima y nos muestra la temperatura actual en una determinada ciudad, en nuestro caso estamos consultando Guápiles.

Los doctores, podran crear sus propias notas para cada paciente que atiendan; así como ver las citas que se le han sido asignadas.

Los administradores podrán ver datos estadisticos a traves de graficos, donde podrán ver la cantidad de citas que han sigo asignadas desde la aplicación para cada clínica, tambien serán los encargados de asignar credenciales a nuevos doctores, asì como ingresar nuevas clínicas.


Modelos

    patient: Modela los Paciente de nuestra aplicación. Hace uso de la gema devise para hacer un registro de Pacientes y tener login. Tiene muchas notas. has_many :notes

    doctor: Modela los Doctores de nuestra aplicación. Hace uso de la gema devise para hacer un registro de Doctores y tener login. Tiene muchas notas, muchas citas y muchos pacientes. has_many :notes, has_many :appointments,has_many :patients

    admin: Modela los Administradores de nuestra aplicación. Hace uso de la gema devise para hacer un registro de Administradores y tener login. 

    appointment: Son las citas de los pacientes. Tiene  belongs_to :patient, belongs_to :doctor, belongs_to :clinic

    clinic: Son las Clinicas disponibles.

    note: Son las notas de diferentes pacientes. Tiene  belongs_to :patient,  belongs_to :doctor
    
* Puedes revisar el módelo lógico en el siguiente link:
[diagrama](DIAGRAMA_FINAL.pdf)


Para ver las historas de Usuario visite:
https://trello.com/b/Uxjl17Ph/proyecto-final-citas-m%C3%A9dicas

Instrucciones de deployment, configuración y puesta en marcha.
Puede ingresar al link de Heroku, y una vez ahí navegar por el sitio.

Tambien puedes hacer clon del repositorio de Github, y una vez clonado, correr el seed para cargar datos ficticios para la aplicación.

Para loguearse como Administrador, use credenciales de Administrador
Para loguearse como Doctor, el administrador le debera proporcionar un email y contraseña
Para loguearse como Paciente, lo haces con tus credenciales o bien puedes crear un usuario, haciendo Sign up

# Credenciales 
Para Loguearse como administrador:
Clave para dministrador: 
    Email: admin@example.com
    Password: 123123

# Herramientas usadas
- HTML
- CSS/SCSS
- Ruby on Rails '2.7.2'
- Devise (auth)
- Faker gem for fill data
- Chartkick and highcharts-rails gems fog graphics
- Groupdate gemfor agrupated information
- Aws-sdk-s3 for management Environment Variables

