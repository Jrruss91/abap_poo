CLASS zcl_124_company_eu_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_04_co_company_4919.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_124_company_eu_4919 IMPLEMENTATION.

  METHOD zif_04_co_company_4919~define_company.
    rv_company = 'Company USA....'.
  ENDMETHOD.

ENDCLASS.
