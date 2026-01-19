CLASS zcl_117_test_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT       "Medium / Long
  RISK LEVEL HARMLESS. "Dangerous / Critical

  PUBLIC SECTION.
    "! @testing zcl_116_business_pr_4919
    METHODS factorial_test FOR TESTING.

  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS setup.
    METHODS teardown.

    DATA: mo_cut TYPE REF TO zcl_116_business_pr_4919. "Cut - Class Under Test
ENDCLASS.



CLASS zcl_117_test_4919 IMPLEMENTATION.

  METHOD setup.
    mo_cut = NEW zcl_116_business_pr_4919(  ).
  ENDMETHOD.

  METHOD factorial_test.

    "Given
    DATA(lv_number_ut) = 4.
    DATA lv_factorial_ut TYPE i.

    "When
    mo_cut->get_factorial( EXPORTING iv_number = lv_factorial_ut
                           IMPORTING ev_factorial = lv_factorial_ut ).

    "Then
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_factorial_ut
        exp                  =  24 ).

  ENDMETHOD.

  METHOD teardown.
    FREE mo_cut.
  ENDMETHOD.

ENDCLASS.
