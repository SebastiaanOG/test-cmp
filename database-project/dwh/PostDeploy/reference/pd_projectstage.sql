TRUNCATE TABLE [reference].[projectstage]

INSERT INTO [reference].[projectstage]
    ([AK_statuscode]
    ,[AK_typetender]
    ,[projectstage])
VALUES 
    ('Alternative','Tender','Tender')
    ,('Analyse','Budget','Budget')
    ,('Analyse','Tender','Tender')
    ,('Negotiate','Budget','Budget')
    ,('Negotiate','Tender','Tender')
    ,('No PQ Submission','Budget','Unsuccessful')
    ,('No PQ Submission','Prospect','Unsuccessful')
    ,('No PQ Submission','Tender','Unsuccessful')
    ,('No Tender Submission','Budget','Unsuccessful')
    ,('No Tender Submission','N/A','Unsuccessful')
    ,('No Tender Submission','Prospect','Unsuccessful')
    ,('No Tender Submission','Tender','Unsuccessful')
    ,('Pending Approval','Budget','Budget')
    ,('Pending Approval','Tender','Tender')
    ,('Pending Award','Tender','Tender')
    ,('Pre Qualification','Prospect','Prospect')
    ,('Pre Qualification','Tender','Tender')
    ,('Prepare','N/A','Awarded')
    ,('Prepare','Tender','Awarded')
    ,('Project Cancelled','Budget','Awarded')
    ,('Project Cancelled','Prospect','Awarded')
    ,('Project Cancelled','Tender','Awarded')
    ,('Quick Scan','Budget','Budget')
    ,('Quick Scan','Prospect','Prospect')
    ,('Quick Scan','Tender','Tender')
    ,('Register','Budget','Budget')
    ,('Register','N/A','Prospect')
    ,('Register','Prospect','Prospect')
    ,('Register','Tender','Tender')
    ,('Select','Budget','Budget')
    ,('Select','Prospect','Prospect')
    ,('Select','Tender','Tender')
    ,('Submit','Budget','Budget')
    ,('Submit','Tender','Tender')
    ,('Unsuccessful PQ','Prospect','Unsuccessful')
    ,('Unsuccessful PQ','Tender','Unsuccessful')
    ,('Unsuccessful Tender','Budget','Unsuccessful')
    ,('Unsuccessful Tender','Prospect','Unsuccessful')
    ,('Unsuccessful Tender','Tender','Unsuccessful')           
GO


