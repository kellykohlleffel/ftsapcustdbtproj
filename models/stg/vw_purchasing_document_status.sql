Select 
dd07l.DOMVALUE_L as Purchasing_Document_Status_id, 
dd07t.DDTEXT as Purchasing_Document_Status_txt , 
dd07l._Fivetran_Synced as _Fivetran_Synced 
from {{source('dhsaphana1_sapabap1', 'dd07l')}} 
left join {{source('dhsaphana1_sapabap1', 'dd07t')}} on
dd07l.DOMNAME = dd07t.DOMNAME
and dd07l.DOMVALUE_L = dd07t.DOMVALUE_L
and dd07l.AS4VERS = dd07t.AS4VERS
and dd07t.DDLANGUAGE in ('E')
where 
dd07l.DOMNAME = 'ESTAK' 
and dd07l.AS4VERS = '0000'