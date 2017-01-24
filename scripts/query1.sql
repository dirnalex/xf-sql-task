SELECT xf.country.CountryID, xf.country.Name
FROM xf.country
  JOIN xf.city ON xf.country.CountryID = xf.city.CountryID
GROUP BY xf.country.Name
HAVING SUM(xf.city.Population) > 400;
