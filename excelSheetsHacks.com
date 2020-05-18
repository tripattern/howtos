# Excel Hacks

## Drop down
* Data Validation
* Range (X1:Z1) - horizontal or vertical

## Get value for specific cell
```
=(IF(B3=IF(ISBLANK(J3),"'",J3),$J$1,0))
=(IF(B3=IF(ISBLANK(I3),"'",I3),$I$1,IF(B3=IF(ISBLANK(J3),"'",J3),$J$1,0)))
=(IF(B3=IF(ISBLANK(H3),"'",H3),$H$3,IF(B3=IF(ISBLANK(I3),"'",I3),$I$1,IF(B3=IF(ISBLANK(J3),"'",J3),$J$1,0))))
=(IF(B3=IF(ISBLANK(G3),"'",G3),$G$3,IF(B3=IF(ISBLANK(H3),"'",H3),$H$3,IF(B3=IF(ISBLANK(I3),"'",I3),$I$1,IF(B3=IF(ISBLANK(J3),"'",J3),$J$1,0)))))
```
