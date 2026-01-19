CLASS zcl_lab_01_ejec_4919 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_4919 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lv_age TYPE i.

    DATA(lo_person) = NEW zcl_lab_04_person_4919( ).

    lo_person->set_age( iv_age = 34 ).

    lo_person->get_age(
      IMPORTING
        ev_age = lv_age
    ).

    out->write( lv_age ).

    "Metodo Funcional

    DATA(lo_flight) = NEW zcl_lab_05_flight_4919(  ).

    lo_flight->set_flight(
      EXPORTING
        iv_carrid_id     = |AA|
        iv_connection_id = 0015
      RECEIVING
        flag             = DATA(lv_flag)
    ).

    out->write( lv_flag ).

    " Referencia tipo de datos Clases.

    DATA(lo_elements) = NEW zcl_lab_06_elements_4919(  ).

    lo_elements->set_object( ).

    out->write(
      EXPORTING
        data   = lo_elements->ms_object
        name   = 'Datos de estructura' ).

    " Constantes de clases.

    " Escribir en consola las constantes usando el separador estático '=>'
    out->write( |Status OK:       { zcl_lab_06_elements_4919=>c_status_ok }| ).
    out->write( |Status Error:    { zcl_lab_06_elements_4919=>c_status_error }| ).
    out->write( |Intentos Max:    { zcl_lab_06_elements_4919=>c_max_attempts }| ).
    out->write( |Idioma Default:  { zcl_lab_06_elements_4919=>c_default_lang }| ).


    "READ-ONLY Restringir Acceso a Escritura.

    DATA(lo_student) = NEW zcl_lab_07_student_4919( ).

    lo_student->set_birth_date( ).
    out->write( lo_student->birth_date ).
*    lo_student->birth_date = '20260518'.
    out->write( lo_student->birth_date ).


    " Parametro opcional

    DATA(lo_work_record) = NEW zcl_lab_08_work_record(  ).

    lo_work_record->open_new_record(
      iv_date       = '20250517'
      iv_first_name = 'Javier'
      iv_last_name  = 'Hernández'
*      iv_surname    =
    ).

    " Autorreferencia POO

    DATA: lv_iban TYPE string.

    DATA(lo_account) = NEW zcl_lab_09_account_4919( ).

    lo_account->set_iban( EXPORTING iban = 'Referencia' ).

    lo_account->get_iban( IMPORTING iban = lv_iban ).

    out->write( lv_iban ).


    "Constructor

*    DATA(lo_constructor) = NEW zcl_lab_10_constructor_4919(  ).

*    out->write( zcl_lab_10_constructor_4919=>log ).

    zcl_lab_10_constructor_4919=>class_cosntructor( ).

    DATA(lo_constructor) = NEW zcl_lab_10_constructor_4919(  ).

    out->write( zcl_lab_10_constructor_4919=>log ).


  ENDMETHOD.

ENDCLASS.
