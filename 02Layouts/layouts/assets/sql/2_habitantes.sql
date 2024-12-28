CREATE TABLE 'personas_habitan_candidato' (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    Parentesco TEXT NOT NULL,
    NombreCompleto TEXT NOT NULL,
    Edad TEXT NOT NULL,
    Ocupacion TEXT NOT NULL,
    idEconomiaHogarCandidato INTEGER NOT NULL
);

CREATE TABLE 'otros_habitan_candidato' (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    DependientesEconomicos INTEGER NOT NULL,
    DependientesEconomicosTexto TEXT NOT NULL,
    MatrimoniosAnteriores INTEGER NOT NULL,
    MatrimoniosAnterioresTexto TEXT NOT NULL,
    OtorgaRecibePension INTEGER NOT NULL,
    OtorgaRecibePensionTexto TEXT NOT NULL,
    MensualidadPension REAL NOT NULL,
    ProcesosLegales INTEGER NOT NULL,
    ProcesosLegalesTexto TEXT NOT NULL,
    Mascotas TEXT NOT NULL,
    HijosMatrimoniosAnteriores TEXT NOT NULL,
    NotasEconomia TEXT NOT NULL
);