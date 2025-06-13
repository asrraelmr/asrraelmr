@AbapCatalog.sqlViewName: 'ZV_REM_DAYS_41'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rents'
@Metadata.ignorePropagatedAnnotations: true
define view Z_B_REM_DAYS_41 as select from zrent_cars_2041
{
    key matricula as Matricula,
    marca as Marca,
    case when alq_hasta <> ' ' then  dats_days_between( cast($session.system_date as abap.dats), alq_desde )
    end as Dias
   
}
