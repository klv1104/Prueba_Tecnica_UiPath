"Select c.FirstName, c.LastName, c.Country, SUM(i.Total) As Total
From Customer c
Join Invoice i On c.CustomerId = i.CustomerId
Group By c.FirstName, c.LastName, c.Country
Order By Total DESC;"