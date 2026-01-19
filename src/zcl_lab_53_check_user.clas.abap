CLASS zcl_lab_53_check_user DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS check_user IMPORTING user TYPE syuname
                       RAISING   zcx_lab_52_operations_4919.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_53_check_user IMPLEMENTATION.
  METHOD check_user.

    IF sy-uname EQ 'CB9980004919'.

      RAISE EXCEPTION TYPE zcx_lab_52_operations_4919
        EXPORTING
          textid = zcx_lab_52_operations_4919=>no_access
*         previous =
          msgv1  = |{ sy-uname }|
          msgv2  = 'No access'
*         msgv3  =
*         msgv4  =
        .

    ELSE.

    ENDIF.



  ENDMETHOD.

ENDCLASS.
