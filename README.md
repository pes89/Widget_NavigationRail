# widget_navigationrail

Es un proyecto para probar el widget NavigationRail

El proyecto se puede descargar desde:


## Getting Started

La información sobre el widget se puede encontrar en:
 https://api.flutter.dev/flutter/material/NavigationRail-class.html

Es un menu de navegación lateral, con la misma funcionalidad que la de BottomNavigationBar.

Debe estar dentro de un Widget Row()
    Por un lado está el widget NavigationRail y por el otro el Container

## Parametros
Tiene dos parametros "requeridos"
 -selectedIndex: que será un "int" para la gestion del indice
 -destinations: es una lista de "NavigationRailDestination"

 También utiliza una devolucion de llamada OnDestinationSelected al que se llama cada vez que se selecciona un elemento de navegación.

 El resto de parametros también nos dan distintas funcionalidades

  -backgroundColor: Para el fondo del NavigationRail
  -extended = false : Se suele usar junto con el widget "GestureDetector" para ampliar la barra de navegación
  -leading: Nos permite añadir un widget encima de los destinos
  -trailing: Nos permite añadir un widget encima de los destinos
  -elevation: Le da un efecto de elevación a los iconos
  -groupAlignment: Agrupa los iconos
  -labelType: Mostrara el texto junto al icono (siempre, nunca o cuando se seleccione)
  -minWidth: Podemos añadir un minimo de grosor
  -minExtendedWidth: Podemos añadir un minimo de grosor cuando nuestro widget este extendido

  Los siguientes parametros son para modificar de forma general. Se pueden modificar individualmente dentro de cada uno de los destinos / NavigationRailDestination
              
    -unselectedLabelTextStyle: El estilo del texto cuando no este seleccionado
    -selectedLabelTextStyle: El estilo del texto cuando este seleccionado
    -unselectedIconTheme: El tema de los iconos cuando no están seleccionados
    -selectedIconTheme: El tema de los iconos cuando no están seleccionados

## NavigationRailDestination
    De cada destino podemos añadir los iconos y las etiquetas:
              icon
              selectedIcon
              label
  


