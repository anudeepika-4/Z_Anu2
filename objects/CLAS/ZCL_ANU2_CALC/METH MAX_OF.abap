  METHOD max_of.
    rv_max = COND #( WHEN iv_a >= iv_b THEN iv_a ELSE iv_b ).
  ENDMETHOD.