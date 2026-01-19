CLASS zcl_lab_103_exec_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_103_exec_4919 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(lo_atm) = NEW zcl_150_atm_4919(  ).


** 1.Expired Credit Card
*    out->write( 'Use Case: 1. Expired Credit Card' ).
*    out->write( lo_atm->withdraw_money( iv_card = '1111 2222 3333 4444' iv_amount = 30 ) ).
*
** 2.Insufficient balance in the current account
*    out->write( 'Use Case: 2. Insufficient balance in the current account' ).
*    out->write( lo_atm->withdraw_money( iv_card = '1111 2222 3333 5555' iv_amount = 100 ) ).
*
** 3. Withdraw money from the savings account
*    out->write( 'Use Case: 1. Expired Credit Card' ).
*    out->write( lo_atm->withdraw_money( iv_card = '1111 2222 3333 5555' iv_amount = 100 iv_savings_account = abap_true ) ).






    DATA(lo_manage_cntr) = NEW zcl_146_manage_cntr_4919(  ).
*    DATA lx_auth TYPE ref to zcx_145_auth_4919.

    DATA: lv_result TYPE i,
          lv_num1   TYPE i VALUE 10,
          lv_num2   TYPE i.

    TRY.
*        lo_manage_cntr->check_user( sy-uname ).

        lv_result = lv_num1 / lv_num2.

      CATCH zcx_145_auth_4919 INTO DATA(lx_auth).
        "handle exception
        out->write( lx_auth->get_text(  ) ).
      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).
        out->write( lx_zerodivide->get_text(  ) ).
        lv_num2 = 2.
        RETRY.
*      CATCH cx_root.
*        out->write( 'Exception handled' ).
    ENDTRY.

    out->write( |FINISH: { lv_result }| ).

*
*    DATA(lo_credit_card) = NEW zcl_credit_card_4919(  ).
*    DATA(lo_client) = NEW zcl_128_client_4919(  ).
*
*    lo_credit_card->set_card_num( '1111 2222 3333 4444' ).
*
*    lo_client->set_credit_card( lo_credit_card ).
*
*    out->write( lo_client->get_credit_card(  )->get_card_num(  ) ).


*    DATA: gt_co_companies TYPE STANDARD TABLE OF REF TO zif_04_co_company_4919,
*          go_co_company   TYPE REF TO zif_04_co_company_4919,
*          go_company_eu   TYPE REF TO zcl_125_company_eu_4919,
*          go_company_usa  TYPE REF TO zcl_124_company_eu_4919,
*          go_plant        TYPE REF TO zcl_126_plant_4919.
*
*
*    go_company_eu = NEW #(  ).
*    APPEND go_company_eu TO gt_co_companies.
*
*    go_company_usa = NEW #(  ).
*    APPEND go_company_usa TO gt_co_companies.
*
*    go_plant = NEW #(  ).
*
*    LOOP AT gt_co_companies INTO go_co_company.
*      out->write( go_co_company->define_company(  ) ).
*      out->write( go_plant->assign_company( go_co_company ) ).
*    ENDLOOP.
**    APPEND go_plant TO gt_co_companies.



*    DATA: gt_airplanes       TYPE STANDARD TABLE OF REF TO zcl_121_airplane_4919,
*          go_airplane        TYPE REF TO zcl_121_airplane_4919,
*          go_cargo_plane     TYPE REF TO zcl_122_cargo_plane_4919,
*          go_passenger_plane TYPE REF TO zcl_123_passenger_plane_4919.
*
*    go_cargo_plane = NEW #(  ).
*    APPEND go_cargo_plane TO gt_airplanes.
*
*    go_passenger_plane = NEW #(  ).
*    APPEND go_passenger_plane TO gt_airplanes.
*
*    LOOP AT gt_airplanes INTO go_airplane.
*      out->write( go_airplane->airplane_type(  ) ).
*    ENDLOOP.
*
*    DATA(lo_business_pr) = NEW zcl_116_business_pr_4919(  ).
*
*    lo_business_pr->get_factorial( EXPORTING iv_number = 5
*                                   IMPORTING ev_factorial = DATA(lv_factorial) ).
*
*    out->write( lv_factorial ).



*    DATA(lo_screen) = NEW zcl_115_screen_4919( 22 ).
*
*    out->write( lo_screen->zif_02_eu_unit_4919~dimensions_centimeters( ) ).
*    out->write( lo_screen->zif_03_eu_unit_4919~dimesions_inches(  ) ).

*    DATA(lo_animal) = NEW zcl_lab_104_animal_4919(  ).
*    DATA(lo_lion)   = NEW zcl_lab_lion_4919(  ).
*
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).
*
*    lo_animal = lo_lion.
*    out->write( 'Narrowing Casting (Up Cast)' ).
*    out->write( lo_animal->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).
*
*
*    TRY.
*        lo_lion ?= lo_animal.
*      CATCH cx_sy_move_cast_error.
*         out->write( 'Casting error' ).
*    ENDTRY.
*
*    out->write( 'Widening Casting (Up Cast)' ).
*    out->write( lo_animal->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).


*    DATA(lo_company)          = NEW zcl_lab_100_company_4919( iv_quotation = 'Q1' ).
*    DATA(lo_plant)            = NEW zcl_lab_101_plant_4919( iv_quotation = 'Q2' iv_products = 'P1' ).
*    DATA(lo_storage_location) = NEW zcl_lab_102_storage_4919( iv_quotation = 'Q3' iv_products = 'P2' ).
*
*
*    lo_company->set_company_code( '1234' ).
*    lo_company->set_currency( 'USD' ).
*
*    lo_company->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code) ).
*    lo_company->get_currency( IMPORTING ev_currency = DATA(lv_currency) ).
*
*    out->write( |Company { lv_company_code }-{ lv_currency }-{ lo_company->quotation }| ).
*
*    lo_plant->set_company_code( '5678' ).
*    lo_plant->set_currency( 'EUR' ).
*
*    lo_plant->get_company_code( IMPORTING ev_company_code = lv_company_code ).
*    lo_plant->get_currency( IMPORTING ev_currency = lv_currency ).
*
*    out->write( |Plant { lv_company_code }-{ lv_currency }-{ lo_plant->quotation }-{ lo_plant->products }| ).
*
*    lo_storage_location->set_company_code( '0987' ).
*    lo_storage_location->set_currency( 'AED' ).
*
*    lo_storage_location->get_company_code( IMPORTING ev_company_code = lv_company_code ).
*    lo_storage_location->get_currency( IMPORTING ev_currency = lv_currency ).
*
*    out->write( |Storage { lv_company_code }-{ lv_currency }-{ lo_storage_location->quotation }-{ lo_storage_location->products }| ).
*

  ENDMETHOD.
ENDCLASS.
