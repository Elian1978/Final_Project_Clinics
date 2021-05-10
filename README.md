Introducción

Esta aplicación web escrita en Ruby on Rails tiene como fin poder ver las distintas Clinícas que existen en Guçapiles, así como servicios que ofrecen y de esta forma obtener cita en una clínica especifica vía web. Esto debido a que en este momento para hacer consultas de servicios médicos y obtener una cita en Guápiles es dificil, ya que solo se puede obtener a traves de diferentes consultas telefónicas.

El objetivo de la aplicación es que sea simple de usar, que tanto Pacientes, como Doctores y Administradores puedan ingresar a la Aplicación, que los botones estén siempre visibles y accesibles y hacer uso de los recursos que la misma ofrece.


Modelos

    patient: Modela los Paciente de nuestra aplicación. Hace uso de la gema devise para hacer un registro de Pacientes y tener login. Tiene muchas notas. has_many :notes

    doctor: Modela los Doctores de nuestra aplicación. Hace uso de la gema devise para hacer un registro de Doctores y tener login. Tiene muchas notas, muchas citas y muchos pacientes. has_many :notes, has_many :appointments,has_many :patients

    admin: Modela los Administradores de nuestra aplicación. Hace uso de la gema devise para hacer un registro de Administradores y tener login. 

    appointment: Son las citas de los pacientes. Tiene  belongs_to :patient, belongs_to :doctor, belongs_to :clinic

    clinic: Son las Clinicas disponibles.

    note: Son las notas de diferentes pacientes. Tiene  belongs_to :patient,  belongs_to :doctor


Para ver las historas de Usuario visite:
https://trello.com/b/Uxjl17Ph/proyecto-final-citas-m%C3%A9dicas

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


