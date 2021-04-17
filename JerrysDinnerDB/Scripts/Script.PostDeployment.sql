/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


if not exists (select * from dbo.Food)
begin
  insert into dbo.Food(Title, [Description], Price)
  values ('Fried rice', 'Fried rice and a drink', 600), 
         ('Meatpie', 'Meatpie and a drink', 300), 
         ('Salad', 'A large salad', 400);
end