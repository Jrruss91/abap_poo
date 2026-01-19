CLASS zcl_146_manage_cntr_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS check_user IMPORTING iv_user TYPE syuname
                       RAISING   zcx_145_auth_4919.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_146_manage_cntr_4919 IMPLEMENTATION.
  METHOD check_user.

    DATA: lx_auth TYPE REF TO zcx_145_auth_4919.

*    lx_auth = NEW #( textid = 'ZM' ).

    IF sy-uname EQ 'CB9980004919'.

      RAISE EXCEPTION TYPE zcx_145_auth_4919
        EXPORTING
          textid = zcx_145_auth_4919=>no_auth
*         previous =
          msgv1  = |{ sy-uname }|
          msgv2  = 'Edit Contract'
*         msgv3  =
*         msgv4  =
        .

    ELSE.

    ENDIF.

  ENDMETHOD.

ENDCLASS.
