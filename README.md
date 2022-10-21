# README

PRUEBA TÉCNICA RUBY ON RAILS
Requisitos técnicos
* Ruby 3
* Ruby on Rails 7
* Hotwire: Turbo + Stimulus
* Bootstrap 5
* Tests
* Instrucciones para iniciar la aplicación
* Usar el menor número posible de dependencias externas
* Github / Gitlab / Bitbucket para subir el código de la prueba

# Historias de usuario
## HST-11 Listado de anuncios
Cómo usuario de la web
Quiero ver un listado de los últimos anuncios publicados
Para estar enterado de lo que se oferta
Requisitos:
* El listado deberá mostrar el título y la fecha de publicación del anuncio.
* El listado deberá estar paginado.
* Se mostrará como máximo 10 anuncios por página, siendo el primero el más reciente.
* Incluir botón para añadir un nuevo anuncio.
* Al pulsar sobre un anuncio se mostrará la vista detalle del mismo.
* Se podrá ordenar por fecha ascendente / descendente.

## HST-2 Añadir nuevo anuncio
Cómo usuario de la web
Quiero publicar un nuevo anuncio
Para vender mi producto
Requisitos:
* El formulario para añadir el nuevo anuncio deberá mostrarse en una vista diferente a la del listado.
* Los campos de un nuevo anuncio son título y descripción. La longitud mínima de ambos es 3 caracteres. La
longitud máxima para el título es 100 caracteres y para la descripción, 2000.
* Si el formulario contiene errores se deberá mostrar los campos marcados en rojo junto con un mensaje indicando el
error.
* La validación siempre se hará en el backend, nunca mediante javascript en el frontend.
* Si el anuncio se crea correctamente, se deberá mostrar la vista detalle de ese anuncio junto con un mensaje en el
que se indique que la creación se ha realizado correctamente.
* Se puede usar un editor de texto enriquecido para formatear mejor la descripción del anuncio.
* Se permitirá cancelar la operación y volver al listado de anuncios.

## HST-3 Vista detalle de un anuncio
Cómo usuario de la web
Quiero ver una vista detalle de un anuncio en la que se muestra más detalles sobre el mismo
Para conocer a fondo qué se está vendiendo.
Requisitos:
* Se deberá mostrar el título y la descripción del anuncio, así como un botón para editarlo y otro para borrarlo.
* Si el texto de la descripción es un texto enriquecido, deberá mostrarse correctamente.
* Se deberá poder volver al listado de anuncios.

## HST-4 Editar un anuncio
Cómo usuario de la web
Quiero editar un anuncio ya publicado
Para corregir posibles errores en sus datos
Requisitos:
* Desde la vista detalle de un anuncio se puede editar pulsando en el correspondiente botón.
* El formulario se mostrará en una página diferente, mostrándose el formulario relleno con los datos actuales.
* Al guardar se deberá mostrar la vista detalle de un anuncio junto con un mensaje indicando que se ha actualizado
correctamente.
* Se podrá cancelar la edición volviendo a la vista detalle de un anuncio.

## HST-5 Eliminar un anuncio
Cómo usuario de la web
Quiero eliminar un anuncio ya publicado
Para que ya no esté disponible
Requisitos:
* Al pulsar en el botón eliminar situado en la vista detalle del anuncio, se deberá mostrar un modal de bootstrap en el
que se pida confirmación de borrado. Ese modal podrá aceptarse, produciendo el borrado, o cancelarse, que no
haría nada. En ambos casos se tiene que cerrar el modal después de pulsar el botón.
* Si el modal se acepta, se deberá producir el borrado del anuncio y se redirigirá al listado de anuncios junto con un
mensaje que indique que el anuncio ha sido borrado.

## HST#6 Cambios en tiempo real
Cómo usuario de la web
Quiero ver si un anuncio se añade o se borra desde el listado de anuncios
Para no perderme ningún anuncio publicado o borrado
Requisitos:
* Estando en el listado de anuncios, si se publica desde otra pestaña / navegador un anuncio nuevo, se deberá
mostrar ese nuevo anuncio en el listado de forma automática sin necesidad de actualizar la página.
* Estando en el listado de anuncios, si se actualiza el título de un anuncio deberá actualizarse.
* Estando en el listado de anuncios, si se elimina un anuncio, deberá desaparecer del listado
