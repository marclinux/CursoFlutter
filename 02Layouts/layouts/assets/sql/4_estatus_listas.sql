CREATE TABLE estatus_listas_candidato (
    Id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    IdCandidato INTEGER NOT NULL,
    Tipo INTEGER NOT NULL,
    Estatus INTEGER NOT NULL
);