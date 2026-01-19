CLASS zcl_123_passenger_plane_4919 DEFINITION INHERITING FROM zcl_121_airplane_4919
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS airplane_type REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_123_passenger_plane_4919 IMPLEMENTATION.
  METHOD airplane_type.
    rv_airplane_type = 'Passenger Plane'.
  ENDMETHOD.

ENDCLASS.
