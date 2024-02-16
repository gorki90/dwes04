# dwes04
El ejercicio de la UD04 está en la V2 dentro de api.

Enpoints utilizados:

/public/info/getskills -> Devuelve datos de las ramas de habilidades desde un archivo JSON.

/public/info/getskills/{id} -> Devuelve datos de las ramas de habilidades desde un archivo JSON cuando el id existe.

/public/build/builds -> Devuelve las builds almacenadas en la base de datos.

/public/build/builds/{id} -> Devuelve la build almacenada en la base de datos que coincida con el id pasado por parámetro.

/public/build/autor/{id}-> Devuelve los nombres y el autor de las builds creadas por un autor concreto de la base de datos.

/public/build/createbuild -> Introduce una nueva build a la base de datos mediante un formulario.

/public/build/updatebuild/{id} -> Modifica la build que coincida con la id pasada por parámetro en los campos que se quiera modificar y muestra pro pantalla el formulario rellenado con los datos actuales.

/public/build/deletebuild/{id} -> Elimina la build que coincida con el id pasado por parámetro.
