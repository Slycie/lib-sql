### Exmaple from: https://docs.aws.amazon.com/athena/latest/ug/flattening-arrays.html


# items1 
SELECT flatten(ARRAY[ 
						ARRAY[1,2], 
						ARRAY[3,4] 
					]) AS items1

# items 2
SELECT flatten(ARRAY[ 
						ARRAY[1,2,3,4]
					]) AS items2

# items 1&2 
SELECT flatten(ARRAY[ARRAY[1,2], ARRAY[3,4]]) AS items1, flatten(ARRAY[ARRAY[1,2,3,4]]) AS items2

# two variables, each with 1 value (engineering, array of names)
SELECT 'engineering' as department, ARRAY['Sharon', 'John', 'Bob', 'Sally'] as users

# same
WITH temp AS (SELECT 'engineering' as department, ARRAY['Sharon', 'John', 'Bob', 'Sally'] as users)
SELECT department, users FROM temp

# NB: names is already called before declared in t(names)
WITH temp AS (SELECT 'engineering' as department, ARRAY['Sharon', 'John', 'Bob', 'Sally'] as users)
SELECT department, names FROM temp
CROSS JOIN UNNEST(users) as t(names)