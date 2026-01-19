CLASS zcl_lab_10_constructor_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA: log TYPE string.

    METHODS constructor.

    CLASS-METHODS class_cosntructor.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor_4919 IMPLEMENTATION.
  METHOD class_cosntructor.
    log = |{ log }-Static Constructor-->|.
  ENDMETHOD.

  METHOD constructor.
    log = |{ log }-Intance Constructor-->|.
  ENDMETHOD.

ENDCLASS.
