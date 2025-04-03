SELECT TOP (1000) [Unique ID]
      ,[Email]
      ,[Date Taken (America/New_York)]
      ,[Time Taken (America/New_York)]
      ,[Browser]
      ,[OS]
      ,[City]
      ,[Country]
      ,[Referrer]
      ,[Time Spent]
      ,[Q1 - Which Title Best Fits your Current Role?]
      ,[Q2 - Did you switch careers into Data?]
      ,[Q3 - Current Yearly Salary (in USD)]
      ,[Q4 - What Industry do you work in?]
      ,[Q5 - Favorite Programming Language]
      ,[Q6 - How Happy are you in your Current Position with the followi]
      ,[Q6 - How Happy are you in your Current Position with the follow1]
      ,[Q6 - How Happy are you in your Current Position with the follow2]
      ,[Q6 - How Happy are you in your Current Position with the follow3]
      ,[Q6 - How Happy are you in your Current Position with the follow4]
      ,[Q6 - How Happy are you in your Current Position with the follow5]
      ,[Q7 - How difficult was it for you to break into Data?]
      ,[Q8 - If you were to look for a new job today, what would be the ]
      ,[Q9 - Male/Female?]
      ,[Q10 - Current Age]
      ,[Q11 - Which Country do you live in?]
      ,[Q12 - Highest Level of Education]
      ,[Q13 - Ethnicity]
  FROM [class work1].[dbo].['Data Professional Survey$']

Select * from ['Data Professional Survey$']

exec sp_rename'[''Data Professional Survey$''].[Date Taken (America/New_York)]', 'Date_Taken', 'Column'

exec sp_rename'[''Data Professional Survey$''].[Time Taken (America/New_York)]', 'Time_Taken', 'Column'

exec sp_rename'[''Data Professional Survey$''].[Q1 - Which Title Best Fits your Current Role?]', 'JobTitle', 'Column'

exec sp_rename'[''Data Professional Survey$''].[Q3 - Current Yearly Salary (in USD)]', 'Salary', 'Column'

exec sp_rename'[''Data Professional Survey$''].[Q5 - Favorite Programming Language]', 'PLanguage', 'Column'

exec sp_rename'[''Data Professional Survey$''].[Q9 - Male/Female?]', 'Gender', 'Column'

exec sp_rename'[''Data Professional Survey$''].[Q10 - Current Age]', 'Age', 'Column'

exec sp_rename'[''Data Professional Survey$''].[Q12 - Highest Level of Education]', 'Education', 'Column' 

exec sp_rename'[''Data Professional Survey$''].[Q13 - Ethnicity]', 'Ethnicity', 'Column'

exec sp_rename'[''Data Professional Survey$''].[Q8 - If you were to look for a new job today, what would be the ]', 'New Job', 'Column'

exec sp_rename'[''Data Professional Survey$''].[Q4 - What Industry do you work in?]', 'Industry', 'Column'

exec sp_rename'[''Data Professional Survey$''].[Q7 - How difficult was it for you to break into Data?]', 'Difficulty', 'Column'



Update ['Data Professional Survey$']
Set UpperSalary = Replace(UpperSalary,'+','')

from ['Data Professional Survey$'] 

Select Salary, SUBSTRING(Salary, 0, CHARINDEX('-', Salary,-3)) As LowerSalary 
from ['Data Professional Survey$'] 

Select SUBSTRING(Salary, CHARINDEX('-', Salary), 4) As UpperSalary
from ['Data Professional Survey$']


Alter table ['Data Professional Survey$']
Add UpperSalary varchar (25)
update ['Data Professional Survey$']
set UpperSalary = SUBSTRING(Salary,CHARINDEX('-',Salary)+1,4)

Alter table ['Data Professional Survey$']
Add LowerSalary varchar (25)
update ['Data Professional Survey$']
set LowerSalary = SUBSTRING(Salary, 0, CHARINDEX('-', Salary,-3))

Select (LowerSalary *1000 + UpperSalary*1000)/2
From ['Data Professional Survey$']

update  ['Data Professional Survey$']
set AverageSalary =  (LowerSalary *1000 + UpperSalary*1000)/2

Update ['Data Professional Survey$']
set UpperSalary = (UpperSalary * 1000)

