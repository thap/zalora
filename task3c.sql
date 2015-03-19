SELECT Item_Code, count(Visits) FROM reporting.items WHERE `Date`='2013-01-12'
SELECT Item_Code, count(Visits) FROM reporting.items GROUP BY EXTRACT(YEAR FROM `Date`)
