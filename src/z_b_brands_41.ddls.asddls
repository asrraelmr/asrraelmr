@AbapCatalog.sqlViewName: 'ZV_BRAND_2041'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
define view Z_B_BRANDS_41 as select from zrent_brands_41
{ 
key marca as Marca,
@UI.hidden: true
url as Url
}