Update ['Data Professional Survey$']
set LowerSalary = (LowerSalary * 1000)


 Update ['Data Professional Survey$']
 Set UpperSalary = CAST(uppersalary as int)

 Update ['Data Professional Survey$']
 Set LowerSalary = CAST(LowerSalary as int)

 Update ['Data Professional Survey$']
 Set AverageSalary = CAST(AverageSalary as int)

select * from ['Data Professional Survey$']
exec sp_rename'[''Data Professional Survey$''].NewSalary', 'AverageSalary', 'Column' 

update ['Data Professional Survey$']
set JobTitle =
REPLACE(JobTitle, 'Student/Looking/None', 'Other')

Update ['Data Professional Survey$']
set JobTitle =
REPLACE(Replace(Replace (JobTitle, 'other', 'Other'), 'Manager, Business Intelligence Develop', 'Manager'), 'Director of Data Analytics', 'Data Analyst')

update ['Data Professional Survey$']
set JobTitle =
case
when JobTitle = 'Data Analyst' then 'Data Analyst'
when JobTitle = 'Data Engineer' then 'Data Engineer'
when JobTitle = 'Data scientist' then 'Data scientist'
else 'Others'
End

alter table ['Data Professional Survey$']
drop column  Country, City, Referrer

Alter table ['Data Professional Survey$']
drop column Browser


select * , isnull(Country, 'Togo') As NewCountry
from ['Data Professional Survey$']

select  Country
from ['Data Professional Survey$'] 
where Country  = 'United Kingdom'

update ['Data Professional Survey$']
set PLanguage =
Case 
when PLanguage = 'Python' then 'Python'
when PLanguage = 'OtherSQL' then 'Other'
when PLanguage = 'R' then 'R'
when PLanguage = 'C/C++' then 'C/C++'
when PLanguage = 'Javascript' then 'Javascript'
else 'SQL'
end

update ['Data Professional Survey$']
set Ethnicity =
case 
when Ethnicity =' White or Caucasian' then 'White'
when Ethnicity ='Asian or Asian American' then 'Asian'
when Ethnicity = 'Black or African American' then 'Black'
when Ethnicity ='Hispanic or Latino' then 'Latino'
else 'Others'
end

Alter table ['Data Professional Survey$']
Drop column Salary

select * From ['Data Professional Survey$']

update ['Data Professional Survey$']
set [New Job] =
case 
when [New Job] = 'Good Work/Life Balance' then 'Good Work'
when [New Job] = 'Remote Work' then 'Remote Work'
when [New Job] = 'Better Salary' then 'Better Salary'
else 'Others'
End

update ['Data Professional Survey$']
set Difficulty =
case 
when Difficulty = 'Very Difficult' then 'Very Difficult'
when Difficulty = 'Easy' then 'Easy'
when Difficulty = 'Difficult' then 'Difficult'
else 'Moderate'
end

update ['Data Professional Survey$']
set Country = Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(
Country, 'uzb', 'Uzbekistan'),
'Republic democratic of Congo ', 'Congo'),
'Irel', 'Ireland'), 
'Irelandand', 'Ireland'),
'Brazik', 'Brazil'),
'Africa (Nigeria)', 'Nigeria'),
'Fin', 'Finland'),
'Austr', 'Australia'),
'Leba', 'Lebanon'),
'United Arab Emirates', 'UAE'),
'Kenua', 'Kenya'),
'SG', 'Nigeria'),
'Aisa', 'India'),
'Australiaalia', 'Australia')


Update ['Data Professional Survey$']
set Country =
isnull(Country,'UAE')

select * from ['Data Professional Survey$']


update ['Data Professional Survey$']
set Industry =
case
when Industry = 'Tech' then 'Tech'
when Industry = 'Finance' then 'Finance'
when Industry = 'Logistics' then 'Logistics'
when Industry = 'Agriculture' then 'Agriculture'
when Industry = 'Construction' then 'Construction'
when Industry = 'Education' then 'Education'
when Industry = 'Telecommunication' then 'Telecommunication'
when Industry = 'Healthcare' then 'Healthcare'
when Industry = 'Real Estate' then 'Real Estate'
else 'Other'
end  