 
/*1-Which drink has the highest calories from the dataset ?*/
select a.Beverage,a.Beverage_prep,a.Calories from dbo.drinkMenu$ a 
where a.Calories=
(select MAX(Calories)
from dbo.drinkMenu$
)

/*2. What is the average calorie amount for each drink category ?*/
select AVG(Calories) as Avg_calorios,Beverage_category from dbo.drinkMenu$ a 
group by Beverage_category

/*3. Which drinks have below average calorie amount ?*/
select a.Beverage,a.Beverage_prep from dbo.drinkMenu$ a 
where a.Calories<
(select AVG(Calories)
from dbo.drinkMenu$ a
)


