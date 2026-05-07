create database customer_behaviourcustomer_behaviour;
select * from customer_behaviour_analysi;

#-1)-Which Catogery generate highest revenue
select category ,RoUND(SUM(purchase_amount),2) as Highest_revenue
 from customer_behaviour_analysi
 group by category order by Highest_revenue desc;
 
#2)--Are Discount Actuallay Increasing Purchase Value?
select discount_applied, ROUND(sum(purchase_amount),2) as Total_revenue,
ROUND(avg(purchase_amount),2) as Total_avg
from customer_behaviour_analysi
group by discount_applied;

#--Business Problem:- Discount may reduce profit without increasing sales
 
 #----Impact:-
               #--Identity effectiveness of discounts 
			   #--reduce unnecessary discount cost
			   #--reduce unnecessary discount cost
               #--Improve profit margin 
#3)--What is the total amount revenue gemerated by sales male and female customers?

select gender,ROUND(sum(purchase_amount),2) as Highest_revenue
from customer_behaviour_analysi
group by gender order by Highest_revenue desc;

 #--Business Problem  :- Lack of understanding of revenue contribution by gender segments
  #impacts:-
        #--Helpsdesign targetes marketing campaigns
        #--Improves customer segmentation strategy
        #--Enhance personalization efforts
        
#4)--which customer used a discount but still spend more than the average purchase amount?

select customer_id,purchase_amount,discount_applied
from customer_behaviour_analysi
where discount_applied='Yes' and purchase_amount > (select avg(purchase_amount) from customer_behaviour_analysi);

#--Business Problem :- Company Cannot identity high-spending customers who are also discount users.
    #--Impact:-
             #--Identifies Premium Discount-Sensitive customers
             #--Enables targeted discount campaigns
             #--Improves customer retention and revenue
             
#5)--Which are the top /bottom 5 products with the highest average review rating. 
 #TOP
 select  item_purchased, round(avg(review_rating),2) as Highest_average_Rating
 from customer_behaviour_analysi 
 group by item_purchased
 order by Highest_average_Rating desc limit 5;
 
 #Bottom 
  select  item_purchased, round(avg(review_rating),2) as Highest_average_Rating
 from customer_behaviour_analysi 
 group by item_purchased
 order by Highest_average_Rating asc limit 5;
 
 #--Business Problem :- no visiblity into product performance based on customers satisfaction 
   #--Impact :-
               #--Promotes high-performing products
               #--Improves low-rated products 
               #--Enhance cusromers experience 
               
#6)Average Purchase : Standard vs Express shipping 

select  shipping_type,round(avg(purchase_amount),2) as avg_purchase,
sum(purchase_amount) as revenue
from customer_behaviour_analysi
where shipping_type in ('Standard','Express')
group by shipping_type 
order by revenue desc;

#--Business Problem :-Unclear if faster shipping leads to higher spending

 #--Impact 
           #--Helps optimize shipping pricing strategy
           #--Increases average orcer value 

#7)--Do subscribed customers spend more ? compare average speed and total revenue between subscribes and non-subscribers 

 select subscription_status ,
  count(customer_id) as users,
  round(avg(purchase_amount),2) as revenue_avg,
  round(sum(purchase_amount),2) as revenue_sum
  from customer_behaviour_analysi
  group by subscription_status;
  
#--Business Problem:- The effectiveness of subscription progress is unknown
 
  #--Impact 
           #--validates subscription model performance 
           #--Improves customer loyalty program 
           #--Increases customersnlifetime value (c.v)
           
#8)--Top 5 Product with highest discount usage % 
  
SELECT 
	item_purchased,
	COUNT(item_purchased) AS total_number_of_times_sold,
	COUNT(CASE WHEN discount_applied='Yes' THEN 1 END) AS  Number_of_times_sold_when_disocunt_applied,
	COUNT(CASE WHEN discount_applied='Yes' THEN 1 END) *100.0 / COUNT(*) AS discount_percent
FROM customer_behaviour_analysi
GROUP BY item_purchased
ORDER BY discount_percent DESC limit 5;

#-- ❓ Business Problem :- Some products may be overly dependent on discounts.

#--🚀 Impact:- 
			#--Identifies discount-driven products
			#--Helps optimize pricing strategy
			#--Reduces profit margin loss
            
#--9. Segment customer into new, returning and loyal based on their total number of previous purchase, 
#--and show the count of each segment.

SELECT * FROM customer_behaviour_analysi;

select
	CASE 
		WHEN previous_purchases= '0' THEN 'New Customer'
		WHEN previous_purchases BETWEEN 1 AND 15  THEN 'Returning Customer'
	ELSE 'Loyal Customers'
END AS customer_segment,
COUNT(*) AS customer_count
FROM customer_behaviour_analysi
GROUP BY CASE 
		WHEN previous_purchases= '0' THEN 'New Customer'
		WHEN previous_purchases BETWEEN 1 AND 15  THEN 'Returning Customer'
	ELSE 'Loyal Customers'
END

#--❓ Business Problem :- Lack of customer segmentation leads to generic strategies.


#--🚀 Impact:- 
			#--Enables personalized marketing
			#--Improves retention strategies
			#--Increases conversion rates
