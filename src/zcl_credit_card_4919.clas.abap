CLASS zcl_credit_card_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_card_num IMPORTING iv_card_num TYPE string,
      get_card_num RETURNING VALUE(rv_card_num) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: card_num TYPE string.
ENDCLASS.



CLASS zcl_credit_card_4919 IMPLEMENTATION.

  METHOD set_card_num.
     me->card_num = iv_card_num.
  ENDMETHOD.

  METHOD get_card_num.
    rv_card_num = me->card_num.
  ENDMETHOD.

ENDCLASS.
