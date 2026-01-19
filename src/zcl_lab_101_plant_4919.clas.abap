CLASS zcl_lab_101_plant_4919 DEFINITION INHERITING FROM zcl_lab_100_company_4919
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_quotation TYPE string
                                  iv_products  TYPE string.

    METHODS set_company_code REDEFINITION.

    DATA: products TYPE string READ-ONLY.
*    DATA: company_atr TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_101_plant_4919 IMPLEMENTATION.
  METHOD constructor.

    super->constructor( iv_quotation = iv_quotation ).
    me->products = iv_products.

  ENDMETHOD.

  METHOD set_company_code.
    super->set_company_code( iv_company_code = iv_company_code ).
    me->company_code = 'ABCD'.
  ENDMETHOD.

ENDCLASS.
