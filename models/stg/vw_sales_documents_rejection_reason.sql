Select
TVAG.MANDT as Client_Id
,TVAG.ABGRU as Reason_Rejection_Id
,TVAG.DRAGR as Not_Relevant_Printing
,TVAG.EP_OFF as Resource_Item_Open_Again
,TVAG.FK_ERL as Not_Relevant_Billing
,TVAG.KOWRR as Statistical_Values
,TVAG.FSH_PQR_SPEC as Relevant_Partial_Quantity_Rejection
,TVAG._FIVETRAN_DELETED as _Fivetran_Deleted
,TVAG._FIVETRAN_SYNCED as _Fivetran_Synced
, TVAGT.BEZEI as Description
from {{source('dhsaphana1_sapabap1', 'tvag')}}
Left Join {{source('dhsaphana1_sapabap1', 'tvagt')}} on 
    TVAG.MANDT = TVAGT.MANDT
    AND TVAG.ABGRU = TVAGT.ABGRU
and TVAGT.SPRAS= 'E'
where
TVAG.MANDT in '800'