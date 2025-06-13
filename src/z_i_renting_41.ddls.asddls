@AbapCatalog.sqlViewName: 'ZV_RENTING_41'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view Z_I_RENTING_41 
as select from Z_B_CARS_41 as Cars
association [1] to Z_B_REM_DAYS_41 as _RemDays on _RemDays.Matricula = Cars.Matricula
association [0..*] to Z_B_BRANDS_41 as _Brands on _Brands.Marca = Cars.Marca
association [0..*] to z_b_det_customer_41 as _DetCustomers on _DetCustomers.Matricula = Cars.Matricula
{
        key Cars.Matricula,
        Marca,
        Modelo,
        Color,
        Motor,
        Potencia,
        UndPotencia,
        Combustible,
        Consumo,
        FechaFabr,
        Puertas,
        Precio,
        Moneda,
        Alquilado,
        AlqDesde,
        AlqHasta,
        
//        0--> neutral  ---GRIS  
//        1--> negativo ---ROJO
//        2--> critico  ---AMARILLO
//        3--> positivo ---VERDE
        
        case when _RemDays.Dias < 0 then 0
             when _RemDays.Dias between 1  and 30  then 1
             when _RemDays.Dias between 31 and 100 then 2
             when _RemDays.Dias > 100 then 3
             else 0 end as TiempoRenta,
        '' as Estado,
        _Brands.Url,
        _DetCustomers
}
