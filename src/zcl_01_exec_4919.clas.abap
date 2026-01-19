CLASS zcl_01_exec_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_4919 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(lo_operations) = NEW zcl_lab_53_check_user(  ).


    DATA: lv_result TYPE i,
          lv_num1   TYPE i VALUE 10,
          lv_num2   TYPE i.

    TRY.
*        lo_operations->check_user( user = sy-uname ).

        lv_result = lv_num1 / lv_num2.

*      CATCH zcx_lab_52_operations_4919 INTO DATA(lcx_operation).
*
*        out->write( lcx_operation->get_text(  ) ).

      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).

        out->write( lx_zerodivide->get_text(  ) ).

        lv_num2 = 2.

        RETRY.

    ENDTRY.


*    DATA: lo_contract TYPE REF TO zcl_02_contract_4919.
*
*    CREATE OBJECT lo_contract.
*
*    lo_contract = NEW #(  ).

*    DATA(lo_contract) = NEW zcl_02_contract_4919(  ).
*    DATA(lo_contract2) = NEW zcl_02_contract_4919(  ).
*
*    DATA lv_process TYPE string.
*
*    DATA: lt_address TYPE zcl_02_contract_4919=>tty_adrress,
*          ls_address TYPE zcl_02_contract_4919=>ty_address.
*
*    IF lo_contract IS BOUND.
*
*      lo_contract->set_client(
*        EXPORTING
*          iv_client   = 'Logali'
*          iv_location = space
*        IMPORTING
*          ev_status   = DATA(lv_status)
*        CHANGING
*          cv_process  = lv_process
*      ).
*
*      lo_contract->get_client( IMPORTING ev_client = DATA(lv_client) ).
*
*      lo_contract->region = 'EU'.
*
*      DATA(lv_client_name) = lo_contract->get_client_name( iv_client_id   = |02| ).
*
*      IF NOT lo_contract->get_client_name( iv_client_id   = |02| ) IS INITIAL.
*        out->write( lo_contract->get_client_name( iv_client_id   = |02| ) ).
*      ENDIF.
*
*
*    ENDIF.
*
*    zcl_02_contract_4919=>set_cntr_type( 'Construction' ).
*
*    zcl_02_contract_4919=>get_cntr_type(
*      IMPORTING
*        ev_cntr_type = DATA(lv_cntr_type)
*    ).
*
*    zcl_02_contract_4919=>currency = zcl_02_contract_4919=>cs_currency-usd."'USD'.
*
*    out->write( zcl_02_contract_4919=>currency ).
*
*    out->write( |{ lv_client }-{ lv_status }-{ lv_process }-{ lo_contract->region }| ).
*
*    out->write( zcl_02_contract_4919=>company ). " = 'Coca-Cola'.

  ENDMETHOD.
ENDCLASS.
