USE SARAVIA
--1
SELECT c.CustomerID, CustomerName, [SalesTransactionDate]=SalesDate ,[Sales Transaction Quantity]=SalesQuantity
FROM Customer c, Sales s, SalesDetail sd, Pen p
WHERE c.CustomerID = s.CustomerID AND
	s.SalesID= sd.SalesID AND
	sd.PenID = p.PenID AND DAY(SalesDate)=25 AND p.PenID='PEN009'

--2
SELECT PenID, PenName, pd.MaterialQuantity
FROM Pen p, PenMaterial pm, PurchaseDetail pd
WHERE p.PenMaterialID=pm.PenMaterialID AND pd.PenMaterialID=pm.PenMaterialID AND
	p.PenName LIKE 'Milky %' AND
	pd.MaterialQuantity >6
GROUP BY PenID, PenName, MaterialQuantity

--3
SELECT CustomerName, SalesDate = CONVERT(VARCHAR(100), SalesDate, 102), [Total Pen Type] = COUNT(PenQuantity), SalesQuantity
FROM Customer c, Sales s, SalesDetail sd
WHERE c.CustomerID = s.CustomerID AND s.SalesID = sd.SalesID AND SalesQuantity > 10 AND MONTH(SalesDate)=9
GROUP BY CustomerName, SalesDate, SalesQuantity

--4
SELECT StaffName, LEFT(StaffGender,1), [Total Sales Transaction] = COUNT(SalesQuantity)
FROM staff st, customer c, sales s
WHERE c.CustomerID = s.CustomerID AND st.StaffID=s.StaffID AND DAY(SalesDate)%2=0
GROUP BY StaffName, StaffGender
HAVING COUNT(SalesQuantity)<=10

--5
SELECT DISTINCT [CustomerName] = UPPER(CustomerName), CustomerGender, [SalesTransactionId] = SalesID
FROM Customer c
JOIN Sales s ON c.CustomerID = s.CustomerID,
(SELECT AVG(SalesQuantity) AS AverageSales
FROM Sales
) q
WHERE s.SalesQuantity > q.AverageSales AND DAY(SalesDate) = 22
GROUP BY CustomerName, CustomerGender, SalesQuantity, SalesID

--6
SELECT VendorName, PurchaseDate = CONVERT(VARCHAR(100), PurchaseDate, 107), [MaterialName] = LOWER(PenMaterialName)
FROM Vendor v
JOIN PurchaseDetail pd ON v.VendorID = pd.VendorID 
JOIN Purchase p ON pd.PurchaseID = p.PurchaseID 
JOIN PenMaterial pm ON pd.PenMaterialID = pd.PenMaterialID,
( SELECT AVG(PenMaterialPrice) as AveragePrice
FROM PenMaterial 
) q
WHERE PenMaterialPrice > q.AveragePrice AND VendorName LIKE '% Industry'
GROUP BY VendorName, PurchaseDate, PenMaterialName

--7
SELECT [Display Total Purchase Transaction] = COUNT(p.PurchaseID), VendorName,
	[StaffName] = SUBSTRING
(
	s.StaffName, 1,
	CHARINDEX(' ', s.StaffName)-1
),
	PurchaseDate
FROM Staff s
JOIN Purchase p ON s.StaffID = p.StaffID
JOIN PurchaseDetail pd ON p.PurchaseID = pd.PurchaseID
JOIN Vendor v ON pd.VendorID = v.VendorID,
(SELECT AVG(PurchaseQuantity) AS AverageQuantity
FROM Purchase
) q
WHERE p.PurchaseQuantity < q.AverageQuantity AND DATENAME(weekday, PurchaseDate) = 'Sunday'
GROUP BY VendorName, StaffName, PurchaseDate


--8
SELECT VendorName, [TransactionDate] = CONVERT(VARCHAR(100), PurchaseDate, 106), PenMaterialName,
	[Material Number] = REPLACE(pm.PenMaterialID, 'PML', 'PM')
FROM Vendor v
JOIN PurchaseDetail pd ON v.VendorID = pd.VendorID
JOIN PenMaterial pm ON pd.PenMaterialID = pm.PenMaterialID
JOIN Purchase p ON pd.PurchaseID = p.PurchaseID,
(SELECT AVG(PenMaterialStock) AS AveragePenMaterialStock, SUM(PurchaseQuantity * PenMaterialPrice) AS TotalPrice
FROM PenMaterial pm
JOIN PurchaseDetail pd ON pm.PenMaterialID = pd.PenMaterialID
JOIN Purchase p ON pd.PurchaseID = p.PurchaseID
) q
WHERE pm.PenMaterialStock > q.AveragePenMaterialStock AND q.TotalPrice > 500000
GROUP BY VendorName, PurchaseDate, PenMaterialName, pm.PenMaterialID, PenMaterialStock
ORDER BY VendorName DESC



--9
CREATE VIEW ViewSalesTransaction AS
SELECT StaffName, CustomerName, [Total Sales Transaction] = COUNT(SalesQuantity), [Maximum Sales] = MAX(SalesQuantity)
FROM Staff s, Customer c, Sales sl
WHERE sl.CustomerID = c.CustomerID AND sl.StaffID = s.StaffID AND
	c.CustomerName LIKE '%c%'
GROUP BY StaffName, CustomerName
HAVING COUNT(SalesQuantity) > 2

SELECT * FROM ViewSalesTransaction


--10
CREATE VIEW ViewPurchaseDetail AS
SELECT VendorName, [Total Purchase Quantity] = SUM(p.PurchaseQuantity), [Total Purchase Transaction] = COUNT(p.PurchaseID)
FROM Vendor v, Purchase p, Staff s, PurchaseDetail pd
WHERE pd.VendorID = v.VendorID AND p.PurchaseID = pd.PurchaseID AND p.StaffID = s.StaffID AND
	s.StaffGender = 'Male'
GROUP BY VendorName, PurchaseQuantity, p.PurchaseID
HAVING COUNT(p.PurchaseID) > 1

SELECT * FROM ViewPurchaseDetail

