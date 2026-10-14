-- Projeto Aplicado I
-- Entrega 02 - Banco de Dados SQLite
-- Empresa parceira: Schulz S.A.

PRAGMA foreign_keys = ON;

-- 1. TABELA DE TECNICOS E SOLICITANTES

CREATE TABLE IF NOT EXISTS tecnicos (
    id_tecnico INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    tipo TEXT NOT NULL
        CHECK (tipo IN ('TECNICO', 'SOLICITANTE'))
);

-- 2. TABELA DE EQUIPAMENTOS

CREATE TABLE IF NOT EXISTS equipamentos (
    id_equipamento INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo TEXT NOT NULL UNIQUE,
    denominacao TEXT NOT NULL,
    fabricante TEXT,
    valor_nominal_geral TEXT
);

-- 3. TABELA DE MEDICOES

CREATE TABLE IF NOT EXISTS medicoes (
    id_medicao INTEGER PRIMARY KEY AUTOINCREMENT,
    id_equipamento INTEGER NOT NULL,
    id_tecnico INTEGER NOT NULL,
    id_solicitante INTEGER,
    numero_certificado TEXT,
    data_medicao TEXT NOT NULL,
    parametro TEXT NOT NULL,
    valor_nominal REAL NOT NULL,
    tolerancia_positiva REAL NOT NULL,
    tolerancia_negativa REAL NOT NULL,
    medida_1 REAL,
    medida_2 REAL,
    media REAL,
    desvio_padrao REAL,
    valor_obtido REAL,
    erro REAL,
    status TEXT
        CHECK (status IN ('CONFORME', 'NAO CONFORME')),

    FOREIGN KEY (id_equipamento)
        REFERENCES equipamentos(id_equipamento),

    FOREIGN KEY (id_tecnico)
        REFERENCES tecnicos(id_tecnico),

    FOREIGN KEY (id_solicitante)
        REFERENCES tecnicos(id_tecnico)
);
