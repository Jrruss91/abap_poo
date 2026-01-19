CLASS zcl_126_plant_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS assign_company IMPORTING ir_co_company   TYPE REF TO zif_04_co_company_4919
                           RETURNING VALUE(rv_plant) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_126_plant_4919 IMPLEMENTATION.
  METHOD assign_company.

    rv_plant = |Plant was assigned to....{ ir_co_company->define_company( ) }|.

  ENDMETHOD.
ENDCLASS.
