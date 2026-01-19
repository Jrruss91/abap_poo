CLASS zcl_128_client_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_credit_card IMPORTING ir_credit_card TYPE REF TO zcl_credit_card_4919,
      get_credit_card RETURNING VALUE(rr_credit_card) TYPE REF TO zcl_credit_card_4919.
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: credit_card TYPE REF TO zcl_credit_card_4919.
ENDCLASS.



CLASS zcl_128_client_4919 IMPLEMENTATION.
  METHOD get_credit_card.
    rr_credit_card = me->credit_card.
  ENDMETHOD.

  METHOD set_credit_card.
    me->credit_card = ir_credit_card.
  ENDMETHOD.

ENDCLASS.
