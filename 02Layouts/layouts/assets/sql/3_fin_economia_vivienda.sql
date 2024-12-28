CREATE TABLE instrumentos_financieros_candidato(
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    Instrumento TEXT NOT NULL,
    Institucion TEXT NOT NULL,
    Descripcion TEXT NOT NULL,
    Observaciones TEXT NOT NULL
);

CREATE TABLE propiedades_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    Posicion INTEGER NOT NULL,
    TipoPropiedad TEXT NOT NULL,
    Descripcion TEXT NOT NULL,
    Ubicacion TEXT NOT NULL,
    Observaciones TEXT NOT NULL
);

CREATE TABLE economia_hogar_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    NombreCompleto TEXT NOT NULL,
    Parentesco TEXT NOT NULL,
    FuenteIngreso TEXT NOT NULL,
    Monto REAL NOT NULL
);

CREATE TABLE gasto_hogar_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    TipoGasto INTEGER NOT NULL,
    Concepto TEXT NOT NULL,
    Monto REAL NOT NULL
);

CREATE TABLE vivienda_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    TipoVivienda TEXT NOT NULL,
    MetrosTotales TEXT NOT NULL,
    TipoPropiedad TEXT NOT NULL,
    AniosDomicilioActual TEXT NOT NULL,
    AniosDomicilioAnterior TEXT NOT NULL,
    MotivoCambioDomicilio TEXT NOT NULL,
    AccesoCalles TEXT NOT NULL,
    ReferenciasVisuales TEXT NOT NULL,
    ApreciacionGeneral TEXT NOT NULL,
    OtrosLugaresRadicado TEXT NOT NULL
);

CREATE TABLE materiales_vivienda_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    Niveles TEXT NOT NULL,
    Fachada TEXT NOT NULL,
    Paredes TEXT NOT NULL,
    Piso TEXT NOT NULL,
    Techo TEXT NOT NULL,
    EstadoConservacion TEXT NOT NULL,
    NivelDelincuenciaZona TEXT NOT NULL,
    NivelSocioeconomicoAparente TEXT NOT NULL,
    LimpiezaOrden TEXT NOT NULL,
    TieneBanio INTEGER NOT NULL,
    Banios TEXT NOT NULL,
    TieneRecamaras INTEGER NOT NULL,
    Recamaras TEXT NOT NULL,
    TieneSala INTEGER NOT NULL,
    Sala TEXT NOT NULL,
    TieneComedor INTEGER NOT NULL,
    Comedor TEXT NOT NULL,
    TieneCocina INTEGER NOT NULL,
    Cocina TEXT NOT NULL,
    TieneGarage INTEGER NOT NULL,
    Garage TEXT NOT NULL,
    TienePatio INTEGER NOT NULL,
    Patio TEXT NOT NULL,
    TieneJardin INTEGER NOT NULL,
    Jardin TEXT NOT NULL,
    TieneSotanoNivel INTEGER NOT NULL,
    SotanoNivel TEXT NOT NULL,
    TieneTinaco INTEGER NOT NULL,
    Tinaco TEXT NOT NULL,
    TieneCisterna INTEGER NOT NULL,
    Cisterna TEXT NOT NULL,
    TieneTanque INTEGER NOT NULL,
    Tanque TEXT NOT NULL,
    TieneAlberca INTEGER NOT NULL,
    Alberca TEXT NOT NULL,
    TieneVigilante INTEGER NOT NULL,
    Vigilante TEXT NOT NULL,
    TieneAlarma INTEGER NOT NULL,
    Alarma TEXT NOT NULL,
    TieneTvPaga INTEGER NOT NULL,
    TvPaga TEXT NOT NULL,
    TieneInternet INTEGER NOT NULL,
    Internet TEXT NOT NULL,
    TieneCasetaAcceso INTEGER NOT NULL,
    CasetaAcceso TEXT NOT NULL
);

