CLASS zcl_anu2_calc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS add
      IMPORTING iv_a          TYPE i
                iv_b          TYPE i
      RETURNING VALUE(rv_sum) TYPE i.

    METHODS divide
      IMPORTING iv_a             TYPE i
                iv_b             TYPE i
      RETURNING VALUE(rv_result) TYPE i
      RAISING   cx_sy_zerodivide.

    METHODS is_even
      IMPORTING iv_value       TYPE i
      RETURNING VALUE(rv_even) TYPE abap_bool.

    METHODS max_of
      IMPORTING iv_a          TYPE i
                iv_b          TYPE i
      RETURNING VALUE(rv_max) TYPE i.