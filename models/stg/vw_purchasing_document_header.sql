Select
EKKO.MANDT as Client_Id
,EKKO.EBELN as Purchasing_Document_Id
,EKKO.BUKRS as Company_Code_Id
,EKKO.BSTYP as Purchasing_Document_Category
,EKKO.BSART as Purchasing_Document_Type_Id
,EKKO.BSAKZ as Control_Indicator
,EKKO.LOEKZ as Deletion_Indicator
,EKKO.STATU as Status_Purchasing_Document
,{{ date_case_gen('EKKO.AEDAT','Created_Date')}}
,EKKO.ERNAM as Created_By
,EKKO.PINCR as Item_Number_Interval
,EKKO.LPONR as Last_Item_Number_Id
,EKKO.LIFNR as Vendor_Id
,EKKO.SPRAS as Language_Key_Id
,EKKO.ZTERM as Payment_Terms
,EKKO.ZBD1T as Payment_In
,EKKO.ZBD2T as ZBD2T
,EKKO.ZBD3T as ZBD3T
,EKKO.ZBD1P as Cash_Discount_Percentage_1
,EKKO.ZBD2P as Cash_Discount_Percentage_2
,EKKO.EKORG as Purchasing_Organization_Id
,EKKO.EKGRP as Purchasing_Group_Id
,EKKO.WAERS as Currency_Id
,EKKO.WKURS as Exchange_Rate
,EKKO.KUFIX as Exchange_Rate_Fixed
,{{ date_case_gen('EKKO.BEDAT','Purchasing_Document_Date')}}
,{{ date_case_gen('EKKO.KDATB','Start_Validity_Period_Date')}}
,{{ date_case_gen('EKKO.KDATE','End_Validity_Period_Date')}}
,{{ date_case_gen('EKKO.BWBDT','Closing_Applications_Date')}}
,{{ date_case_gen('EKKO.ANGDT','Quotation_Deadline_Date')}}
,{{ date_case_gen('EKKO.BNDDT','Binding_Period_Quotation_Date')}}
,{{ date_case_gen('EKKO.GWLDT','Warranty_Date')}}
,EKKO.AUSNR as Bid_Invitation_Number_Id
,EKKO.ANGNR as Quotation_Number
,{{ date_case_gen('EKKO.IHRAN','Quotation_Submission_Date')}}
,EKKO.IHREZ as Your_Reference
,EKKO.VERKF as Salesperson
,EKKO.TELF1 as Vendors_Telephone_Number
,EKKO.LLIEF as Supplying_Vendor_Id
,EKKO.KUNNR as Customer_Id
,EKKO.KONNR as Outline_Agreement_Id
,EKKO.ABGRU as Field_Not_Used
,EKKO.AUTLF as Complete_Delivery
,EKKO.WEAKT as Indicator_Goods_Receipt_Message
,EKKO.RESWK as Supplying_Plant_Id
,EKKO.LBLIF as Field_Not_Used_Id
,EKKO.INCO1 as Incoterms_Id
,EKKO.INCO2 as Incoterms_Part_2
,EKKO.KTWRT as Target_Header_Val
,EKKO.SUBMI as Collective_Number
,EKKO.KNUMV as Document_Condition_No
,EKKO.KALSM as Procedure_Id
,EKKO.STAFO as Update_Group_Stats_Id
,EKKO.LIFRE as Different_Invoicing_Party_Id
,EKKO.EXNUM as Number_Foreign_Trade_Id
,EKKO.UNSEZ as Our_Reference
,EKKO.LOGSY as Logical_System_Id
,EKKO.UPINC as Subitem_Interval
,EKKO.STAKO as Time_Dep_Conditions
,EKKO.FRGGR as Release_Group_Id
,EKKO.FRGSX as Release_Strategy_Id
,EKKO.FRGKE as Release_Indicator_Id
,EKKO.FRGZU as Release_State
,EKKO.FRGRL as Subject_To_Release
,EKKO.LANDS as Country_Tax_Return_Id
,EKKO.LPHIS as Rel_Documentation
,EKKO.ADRNR as Address_Number_Id
,EKKO.STCEG_L as Country_Sales_Tax_Id_Number_Id
,EKKO.STCEG as Vat_Registration_No
,EKKO.ABSGR as Reason_Cancellation_Id
,EKKO.ADDNR as Document_Number_Additional
,EKKO.KORNR as Corr_Misc_Provis
,EKKO.MEMORY as Purchase_Order_Not_Yet_Complete
,EKKO.PROCSTAT as Purch_Doc_Proc_State
,EKKO.RLWRT as Total_At_Time_Release_Val
,EKKO.REVNO as Version_Number_In_Purchasing
,EKKO.SCMPROC as Scmproc
,EKKO.REASON_CODE as Goods_Receipt_Reason_Code
,EKKO.MEMORYTYPE as Category_Incompleteness
,EKKO.RETTP as Retention_Indicator
,EKKO.RETPC as Retention_In_Percent
,EKKO.DPTYP as Down_Payment_Indicator
,EKKO.DPPCT as Down_Payment_Percentage
,EKKO.DPAMT as Down_Payment_Amount_Val
,{{ date_case_gen('EKKO.DPDAT','Due_Down_Payment_Date')}}
,EKKO.MSR_ID as Process_Identification_Number
,EKKO.HIERARCHY_EXISTS as Part_Contract_Hierarchy
,EKKO.THRESHOLD_EXISTS as Threshold_Value_Exchange_Rates
,EKKO.LEGAL_CONTRACT as Legal_Contract_Number
,EKKO.DESCRIPTION as Contract_Name
,{{ date_case_gen('EKKO.RELEASE_DATE','Release_Contract_Date')}}
,EKKO.VSART as Shipping_Type_Id
,EKKO.HANDOVERLOC as Handover_Location
,EKKO.SHIPCOND as Shipping_Conditions_Id
,EKKO.INCOV as Incoterms_Version_Id
,EKKO.INCO2_L as Incoterms_Location_1
,EKKO.INCO3_L as Incoterms_Location_2
,EKKO.FORCE_ID as Internal_Key_Force_Element
,EKKO.FORCE_CNT as Internal_Version_Counter
,EKKO.RELOC_ID as Relocation_Id
,EKKO.RELOC_SEQ_ID as Relocation_Step_Id
,EKKO.SOURCE_LOGSYS as SOURCE_LOGSYS
,EKKO.FSH_TRANSACTION as Transaction_Number
,EKKO.FSH_ITEM_GROUP as Item_Group
,EKKO.FSH_VAS_LAST_ITEM as Last_Vas_Item_Number
,EKKO.FSH_OS_STG_CHANGE as Os_Strategy_Specific_Fields_Change
,EKKO.VZSKZ as Interest_Calculation_Indicator_Id
,EKKO.FSH_SNST_STATUS as Snapshot_Status
,EKKO.POHF_TYPE as Document_Category
,{{ date_case_gen('EKKO.EQ_EINDT','Same_Delivery_Date')}}
,EKKO.EQ_WERKS as Same_Plant_Id
,EKKO.FIXPO as Firm_Deal_Indicator
,EKKO.EKGRP_ALLOW as Take_Account_Purch_Group
,EKKO.WERKS_ALLOW as Take_Account_Plants
,EKKO.CONTRACT_ALLOW as Take_Account_Contracts
,EKKO.PSTYP_ALLOW as Take_Account_Item_Categories
,EKKO.FIXPO_ALLOW as Take_Account_Fixed_Date_Purchases
,EKKO.KEY_ID_ALLOW as Consider_Budget
,EKKO.AUREL_ALLOW as Take_Account_Alloc_Table_Relevance
,EKKO.DELPER_ALLOW as Take_Account_Dlvy_Period
,EKKO.EINDT_ALLOW as Take_Account_Delivery_Date
,EKKO.LTSNR_ALLOW as Include_Vendor_Subrange
,EKKO.OTB_LEVEL as Otb_Check_Level
,EKKO.OTB_COND_TYPE as Otb_Condition_Type_Id
,EKKO.KEY_ID as Unique_Number_Budget
,EKKO.OTB_VALUE as Required_Budget_Val
,EKKO.OTB_CURR as Otb_Currency_Id
,EKKO.OTB_RES_VALUE as Reserved_Budget_Val
,EKKO.OTB_SPEC_VALUE as Special_Release_Budget_Val
,EKKO.SPR_RSN_PROFILE as Otb_Reason_Profile_Special_Release
,EKKO.BUDG_TYPE as Budget_Type
,EKKO.OTB_STATUS as Otb_Check_Status
,EKKO.OTB_REASON as Reason
,EKKO.CHECK_TYPE as Type_Otb_Check
,EKKO.CON_OTB_REQ as Otb_Relevant_Contract
,EKKO.CON_PREBOOK_LEV as Indicator_Level_Contracts
,EKKO.CON_DISTR_LEV as Distrib_Using_Target_Value_Or_Item
,EKKO._FIVETRAN_DELETED as _Fivetran_Deleted
,EKKO._FIVETRAN_SYNCED as _Fivetran_Synced
from {{source('dhsaphana1_sapabap1', 'ekko')}}
where
EKKO.MANDT in '800'