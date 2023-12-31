TRUNCATE TABLE [reference].[equipment_category]
GO
INSERT INTO [reference].[equipment_category]
(
    [equipment_scope], 
    [equipment_activity], 
    [equipment_product_services], 
    [equipment_category]
)
VALUES 
     ('Decommisioning','Cables','Export','Export cables')		
    ,('Decommisioning','Cables','Infield','Inter array cables')		
    ,('Decommisioning','Cables','Interconnector','Non wind related high voltage cables')		
    ,('Decommisioning','Cables','Onshore','Non wind related high voltage cables')		
    ,('Decommisioning','Cables','Empty','Empty')		
    ,('Decommisioning','Foundation','Floating','Foundation')		
    ,('Decommisioning','Foundation','GBF','Foundation')		
    ,('Decommisioning','Foundation','Jacket','Foundation')		
    ,('Decommisioning','Foundation','MP','Foundation')		
    ,('Decommisioning','Foundation','MP&TP','Foundation')		
    ,('Decommisioning','Foundation','Pile','Foundation')		
    ,('Decommisioning','Foundation','TP','Foundation')		
    ,('Decommisioning','Foundation','Empty','Foundation')		
    ,('Decommisioning','Metmast','Metmast','Other')		
    ,('Decommisioning','Metmast','Empty','Other')		
    ,('Decommisioning','Substation','Offshore','High voltage substations')		
    ,('Decommisioning','Substation','Onshore','High voltage substations')		
    ,('Decommisioning','Substation','Empty','High voltage substations')		
    ,('Decommisioning','WTG''s','WTG''s','Wind Turbine Generator WTG')		
    ,('Decommisioning','WTG''s','Empty','Wind Turbine Generator WTG')		
    ,('Decommisioning','Empty','Empty','Empty')		
    ,('Dredging','Dredging','Backfilling','Other')		
    ,('Dredging','Dredging','Beach Nourishment','Other')		
    ,('Dredging','Dredging','Capital + dump','Other')		
    ,('Dredging','Dredging','Capital + reclamation','Other')		
    ,('Dredging','Dredging','Drill Pit','Other')		
    ,('Dredging','Dredging','Drilling & Blasting','Other')		
    ,('Dredging','Dredging','Environmental','Other')		
    ,('Dredging','Dredging','Maintenance','Other')		
    ,('Dredging','Dredging','Mass Flow','Other')		
    ,('Dredging','Dredging','Nearshore Nourishment','Other')		
    ,('Dredging','Dredging','Post-trench','Other')		
    ,('Dredging','Dredging','Pre-sweep','Other')		
    ,('Dredging','Dredging','Trenching','Other')		
    ,('Dredging','Dredging','Trenching & Backfilling','Other')		
    ,('Dredging','Dredging','Empty','Other')		
    ,('Dredging','Rock Installation','Flexible Fall Pipe','Other')		
    ,('Dredging','Rock Installation','Side Stone Dumping','Other')		
    ,('Dredging','Rock Installation','Skidding Tower','Other')		
    ,('Dredging','Rock Installation','Tremie-pipe','Other')		
    ,('Dredging','Rock Installation','Empty','Other')		
    ,('Dredging','Empty','Empty','Other')		
    ,('Engineering','Cables','Export','Export cables')		
    ,('Engineering','Cables','Infield','Inter array cables')		
    ,('Engineering','Cables','Interconnector','Non wind related high voltage cables')		
    ,('Engineering','Cables','Onshore','Non wind related high voltage cables')		
    ,('Engineering','Cables','Empty','Empty')		
    ,('Engineering','Foundation','Floating','Foundation')		
    ,('Engineering','Foundation','GBF','Foundation')		
    ,('Engineering','Foundation','Jacket','Foundation')		
    ,('Engineering','Foundation','MP','Foundation')		
    ,('Engineering','Foundation','MP&TP','Foundation')		
    ,('Engineering','Foundation','Pile','Foundation')		
    ,('Engineering','Foundation','TP','Foundation')		
    ,('Engineering','Foundation','Empty','Foundation')		
    ,('Engineering','Metmast','Metmast','Other')		
    ,('Engineering','Metmast','Empty','Other')		
    ,('Engineering','Rock','Cable Protection','Other')		
    ,('Engineering','Rock','Scour Protection','Other')		
    ,('Engineering','Rock','Empty','Other')		
    ,('Engineering','Substation','Offshore','High voltage substations')		
    ,('Engineering','Substation','Onshore','High voltage substations')		
    ,('Engineering','Substation','Empty','High voltage substations')		
    ,('Engineering','Empty','Empty','Empty')		
    ,('EPCI','Cables','Export','Export cables')		
    ,('EPCI','Cables','Infield','Inter array cables')		
    ,('EPCI','Cables','Interconnector','Non wind related high voltage cables')		
    ,('EPCI','Cables','Onshore','Non wind related high voltage cables')		
    ,('EPCI','Cables','Empty','Empty')		
    ,('EPCI','Foundation','Floating','Foundation')		
    ,('EPCI','Foundation','GBF','Foundation')		
    ,('EPCI','Foundation','Jacket','Foundation')		
    ,('EPCI','Foundation','MP','Foundation')		
    ,('EPCI','Foundation','MP&TP','Foundation')		
    ,('EPCI','Foundation','Pile','Foundation')		
    ,('EPCI','Foundation','TP','Foundation')		
    ,('EPCI','Foundation','Empty','Foundation')		
    ,('EPCI','Metmast','Metmast','Other')		
    ,('EPCI','Metmast','Empty','Other')		
    ,('EPCI','Rock','Cable Protection','Other')		
    ,('EPCI','Rock','Scour Protection','Other')		
    ,('EPCI','Rock','Empty','Other')		
    ,('EPCI','Substation','Offshore','High voltage substations')		
    ,('EPCI','Substation','Onshore','High voltage substations')		
    ,('EPCI','Substation','Empty','High voltage substations')		
    ,('EPCI','WTG''s','WTG''s','Wind Turbine Generator WTG')		
    ,('EPCI','WTG''s','Empty','Wind Turbine Generator WTG')		
    ,('EPCI','Empty','Empty','Empty')		
    ,('Operation & Maintenance','Cables','Export','O&M')		
    ,('Operation & Maintenance','Cables','Infield','O&M')		
    ,('Operation & Maintenance','Cables','Interconnector','O&M')		
    ,('Operation & Maintenance','Cables','Onshore','O&M')		
    ,('Operation & Maintenance','Cables','Empty','O&M')		
    ,('Operation & Maintenance','Foundation','Floating','O&M')		
    ,('Operation & Maintenance','Foundation','GBF','O&M')		
    ,('Operation & Maintenance','Foundation','Jacket','O&M')		
    ,('Operation & Maintenance','Foundation','MP','O&M')		
    ,('Operation & Maintenance','Foundation','MP&TP','O&M')		
    ,('Operation & Maintenance','Foundation','Pile','O&M')		
    ,('Operation & Maintenance','Foundation','TP','O&M')		
    ,('Operation & Maintenance','Foundation','Empty','O&M')		
    ,('Operation & Maintenance','Metmast','Metmast','O&M')		
    ,('Operation & Maintenance','Metmast','Empty','O&M')		
    ,('Operation & Maintenance','Rock','Cable Protection','O&M')		
    ,('Operation & Maintenance','Rock','Scour Protection','O&M')		
    ,('Operation & Maintenance','Rock','Empty','O&M')		
    ,('Operation & Maintenance','Substation','Offshore','O&M')		
    ,('Operation & Maintenance','Substation','Onshore','O&M')		
    ,('Operation & Maintenance','Substation','Empty','O&M')		
    ,('Operation & Maintenance','Empty','Empty','O&M')		
    ,('Transport & Installation','Cables','Export','Export cables')		
    ,('Transport & Installation','Cables','Infield','Inter array cables')		
    ,('Transport & Installation','Cables','Interconnector','Non wind related high voltage cables')		
    ,('Transport & Installation','Cables','Onshore','Non wind related high voltage cables')		
    ,('Transport & Installation','Cables','Empty','Empty')		
    ,('Transport & Installation','Foundation','Floating','Foundation')		
    ,('Transport & Installation','Foundation','GBF','Foundation')		
    ,('Transport & Installation','Foundation','Jacket','Foundation')		
    ,('Transport & Installation','Foundation','MP','Foundation')		
    ,('Transport & Installation','Foundation','MP&TP','Foundation')		
    ,('Transport & Installation','Foundation','Pile','Foundation')		
    ,('Transport & Installation','Foundation','TP','Foundation')		
    ,('Transport & Installation','Foundation','Empty','Foundation')		
    ,('Transport & Installation','Metmast','Metmast','Other')		
    ,('Transport & Installation','Metmast','Empty','Other')		
    ,('Transport & Installation','Rock','Cable Protection','Other')		
    ,('Transport & Installation','Rock','Scour Protection','Other')		
    ,('Transport & Installation','Rock','Empty','Other')		
    ,('Transport & Installation','Substation','Offshore','High voltage substations')		
    ,('Transport & Installation','Substation','Onshore','High voltage substations')		
    ,('Transport & Installation','Substation','Empty','')		
    ,('Transport & Installation','WTG''s','WTG''s','Wind Turbine Generator WTG')		
    ,('Transport & Installation','WTG''s','Empty','Wind Turbine Generator WTG')		
    ,('Transport & Installation','Empty','Empty','Empty')		
    ,('Empty','Empty','Empty','Empty')
GO