ALTER TABLE Usuarios
    ADD PersonaLlave int

ALTER TABLE Usuarios
    ADD CONSTRAINT FK_PersonaLlaveU
    FOREIGN KEY (PersonaLlave) 
    REFERENCES Personas (PersonaLlave)
    
ALTER TABLE CodigosPostales
    ADD CiudadLlave int
    ADD EstadoLlave int
    ADD PaisLlave int

ALTER TABLE CodigosPostales
    ADD CONSTRAINT FK_CiudadLlaveCP 
    FOREIGN KEY (CiudadLlave) 
    REFERENCES Ciudades (CiudadLlave)
    ADD CONSTRAINT FK_EstadoLlaveCP 
    FOREIGN KEY (EstadoLlave) 
    REFERENCES Estados (EstadosLlave)
    ADD CONSTRAINT FK_PaisLlaveCP 
    FOREIGN KEY (PaisLlave) 
    REFERENCES Paises (PaisLlave)

ALTER TABLE PersonasCodigosPostales
    ADD PersonaLlave INT
    ADD CodigoPostalLlave INT

ALTER TABLE PersonasCodigosPostales
    ADD CONSTRAINT FK_PersonaLlavePCP 
    FOREIGN KEY (PersonaLlave) 
    REFERENCES Personas (PersonaLlave) 
    ADD CONSTRAINT FK_CodigoPostalLlavePCP 
    FOREIGN KEY (CodigoPostalLlave) 
    REFERENCES CodigosPostales (CodigoPostalLlave) 

ALTER TABLE PersonasTiposContactos
    ADD PersonaLlave INT
    ADD TipoContactoLlave INT

ALTER TABLE PersonasTiposContactos 
    ADD CONSTRAINT FK_PersonaLlavePTC 
    FOREIGN KEY (PersonaLlave) 
    REFERENCES Personas (PersonaLlave) 
    ADD CONSTRAINT FK_TipoContactoLlavePTC 
    FOREIGN KEY (TipoContactoLlave) 
    REFERENCES TiposContactos (TipoContactoLlave)

ALTER TABLE Empleados
    ADD PersonaLlave int

ALTER TABLE Empleados
    ADD CONSTRAINT FK_PersonaLlaveEMP
    FOREIGN KEY (PersonaLlave) 
    REFERENCES Personas (PersonaLlave) 

ALTER TABLE Productos
    ADD ProveedorLlave INT

ALTER TABLE Productos
    ADD CONSTRAINT FK_ProveedorLlavePROD
    FOREIGN KEY (ProveedorLlave) 
    REFERENCES Proveedores (ProveedorLlave)  

ALTER TABLE FotoP
    ADD ProductoLlave INT
    ADD ProveedorLlave INT

ALTER TABLE FotoP
    ADD CONSTRAINT FK_ProductoLlaveFP 
    FOREIGN KEY (ProductoLlave) 
    REFERENCES Productos (ProductoLlave) 
    ADD CONSTRAINT FK_ProveedorLlaveFP
    FOREIGN KEY (ProveedorLlave) 
    REFERENCES Proveedores (ProveedorLlave) 
    
ALTER TABLE MovimientosEncabezadosC
    ADD ClienteLlave INT
    ADD TipoMovimientoCLlave INT
    
ALTER TABLE MovimientosEncabezadosC
    ADD CONSTRAINT FK_ClienteLlaveMEC 
    FOREIGN KEY (ClienteLlave) 
    REFERENCES Clientes (ClienteLlave)
    ADD CONSTRAINT FK_TipoMovimientoCLlaveMEC 
    FOREIGN KEY (TipoMovimientoCLlave) 
    REFERENCES TiposMovimientosC (TipoMovimientoCLlave)

ALTER TABLE MovimientosDetallesC
    ADD MovimientoEncabezadoCLlave INT
    ADD ProductoLlave INT

ALTER TABLE MovimientosDetallesC
    ADD CONSTRAINT FK_MovimientoEncabezadoCLlaveMDC 
    FOREIGN KEY (MovimientoEncabezadoCLlave) 
    REFERENCES MovimientosEncabezadosC (MovimientoEncabezadoCLlave) 
    ADD CONSTRAINT FK_ProductoLlaveMDC 
    FOREIGN KEY (ProductoLlave) 
    REFERENCES Productos (ProductoLlave) 

ALTER TABLE MovimientosEncabezadosP
    ADD ProveedorLlave INT
    ADD TipoMovimientoPLlave INT

ALTER TABLE MovimientosEncabezadosP
    ADD CONSTRAINT FK_ProveedorLlaveMEP 
    FOREIGN KEY (ProveedorLlave) 
    REFERENCES Proveedores (ProveedorLlave)
    ADD CONSTRAINT FK_TipoMovimientoPLlaveMEP 
    FOREIGN KEY (TipoMovimientoPLlave) 
    REFERENCES TiposMovimientosP (TipoMovimientoPLlave)
    
ALTER TABLE MovimientosDetallesP
    ADD MovimientoEncabezadoPLlave INT
    ADD ProductoLlave INT
    
ALTER TABLE MovimientosDetallesP
    ADD CONSTRAINT FK_MovimientoEncabezadoPLlaveMDP 
    FOREIGN KEY (MovimientoEncabezadoPLlave) 
    REFERENCES MovimientosEncabezadosP (MovimientoEncabezadoPLlave)
    ADD CONSTRAINT FK_ProductoLlaveMDP
    FOREIGN KEY (ProductoLlave) 
    REFERENCES Productos (ProductoLlave) 