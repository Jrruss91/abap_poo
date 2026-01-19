CLASS zcl_lab_07_student_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: birth_date TYPE zdate READ-ONLY.

    METHODS set_birth_date.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_07_student_4919 IMPLEMENTATION.
  METHOD set_birth_date.

    birth_date = '20260517'.

  ENDMETHOD.

ENDCLASS.
