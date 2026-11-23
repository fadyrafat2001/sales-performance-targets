// UNEXECUTED M SOURCE. Create text parameter WorkbookPath with full local XLSX path.
// Create this function as fxSheet; invoke it once per data sheet below.
(sheetName as text) as table =>
let
    Source = Excel.Workbook(File.Contents(WorkbookPath), null, true),
    Data = Source{[Item=sheetName, Kind="Sheet"]}[Data],
    Headers = Table.PromoteHeaders(Data, [PromoteAllScalars=true])
in
    Headers

// Separate query named FactSales:
let
    Source = fxSheet("FactSales"),
    Typed = Table.TransformColumnTypes(Source, {{"Sale_ID", type text}, {"Month", type text}, {"Region", type text}, {"Channel", type text}, {"Salesperson", type text}, {"Gross_EGP", type number}, {"Discount_EGP", type number}}, "en-US")
in
    Typed

// Separate query named FactTarget:
let
    Source = fxSheet("FactTarget"),
    Typed = Table.TransformColumnTypes(Source, {{"Month", type text}, {"Region", type text}, {"Channel", type text}, {"Target_EGP", type number}}, "en-US")
in
    Typed

// Separate query named DimMonth:
let
    Source = fxSheet("DimMonth"),
    Typed = Table.TransformColumnTypes(Source, {{"Month", type text}}, "en-US")
in
    Typed

// Separate query named DimRegion:
let
    Source = fxSheet("DimRegion"),
    Typed = Table.TransformColumnTypes(Source, {{"Region", type text}}, "en-US")
in
    Typed

// Separate query named DimChannel:
let
    Source = fxSheet("DimChannel"),
    Typed = Table.TransformColumnTypes(Source, {{"Channel", type text}}, "en-US")
in
    Typed

