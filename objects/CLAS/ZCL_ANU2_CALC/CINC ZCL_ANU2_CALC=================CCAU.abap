CLASS ltc_calc DEFINITION FINAL
  FOR TESTING
  RISK LEVEL HARMLESS
  DURATION SHORT.

  PRIVATE SECTION.
    DATA mo_cut TYPE REF TO zcl_anu2_calc.

    METHODS setup.
    METHODS add_two_numbers   FOR TESTING.
    METHODS add_negative      FOR TESTING.
    METHODS divide_ok         FOR TESTING.
    METHODS divide_by_zero    FOR TESTING.
    METHODS even_number       FOR TESTING.
    METHODS odd_number        FOR TESTING.
    METHODS max_first_bigger  FOR TESTING.
    METHODS max_second_bigger FOR TESTING.
ENDCLASS.


CLASS ltc_calc IMPLEMENTATION.

  METHOD setup.
    mo_cut = NEW #( ).
  ENDMETHOD.


  METHOD add_two_numbers.
    cl_abap_unit_assert=>assert_equals( act = mo_cut->add( iv_a = 2 iv_b = 3 )
                                        exp = 5
                                        msg = '2 + 3 should be 5' ).
  ENDMETHOD.


  METHOD add_negative.
    cl_abap_unit_assert=>assert_equals( act = mo_cut->add( iv_a = -4 iv_b = 1 )
                                        exp = -3
                                        msg = '-4 + 1 should be -3' ).
  ENDMETHOD.


  METHOD divide_ok.
    cl_abap_unit_assert=>assert_equals( act = mo_cut->divide( iv_a = 10 iv_b = 2 )
                                        exp = 5
                                        msg = '10 / 2 should be 5' ).
  ENDMETHOD.


  METHOD divide_by_zero.
    TRY.
        mo_cut->divide( iv_a = 1 iv_b = 0 ).
        cl_abap_unit_assert=>fail( msg = 'Division by zero should raise an exception' ).
      CATCH cx_sy_zerodivide.
        " expected
    ENDTRY.
  ENDMETHOD.


  METHOD even_number.
    cl_abap_unit_assert=>assert_true( act = mo_cut->is_even( 4 )
                                      msg = '4 should be even' ).
  ENDMETHOD.


  METHOD odd_number.
    cl_abap_unit_assert=>assert_false( act = mo_cut->is_even( 7 )
                                       msg = '7 should not be even' ).
  ENDMETHOD.


  METHOD max_first_bigger.
    cl_abap_unit_assert=>assert_equals( act = mo_cut->max_of( iv_a = 9 iv_b = 3 )
                                        exp = 9
                                        msg = 'Max of 9 and 3 should be 9' ).
  ENDMETHOD.


  METHOD max_second_bigger.
    cl_abap_unit_assert=>assert_equals( act = mo_cut->max_of( iv_a = 2 iv_b = 8 )
                                        exp = 8
                                        msg = 'Max of 3 and 8 should be 8' ).
  ENDMETHOD.

ENDCLASS.
