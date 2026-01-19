CLASS zcl_115_screen_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: zif_02_eu_unit_4919,
      zif_03_eu_unit_4919.

    METHODS constructor IMPORTING iv_ent_unit TYPE zfloat.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: en_unit TYPE zfloat.
ENDCLASS.



CLASS zcl_115_screen_4919 IMPLEMENTATION.


  METHOD zif_02_eu_unit_4919~dimensions_centimeters.
    rv_unit = me->en_unit * '2.54'.
  ENDMETHOD.
  METHOD zif_03_eu_unit_4919~dimesions_inches.
    rv_unit = me->en_unit.
  ENDMETHOD.

  METHOD constructor.
    me->en_unit = iv_ent_unit.
  ENDMETHOD.

ENDCLASS.
