CLASS zcl_149_bank_logali DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS validate_account IMPORTING iv_card            TYPE string
                                       iv_amount          TYPE i
                                       iv_savings_account TYPE abap_bool OPTIONAL
                             CHANGING  cv_log             TYPE string
                             RAISING   zcx_expired_credit_card_4919
                                       RESUMABLE(zcx_148_insufficient_sald_4919).
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_149_bank_logali IMPLEMENTATION.

  METHOD validate_account.

    cv_log = |{ cv_log }...Checking card validity{ cl_abap_char_utilities=>newline }|.

    IF iv_card EQ '1111 2222 3333 4444'.

      RAISE EXCEPTION TYPE zcx_expired_credit_card_4919
        EXPORTING
          textid = zcx_expired_credit_card_4919=>car_expired.

    ENDIF.

    cv_log = |{ cv_log }...Checking account balance{ cl_abap_char_utilities=>newline }|.

    IF iv_amount GT 50.

      IF iv_savings_account EQ abap_true.

        cv_log = |{ cv_log }...Resumable exception Insufficient Balance{ cl_abap_char_utilities=>newline }|.
        RAISE RESUMABLE EXCEPTION TYPE zcx_148_insufficient_sald_4919
          EXPORTING
            textid = zcx_148_insufficient_sald_4919=>insufficient_balance.

      ELSE.
        cv_log = |{ cv_log }...Exception Insufficient Balance{ cl_abap_char_utilities=>newline }|.
        RAISE RESUMABLE EXCEPTION TYPE zcx_148_insufficient_sald_4919
          EXPORTING
            textid = zcx_148_insufficient_sald_4919=>insufficient_balance.
      ENDIF.


    ENDIF.

  ENDMETHOD.

ENDCLASS.
