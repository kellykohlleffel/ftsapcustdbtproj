Select
EKET.MANDT as Client_Id
,EKET.EBELN as Purchasing_Document_Id
,EKET.EBELP as Purchasing_Document_Item_Id
,EKET.ETENR as Delivery_Schedule_Line_Counter_Id
,{{ date_case_gen('EKET.EINDT','Item_Delivery_Date')}}
,{{ date_case_gen('EKET.SLFDT','Stat_Rel_Del_Date')}}
,EKET.LPEIN as Category_Delivery_Date_Id
,EKET.MENGE as Scheduled_Quantity
,EKET.AMENG as Previous_Quantity
,EKET.WEMNG as Quantity_Goods_Received
,EKET.WAMNG as Issued_Quantity
,EKET.UZEIT as Delivery_Date_Spot_Tim
,EKET.BANFN as Purchase_Requisition_Number
,EKET.BNFPO as Item_Requisition_Id
,EKET.ESTKZ as Creation_Indicator
,EKET.QUNUM as Number_Quota_Arrangement
,EKET.QUPOS as Quota_Arrangement_Item
,EKET.MAHNZ as No_Rem_Expediters
,{{ date_case_gen('EKET.BEDAT','Order_Schedule_Line_Date')}}
,EKET.RSNUM as Reservation_Id
,EKET.SERNR as Bom_Explosion_Number_Id
,EKET.FIXKZ as Schedule_Line_Is_Fixed
,EKET.GLMNG as Qty_Delivered
,EKET.DABMG as Quantity_Reduced_Mrp
,EKET.CHARG as Batch_Id
,EKET.LICHA as Vendor_Batch_Number
,EKET.CHKOM as Components
,EKET.VERID as Production_Version_Id
,EKET.ABART as Release_Type
,EKET.MNG02 as Committed_Quantity
,{{ date_case_gen('EKET.DAT01','Committed_Date')}}
,{{ date_case_gen('EKET.ALTDT','Previous_Delivery_Date')}}
,EKET.AULWE as Route_Schedule_Id
,{{ date_case_gen('EKET.MBDAT','Material_Availability_Date')}}
,EKET.MBUHR as Matl_Staging_Tim
,{{ date_case_gen('EKET.LDDAT','Loading_Date')}}
,EKET.LDUHR as Loading_Tim
,{{ date_case_gen('EKET.TDDAT','Transportation_Planning_Date')}}
,EKET.TDUHR as Transp_Plan_Tim
,{{ date_case_gen('EKET.WADAT','Goods_Issue_Date')}}
,EKET.WAUHR as Goods_Issue_Tim
,{{ date_case_gen('EKET.ELDAT','Goods_Receipt_End_Date')}}
,EKET.ELUHR as Goods_Receipt_End_Tim
,EKET.ANZSN as Number_Serial_Numbers
,EKET.NODISP as Reservation_Purc_Req
,EKET.GEO_ROUTE as Geographical_Route
,EKET.ROUTE_GTS as Gts_Route_Code
,EKET.GTS_IND as Goods_Traffic_Type
,EKET.TSP as Forwarding_Agent_Id
,EKET.CD_LOCNO as Location_Number_In_Apo
,EKET.CD_LOCTYPE as Apo_Location_Type
,{{ date_case_gen('EKET.HANDOVERDATE','Handover_Date')}}
,EKET.HANDOVERTIME as Handover_Tim
,EKET.FSH_RALLOC_QTY as Requirement_Allocated_Quantity
,EKET.FSH_SALLOC_QTY as Allocated_Stock_Quantity
,EKET.FSH_OS_ID as Order_Scheduling_Group_Id
,EKET.KEY_ID as Unique_Number_Budget
,EKET.OTB_VALUE as Required_Budget_Val
,EKET.OTB_CURR as Otb_Currency_Id
,EKET.OTB_RES_VALUE as Reserved_Budget_Val
,EKET.OTB_SPEC_VALUE as Special_Release_Budget_Val
,EKET.SPR_RSN_PROFILE as Otb_Reason_Profile_Special_Release
,EKET.BUDG_TYPE as Budget_Type
,EKET.OTB_STATUS as Otb_Check_Status
,EKET.OTB_REASON as Reason
,EKET.CHECK_TYPE as Type_Otb_Check
,EKET.DL_ID as Dateline_Id_Guid
,{{ date_case_gen('EKET.HANDOVER_DATE','Transfer_Date')}}
,EKET.NO_SCEM as No_Scem_Controlling
,{{ date_case_gen('EKET.DNG_DATE','Rem_Date')}}
,EKET.DNG_TIME as Reminder_Tim
,EKET.CNCL_ANCMNT_DONE as Cancellation_Threat_Made
,EKET.DATESHIFT_NUMBER as Number_Current_Date_Shifts
,EKET._FIVETRAN_DELETED as _Fivetran_Deleted
,EKET._FIVETRAN_SYNCED as _Fivetran_Synced
from {{source('dhsaphana1_sapabap1', 'eket')}}
where
EKET.MANDT in ('800')