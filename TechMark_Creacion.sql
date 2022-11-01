CREATE TABLE Personas(
    PersonaLlave int PRIMARY KEY,
    Nombre varchar(40),
    ApellidoPaterno varchar(20),
    ApellidoMaterno varchar(20),
    FechaNacimiento date,
    Sexo char,
    Calle varchar(20),
    NumeroExterior varchar(20),
    NumeroInterior varchar(20),
    RFC varchar(12),
    Activo char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE Usuarios(
    UsuarioLlave int PRIMARY KEY,
    NombreUsuario varchar(10),
    Contrasenia varchar(20),
    Activo char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE CodigosPostales(
    CodigoPostalLlave int PRIMARY KEY, 
    CoodigoPostal int, 
    Colonia varchar(20), 
    Activo char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE PersonasCodigosPostales(
    PersonaCodigoPostal int PRIMARY KEY,
    Activo char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE PersonasTiposContactos (
    PersonaTipoContacto int PRIMARY KEY,
    Descripcion varchar(200), 
    Activo char,
    FechaCreacion date, 
    FechaModificacion date
)

CREATE TABLE TiposContactos (
    TipoContactoLlave int PRIMARY KEY, 
    TipoContacto varchar(20), 
    Activo char, 
    FechaCreacion date, 
    FechaModificacion date
)

CREATE TABLE Ciudades (
    CiudadLlave int PRIMARY KEY,
    Ciudad varchar(20),
    Activo char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE Estados (
    EstadoLlave int PRIMARY KEY,
    Estado varchar(20),
    Activo char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE Paises (
    PaisLlave int PRIMARY KEY,
    Pais varchar(20),
    Activo char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE Proveedores(
    ProveedorLlave int PRIMARY KEY,
    Activo char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE Clientes(
    ClienteLlave int PRIMARY KEY,
    Activo char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE Empleados(
    EmpleadoLlave int PRIMARY KEY,
    Activo char,
    FechaCreacion date, 
    FechaModificacion date
)

CREATE TABLE Productos(
    ProductoLlave int PRIMARY KEY,
    Producto varchar(30),
    PrecioUnitario float,
    DescuentoUnitario float,
    Existencias int,
    Activo char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE FotoP(
    FotoPLlave int PRIMARY KEY,
    Foto varchar(200),
    Producto varchar(30),
    DescripcionGeneral varchar(20),
    DescripcionDetallada varchar(200),
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE MovimientosEncabezadosC(
    MovimientoEncabezadoCLlave int PRIMARY KEY,
    DescripcionGeneral varchar(20),
    DescripcionDetallada varchar(200),
    SubTotal float,
    Descuento float,
    Total float,
    Contado char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE TiposMovimientosC(
    TipoMovimientoCLlave int PRIMARY KEY,
    TipoMovimiento varchar(10),
    Naturaleza char,
    Activo char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE MovimientosDetallesC(
    MovimientoDetalleCLlave int PRIMARY KEY,
    Cantidad int,
    PrecioUnitario float,
    SubTotal float,
    Descuento float,
    Total float,
    Activo char,
    DescripcionGeneral varchar(20),
    DescripcionDetallada varchar(200),
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE MovimientosEncabezadosP(
    MovimientoEncabezadoPLlave int PRIMARY KEY,
    DescripcionGeneral varchar(20),
    DescripcionDetallada varchar(200),
    SubTotal float,
    Descuento float,
    Total float,
    Contado char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE TiposMovimientosP(
    TipoMovimientoPLlave int PRIMARY KEY,
    TipoMovimiento varchar(10),
    Naturaleza char,
    Activo char,
    FechaCreacion date,
    FechaModificacion date
)

CREATE TABLE MovimientosDetallesP(
    MovimientoDetallePLlave int PRIMARY KEY,
    Cantidad int,
    PrecioUnitario float,
    SubTotal float,
    Descuento float,
    Total float,
    Activo char,
    DescripcionGeneral varchar(20),
    DescripcionDetallada varchar(200),
    FechaCreacion date,
    FechaModificacion date
)