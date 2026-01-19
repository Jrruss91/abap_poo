CLASS zcl_lab_08_work_record DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS open_new_record IMPORTING iv_date       TYPE zdate
                                      iv_first_name TYPE string
                                      iv_last_name  TYPE string
                                      iv_surname    TYPE string OPTIONAL.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: date       TYPE zdate,
          first_name TYPE string,
          last_name  TYPE string,
          surname    TYPE string.

ENDCLASS.



CLASS zcl_lab_08_work_record IMPLEMENTATION.
  METHOD open_new_record.

    date       = iv_date.
    first_name = iv_first_name.
    last_name  = iv_last_name.

    IF NOT iv_surname IS SUPPLIED.
      surname    = iv_surname.
    ENDIF.


  ENDMETHOD.
ENDCLASS.