CREATE TABLE estado_salud_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    Tatuajes TEXT NOT NULL,
    Alergias TEXT NOT NULL,
    EnfermedadesCronicas TEXT NOT NULL,
    TomaBebidasAlcoholicas INTEGER NOT NULL,
    BebidasAlcoholicas TEXT NOT NULL,
    Fuma INTEGER NOT NULL,
    FumaTexto TEXT NOT NULL,
    ProblemaMotorVisual TEXT NOT NULL,
    OtrosProblemas TEXT NOT NULL,
    FaltasUltimoEmpleo TEXT NOT NULL,
    Cirugias TEXT NOT NULL,
    FamiliaresEnfermedades TEXT NOT NULL,
    ChequeosMedicos TEXT NOT NULL
);

CREATE TABLE social_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    DeportesPractica TEXT NOT NULL,
    DeportesFrecuencia TEXT NOT NULL,
    DeportesGustan TEXT NOT NULL,
    RazonNoPractica TEXT NOT NULL,
    AfiliacionClubes TEXT NOT NULL,
    MusicaPreferida TEXT NOT NULL,
    AfiliacionPartidos TEXT NOT NULL,
    Religion TEXT NOT NULL,
    TipoLectura TEXT NOT NULL,
    Pasatiempos TEXT NOT NULL
);

CREATE TABLE evaluacion_candidato_empresas (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdReferenciaLaboral INTEGER NOT NULL,
    MejorasEmpresa TEXT NOT NULL,
    GustabaMas TEXT NOT NULL,
    NoGustaba TEXT NOT NULL,
    ObjetivosLogrados TEXT NOT NULL
);

CREATE TABLE referencias_vecinales_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    Nombre TEXT NOT NULL,
    UbicacionVecino TEXT NOT NULL,
    TiempoVecinos TEXT NOT NULL,
    EstadoCivilCandidato TEXT NOT NULL,
    OpinionCandidato TEXT NOT NULL,
    VistoFumarTomar TEXT NOT NULL,
    Comentarios TEXT NOT NULL
);

CREATE TABLE comentarios_finales (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    DatosAdicionales TEXT NOT NULL,
    ProcesoReclutamientoActual TEXT NOT NULL
);

CREATE TABLE evaluacion_empresa_general (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    NombreMejorEmpresa TEXT NOT NULL,
    Comentarios TEXT NOT NULL
);

CREATE TABLE periodos_inactividad_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    Fechas TEXT NOT NULL,
    Actividades TEXT NOT NULL,
    Motivos TEXT NOT NULL
);

CREATE TABLE ubicaciones_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    Latitud TEXT NOT NULL,
    Longitud TEXT NOT NULL
);

CREATE TABLE ubicacion_grid_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    UbicacionGrid TEXT NOT NULL
);

CREATE TABLE fotos_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    Tipo INTEGER NOT NULL,
    Nombre TEXT NOT NULL
);

CREATE TABLE tipos_gasto (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    NombreTipo TEXT NOT NULL,
    Orden INTEGER NOT NULL
);

insert into tipos_gasto (NombreTipo, Orden)
VALUES
('AGUA', 1),('EDUCACIÓN', 2),
('PRÉSTAMOS Y TARJETAS DE CRÉDITO', 3),
('LUZ', 4),('RENTA', 5),
('ROPA Y CALZADO', 6),
('ALIMENTOS', 7),('INFONAVIT', 8),
('OCIO Y ESPARCIMIENTO', 9),
('TRANSPORTACIÓN', 10),('TV DE PAGA', 11),
('OTROS', 12);

CREATE TABLE tipos_servicio_medico (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    NombreServicioMedico TEXT NOT NULL
);

insert into tipos_servicio_medico (NombreServicioMedico)
VALUES ('IMSS'),
('ISSSTE'),
('ISSSTECH'),
('MÉDICOS PARTICULARES VARIOS');

CREATE TABLE servicios_estado_salud (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdEstadoSaludCandidato INTEGER NOT NULL,
    IdTipoServicioMedico INTEGER NOT NULL
);

CREATE TABLE funciones_actividades (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdReferenciaLaboral INTEGER NOT NULL,
    FuncionesActividadesPrincipales TEXT NOT NULL
);