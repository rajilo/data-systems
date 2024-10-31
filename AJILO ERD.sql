CREATE TABLE [Manufacturing_process] (
  [MachineID] VARCHAR(PK),
  [ProductionBatchNumber] VARCHAR,
  [OperatorID] VARCHAR,
  [Start_End_Time] DATETIME,
  [Defect_Rate] DECIMAL
)
GO

CREATE TABLE [Product] (
  [ProductID] VARCHAR(PK),
  [ProductionBatchNumber] VARCHAR,
  [ProductName] VARCHAR,
  [Defect_Rate] DECIMAL
)
GO

CREATE TABLE [Supplier] (
  [SupplierID] VARCHAR(PK),
  [MaterialType] VARCHAR,
  [DeliveryDate] DATE,
  [BatchNumber] VARCHAR
)
GO

CREATE TABLE [QualityMetric] (
  [QCBatchID] VARCHAR(PK),
  [DefectType] VARCHAR,
  [InspectionDate] DATE,
  [BatchNumber] VARCHAR,
  [ActionTaken_ScrapOrRework] VARCHAR
)
GO

ALTER TABLE [Manufacturing_process] ADD FOREIGN KEY ([MachineID]) REFERENCES [QualityMetric] ([QCBatchID])
GO

ALTER TABLE [Manufacturing_process] ADD FOREIGN KEY ([ProductionBatchNumber]) REFERENCES [Product] ([ProductionBatchNumber])
GO

ALTER TABLE [Supplier] ADD FOREIGN KEY ([BatchNumber]) REFERENCES [Manufacturing_process] ([ProductionBatchNumber])
GO
