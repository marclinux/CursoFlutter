CREATE TABLE solicitudes (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdSolicitud INTEGER NOT NULL,
    IdCliente INTEGER NOT NULL,
    NombreCliente TEXT NOT NULL,
    IdCandidato INTEGER NOT NULL,
    NombreCompleto TEXT NOT NULL,
    TelefonoCandidato TEXT NOT NULL,
    IdPersonalCampo INTEGER NOT NULL,
    FechaSolicitud TEXT NOT NULL,
    PuestoSolicitado TEXT NOT NULL,
    FechaNacimiento TEXT NOT NULL,
    LugarNacimiento TEXT NOT NULL,
    EstadoCivil TEXT NOT NULL,
    CalleDomicilio TEXT NOT NULL,
    NumeroDomicilio TEXT NOT NULL,
    ColoniaDomicilio TEXT NOT NULL,
    CiudadDomicilio TEXT NOT NULL,
    EntreCalles TEXT NOT NULL,
    CodigoPostalDomicilio TEXT NOT NULL,
    ReferenciasDomicilio TEXT NOT NULL,
    IdZona INTEGER NOT NULL,
    NombreZona TEXT NOT NULL,
    Municipio TEXT NOT NULL,
    Estado TEXT NOT NULL,
    Estatus INTEGER NOT NULL
);

CREATE TABLE referencias_laborales (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdSolicitud INTEGER NOT NULL,
    IdReferenciaLaboral INTEGER NOT NULL,
    NombreEmpresa TEXT NOT NULL,
    MejorasEmpresa TEXT NOT NULL,
    GustabaMas TEXT NOT NULL,
    NoGustaba TEXT NOT NULL,
    ObjetivosLogrados TEXT NOT NULL,
    Estatus INTEGER NOT NULL
);

CREATE TABLE telefonos_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    TelefonoCandidato TEXT NOT NULL,
    TipoTelefono INTEGER NOT NULL,
    PersonaContacto TEXT NOT NULL,
    RelacionContacto TEXT NOT NULL,
    Grupo INTEGER NOT NULL
);

CREATE TABLE datos_generales (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    NombreCompleto TEXT NOT NULL,
    PuestoParticipa TEXT NOT NULL,
    ZonaCorrespondiente TEXT NOT NULL,
    FechaRealizacion TEXT NOT NULL,
    NumeroContacto TEXT NOT NULL,
    FechaNacimiento TEXT NOT NULL,
    LugarNacimiento TEXT NOT NULL,
    Edad TEXT NOT NULL,
    EstadoCivil TEXT NOT NULL,
    AniosEstadoCivil TEXT NOT NULL,
    Domicilio TEXT NOT NULL,
    Colonia TEXT NOT NULL,
    EntreCalles TEXT NOT NULL,
    CodigoPostal TEXT NOT NULL,
    Municipio TEXT NOT NULL,
    TipoSangre TEXT NOT NULL,
    CorreoElectronico TEXT NOT NULL,
    TelefonoCasa TEXT NOT NULL,
    TelefonoCelular TEXT NOT NULL,
    Peso TEXT NOT NULL,
    Estatura TEXT NOT NULL,
    Sexo TEXT NOT NULL,
    MedioEnteroEmpleo TEXT NOT NULL,
    VecesAplicoEmpleo TEXT NOT NULL,
    PersonaSeguimiento TEXT NOT NULL,
    PersonasLaborandoEmpresa TEXT NOT NULL,
    PuestoInteres TEXT NOT NULL,
    Estatus INTEGER NOT NULL
);

CREATE TABLE documentos_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    NSSEncuesta TEXT NOT NULL,
    CURPEncuesta TEXT NOT NULL,
    RFC TEXT NOT NULL,
    INE TEXT NOT NULL,
    EstatusINE TEXT NOT NULL,
    ComprobanteDomicilio TEXT NOT NULL,
    LicenciaConducir TEXT NOT NULL,
    EstatusLicenciaConducir TEXT NOT NULL,
    CartillaMilitar TEXT NOT NULL,
    Pasaporte TEXT NOT NULL,
    CedulaProfesional TEXT NOT NULL,
    ActaNacimiento TEXT NOT NULL,
    Infonavit TEXT NOT NULL,
    Estatus INTEGER NOT NULL
);

CREATE TABLE escolaridades_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    NivelEstudios TEXT NOT NULL,
    FechaInicio TEXT NOT NULL,
    FechaFin TEXT NOT NULL,
    Institucion TEXT NOT NULL,
    CiudadEstado TEXT NOT NULL,
    AniosEstudios TEXT NOT NULL,
    DocumentoObtenido TEXT NOT NULL
);

CREATE TABLE escolaridades2_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    EstudiaActualmente INTEGER NOT NULL DEFAULT '0',
    InstitucionActual TEXT NOT NULL,
    GradoEstudiosActual TEXT NOT NULL,
    Horarios TEXT NOT NULL,
    EquipoComputoManeja TEXT NOT NULL,
    ProgramasManeja TEXT NOT NULL,
    OtrosEquipos TEXT NOT NULL,
    SabeConducir INTEGER NOT NULL DEFAULT '0',
    AutoEstandar INTEGER NOT NULL,
    AutoAutomatico INTEGER NOT NULL,
    Motocicleta INTEGER NOT NULL,
    Montacargas INTEGER NOT NULL,
    Camion INTEGER NOT NULL,
    Otros TEXT NOT NULL,
    OtrosConocimientos TEXT NOT NULL,
    Estatus INTEGER NOT NULL
);

CREATE TABLE idiomas_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    Idioma TEXT NOT NULL,
    Lee TEXT NOT NULL,
    Escribe TEXT NOT NULL,
    Habla TEXT NOT NULL
);

CREATE TABLE familiares_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    Parentesco TEXT NOT NULL,
    NombreCompleto TEXT NOT NULL,
    Edad TEXT NOT NULL,
    Escolaridad TEXT NOT NULL,
    Ocupacion TEXT NOT NULL,
    UnidadEdad TEXT NOT NULL,
    idHabitante INTEGER NOT NULL,
    idEconomiaHogarCandidato INTGER NOT NULL
);

CREATE TABLE orden_parentescos (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Parentesco TEXT NOT NULL,
    Orden INTEGER NOT NULL
);

insert into orden_parentescos (Parentesco, Orden)
values
('MADRE', 1),
('PADRE', 2),
('HERMANO(A)', 3),
('ESPOSO(A)', 4),
('HIJO(A)', 5);

