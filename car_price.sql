-- #1. Select the count of different types of cars
SELECT name, COUNT(name) 
FROM car_data 
GROUP BY name;

-- #2. Find the count of different fuel type vehicles
SELECT fuel, COUNT(name) 
FROM car_data 
GROUP BY fuel;

-- #3. Find cars with low price and high mileage, limited to 10 results
SELECT name, sellin_price, mileae 
FROM car_data 
ORDER BY sellin_price ASC, mileae DESC 
LIMIT 10;

-- #4. Find the average selling price, km driven, and mileage for each car type
SELECT name, ROUND(AVG(sellin_price)), ROUND(AVG(km_driven)), ROUND(AVG(mileae)) 
FROM car_data 
GROUP BY name;

-- #5. Find the number of cars for different owners
SELECT owner, COUNT(owner) 
FROM car_data
GROUP BY owner;

-- #6. Find the top 10 cars according to mileage
SELECT name, mileae
FROM car_data
ORDER BY mileae DESC 
LIMIT 10;

-- #7. Find the number of cars in all the years
SELECT year, COUNT(year) AS count
FROM car_data 
GROUP BY year
ORDER BY year ASC;
