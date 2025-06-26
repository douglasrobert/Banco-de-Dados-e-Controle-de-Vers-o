USE ecoplacas;

CREATE TABLE Residuo (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tipo VARCHAR(100),
  origem VARCHAR(100),
  dataColeta DATE,
  quantidadeKg DECIMAL(10,2)
);

CREATE TABLE Bioresina (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  composicaoQuimica TEXT,
  fornecedor VARCHAR(100),
  tipoLicenca VARCHAR(50),
  dataValidade DATE
);

CREATE TABLE PlacaEcologica (
  id INT AUTO_INCREMENT PRIMARY KEY,
  residuo_id INT,
  bioresina_id INT,
  proporcaoResina DECIMAL(5,2),
  pesoTotalKg DECIMAL(10,2),
  dataProducao DATE,
  tecnicaProducao VARCHAR(255),
  observacao TEXT,
  FOREIGN KEY (residuo_id) REFERENCES Residuo(id),
  FOREIGN KEY (bioresina_id) REFERENCES Bioresina(id)
);

CREATE TABLE TesteTecnico (
  id INT AUTO_INCREMENT PRIMARY KEY,
  placa_id INT,
  tipoTeste VARCHAR(100),
  resultado DECIMAL(10,2),
  unidade VARCHAR(20),
  dataTeste DATE,
  tecnicoResponsavel VARCHAR(100),
  FOREIGN KEY (placa_id) REFERENCES PlacaEcologica(id)
);

CREATE TABLE Participante (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100),
  telefone VARCHAR(20),
  perfil VARCHAR(50)
);

CREATE TABLE Oficina (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tema VARCHAR(100),
  dataRealizacao DATE,
  local VARCHAR(100),
  responsavel VARCHAR(100),
  qtdParticipantes INT
);

CREATE TABLE Participacao (
  id INT AUTO_INCREMENT PRIMARY KEY,
  oficina_id INT,
  participante_id INT,
  avaliacaoOficina TEXT,
  interesseEmReaproveitamento BOOLEAN,
  FOREIGN KEY (oficina_id) REFERENCES Oficina(id),
  FOREIGN KEY (participante_id) REFERENCES Participante(id)
);

CREATE TABLE Devolutiva (
  id INT AUTO_INCREMENT PRIMARY KEY,
  placa_id INT,
  participante_id INT,
  data DATE,
  comentario TEXT,
  avaliacao INT,
  FOREIGN KEY (placa_id) REFERENCES PlacaEcologica(id),
  FOREIGN KEY (participante_id) REFERENCES Participante(id)
);