CLASS zcl_lab_05_flight_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS set_flight IMPORTING iv_carrid_id     TYPE /dmo/carrier_id
                                 iv_connection_id TYPE /dmo/connection_id
                       RETURNING VALUE(flag)      TYPE abap_bool.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_05_flight_4919 IMPLEMENTATION.
  METHOD set_flight.

    SELECT SINGLE FROM /dmo/flight AS Flight
     FIELDS Flight~*
     WHERE Flight~carrier_id EQ @iv_carrid_id
       AND Flight~connection_id EQ @iv_connection_id
     INTO @DATA(ls_flight).
    IF sy-subrc EQ 0.
      flag = abap_true.
    ELSE.
      flag = abap_false.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
