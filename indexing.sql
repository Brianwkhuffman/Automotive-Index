SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
-- 31.075 MS

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
-- 38.602 MS

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';
-- 51.588 MS

SELECT *
FROM car_models
WHERE year >= 2010 AND year <= 2015;
-- 168.771 MS

SELECT *
FROM car_models
WHERE year = 2010;
-- 71.479 MS

-----------------------------------------------------------
CREATE INDEX sorted_make_code
on car_models (make_code);
-- 223.495 MS

CREATE INDEX make_model_code
on car_models (make_code, model_code);
-- 376.745 MS

CREATE INDEX sorted_year
on car_models (year);
-- 147.060 MS
------------------------------------------------------------
SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
-- 3.230 MS

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
-- 2.404 MS

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';
-- 6.541 MS

SELECT *
FROM car_models
WHERE year >= 2010 AND year <= 2015;
-- 107.628 MS
-- made index for years

SELECT *
FROM car_models
WHERE year = 2010;
-- 29.828 MS