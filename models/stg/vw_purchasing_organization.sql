Select
T024E.EKORG as Purchasing_Organization_Id
,T024E.MANDT as Client_Id
,T024E.EKOTX as Description
,T024E.TXFUS as Text_Name_Footer_Lines
,T024E.TXGRU as Text_Name_Complimentary_Close
,T024E.BPEFF as Effective_Price
,T024E.TXKOP as Text_Name_Letter_Heading
,T024E.KALSE as Purorg_Schema_Group_Id
,T024E.TXADR as Text_Name_Sender_Line
,T024E.MKALS as Market_Price_Schema_Id
,T024E.BUKRS as Company_Code_Id
,T024E.BUKRS_NTR as Cocdsubsstlmt_Id
,T024E._FIVETRAN_DELETED as _Fivetran_Deleted
,T024E._FIVETRAN_SYNCED as _Fivetran_Synced
from {{source('dhsaphana1_sapabap1', 't024e')}}
where
T024E.MANDT in '800'