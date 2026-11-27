class-pool .
*"* class pool for class ZCL_ANU2_CALC

*"* local type definitions
include ZCL_ANU2_CALC=================ccdef.

*"* class ZCL_ANU2_CALC definition
*"* public declarations
  include ZCL_ANU2_CALC=================cu.
*"* protected declarations
  include ZCL_ANU2_CALC=================co.
*"* private declarations
  include ZCL_ANU2_CALC=================ci.
endclass. "ZCL_ANU2_CALC definition

*"* macro definitions
include ZCL_ANU2_CALC=================ccmac.
*"* local class implementation
include ZCL_ANU2_CALC=================ccimp.

*"* test class
include ZCL_ANU2_CALC=================ccau.

class ZCL_ANU2_CALC implementation.
*"* method's implementations
  include methods.
endclass. "ZCL_ANU2_CALC implementation
