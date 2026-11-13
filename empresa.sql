-- Modelo relacional: Departamento 1 --- N Empleado
-- MySQL Workbench 8.0 / MySQL 8.0
CREATE DATABASE IF NOT EXISTS empresa
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_0900_ai_ci;
USE empresa;

CREATE TABLE Departamento (
  DeptID INT NOT NULL AUTO_INCREMENT,
  NombreDepto VARCHAR(45) NOT NULL,
  Ubicacion VARCHAR(45) NOT NULL,
  PRIMARY KEY (DeptID)
) ENGINE=InnoDB;

CREATE TABLE Empleado (
  EmpID INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(45) NOT NULL,
  Apellido VARCHAR(45) NOT NULL,
  Edad VARCHAR(45) NOT NULL,
  Salario VARCHAR(45) NOT NULL,
  DeptID INT NOT NULL,
  PRIMARY KEY (EmpID),
  INDEX idx_empleado_deptid (DeptID),
  CONSTRAINT fk_empleado_departamento
    FOREIGN KEY (DeptID) REFERENCES Departamento (DeptID)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
) ENGINE=InnoDB;
