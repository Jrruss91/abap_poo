CLASS zcl_lab_02_product_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS set_product IMPORTING product TYPE matnr.

    METHODS set_creationdate IMPORTING creation_date TYPE zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: product       TYPE matnr,
          creation_date TYPE zdate.

ENDCLASS.



CLASS zcl_lab_02_product_4919 IMPLEMENTATION.
  METHOD set_product.

    me->product = product.

  ENDMETHOD.

  METHOD set_creationdate.

    me->creation_date = creation_date.

  ENDMETHOD.

ENDCLASS.
