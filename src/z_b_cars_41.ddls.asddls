@AbapCatalog.sqlViewName: 'ZV_CARS_2041'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cars'
@Metadata.ignorePropagatedAnnotations: true
define view Z_B_CARS_41 as select from zrent_cars_2041
{
    key matricula as Matricula,
    marca as Marca,
    modelo as Modelo,
    color as Color,
    motor as Motor,
    potencia as Potencia,
    und_potencia as UndPotencia,
    combustible as Combustible,
    consumo as Consumo,
    fecha_fabr as FechaFabr,
    puertas as Puertas,
    precio as Precio,
    moneda as Moneda,
    alquilado as Alquilado,
    alq_desde as AlqDesde,
    alq_hasta as AlqHasta
}
