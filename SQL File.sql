/****** Script for SelectTopNRows command from SSMS  ******/
USE Sunking;

/* Calculation for Follow-on Revenue Realization*/


Select (CAST(SUM(Accounts_Upfront_Price) AS DECIMAL) / SUM(Accounts_Unlock_Price) * 100) AS Revenue_Realization
FROM Accounts;

Select Top (10) *, (CAST(Accounts_Upfront_Price AS DECIMAL) / (Accounts_Unlock_Price) * 100) AS Unit_Revenue_Realization
FROM Accounts;












/**SELECT COUNT(*) FROM Accounts

SELECT TOP (10) *
  FROM Sunking.dbo.Accounts
  GO;

SELECT TOP(5) *
FROM Portfolio_derived;


SELECT * FROM Sunking.dbo.Accounts 
WHERE Accounts_Account_Status ='UNLOCKED'; ***/


/****
Select distinct Accounts_Area, count(Accounts_Area) AS Unique_Accounts_Area_Count From Accounts
GROUP BY Accounts_Area
Having Accounts_Area = 'Nyandarua'

SELECT * FROM Accounts
WHERE Accounts_Angaza_ID = 'AC563144'

SELECT * from Portfolio_derived
WHERE Portfolio_Derived_Account_Angaza_ID = 'AC563144'


SELECT Portfolio_Derived_Account_Angaza_ID, SUM(Portfolio_Derived_Amount) AS Amount_Paid_SoFar
FROM Portfolio_derived
GROUP BY Portfolio_Derived_Account_Angaza_ID



SELECT  *
FROM Accounts
LEFT JOIN Portfolio_derived ON Accounts.Accounts_Angaza_ID = Portfolio_derived.Portfolio_Derived_Account_Angaza_ID


/* CALCULATION OF COLLECTION PERFORMANCE **/

SELECT Accounts_Area, SUM(Accounts_Unlock_Price) As Total_Account_Receivables,
       (SUM(Accounts_Unlock_Price) - SUM(Accounts_Upfront_Price)) AS Total_Credit_Sales,
	   CAST((Sum(Accounts_Unlock_Price)) AS DECIMAL)/ (SUM(Accounts_Unlock_Price) - SUM(Accounts_Upfront_Price)) * 1 AS Regular_DSO,
	   (CAST(SUM(Accounts_Upfront_Price) AS DECIMAL) / (SUM(Accounts_Unlock_Price))) * 1 AS Best_DSO
From Accounts
Group by Accounts_Area



/** CALL ANALYSIS **/

Select min(April_Collections_Calls_List_Date_Called_Date) from Call_center

select * from Portfolio_derived
where Portfolio_Derived_Most_Recent_Payment_Date between '2019-04-01' and '2019-05-03'
inner join Call_center 


select * from Accounts
right Join Call_center
ON Accounts.Accounts_Angaza_ID = Call_center.April_Collections_Calls_List_Angaza_ID
where Accounts_Date_of_Latest_Payment_Utc_Date between '2019-04-01' and '2019-05-03' ***/