@AbapCatalog.sqlViewName: 'ZV_DET_CUSTMR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detalle Customer'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view z_b_det_customer_41 as select from zrent_custome_41
{
    key doc_id as Id,
    matricula as Matricula,
    nombres as Nombres,
    apellidos as Apellidos,
    email as Email,
    cntr_type as TipoContrato
    
}
