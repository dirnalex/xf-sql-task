SELECT xf.country.Name
FROM xf.country
  LEFT JOIN xf.city ON xf.country.CountryID = xf.city.CountryID
  LEFT JOIN xf.building ON xf.city.CityID = xf.building.CityID
GROUP BY xf.country.CountryID
HAVING COUNT(xf.building.BuildingID) = 0;