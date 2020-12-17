*&---------------------------------------------------------------------*
*& Report YTEST_GCTS_BRANCH
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT YTEST_GCTS_BRANCH.

DATA: x   TYPE i,
      y   TYPE i,
      res TYPE i.

x = 15.
y = 5.

PERFORM result_add USING x
                         y
                   CHANGING res.
* Release-2 branch code
PERFORM result_sub USING x
                         y
                   CHANGING res.
* Release-2 branch code

WRITE: res.

INCLUDE ytest_gcts_branch_f01.