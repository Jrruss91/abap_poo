CLASS zcl_lab_06_elements_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  " NUEVO: Definición de 4 constantes
    CONSTANTS c_status_ok    TYPE string VALUE 'SUCCESS'.
    CONSTANTS c_status_error TYPE string VALUE 'ERROR'.
    CONSTANTS c_max_attempts TYPE i      VALUE 3.
    CONSTANTS c_default_lang TYPE string VALUE 'ES'.

    " Definición del Tipo
    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.
*           tty_elem_objects TYPE STANDARD TABLE OF ty_elem_objects.

    DATA: ms_object TYPE ty_elem_objects.

    METHODS set_object."IMPORTING ms_object TYPE ty_elem_objects.

  PROTECTED SECTION.


  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_lab_06_elements_4919 IMPLEMENTATION.

  METHOD set_object.

    ms_object = VALUE #( class     = 'zcl_lab_06_elements'
                         instance  = 'Objeto 01'
                         reference = 'Ref a Estructura' ).

  ENDMETHOD.

ENDCLASS.
