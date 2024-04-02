use DB_PROJECT
exec sp_rename '[dbo].[prod_cat_info]','prod_cat_info'
select * from prod_cat_info

exec sp_rename '[dbo].[Transactions_new]','Transactions_new'
select * from  Transactions_new
_

exec sp_rename '[dbo].[Customers_new]','customers_new'
 select * from customers_new
  -------------------------DATA PREPARATION AND UNDERSTANDING-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
--What is the Total number of rows in each table?
  
  select count(*) as Cust_rows from customers_new
  select count(*) as Prod_rows from prod_cat_info 
  select count(*) as Tran_rows from Transactions_new
 
-- What is the Number of transactions that have a return?

  select count(transaction_id) as Transactions_returned from Transactions_new
  where total_amt < 0
  select * from Transactions_new
   where total_amt < 0

   -- Time range of the transaction data available for analysis.
   
  select distinct year(tran_date) from Transactions_new
  select distinct datename(month,tran_date) from Transactions_new

  select tran_date, day(tran_date) as Days, month(tran_date) as Month,
  year(tran_date) as Years 
  from Transactions_new

  select tran_date from Transactions_new
  order by tran_date desc

  select top 1 datediff(year,'2011-01-02','2014-12-02') as Years,
  datediff(month,'2011-01-02','2014-12-02') as Months,
  datediff(day,'2011-01-02','2014-12-02') as Days from Transactions_new
 
 -- The product category does the sub-category DIY belong to?

  select prod_subcat, prod_cat from prod_cat_info
  where prod_subcat ='DIY'

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------Bussiness Objective(1): Which channel is most frequently used for Transactions.-------------------------------------------------------------------------------------------------------------


  select  top 1 Store_type,count(*)as No_store_type 
  from Transactions_new
  group by Store_type
  order by No_store_type desc;

----------Bussiness Objective(2): What is the count of Male and Female customers in the database.------------------------------------------------------------------------------------------------------------------------------------------------------------------

  select gender,count(*) as count_gender
  from customers_new
  group by gender;



---------Bussiness Objective(3):From which city do we have the maximum number of customers and how many.------------------------------------------------------------------------------------------------------------------------------------------------------------------

  select top 1  city_code as city_code, count(*) as no_customers 
  from customers_new
  group by city_code
  order by count(*) desc;



----------Bussiness Objective(4):How many sub_categories are there under the books category.--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


  select prod_cat,prod_subcat
  from prod_cat_info
  where prod_cat='books'
  order by prod_cat;

----------Bussiness Objective(5):What is the maximum quantity of products ever ordered.----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



  select P.prod_cat, count(prod_cat) as No_of_products 
  from Transactions_new as T
  inner join prod_cat_info as P
  on T.prod_cat_code = P.prod_cat_code and T.prod_subcat_code = P.prod_sub_cat_code 
  group by prod_cat
  order by No_of_products desc

 
---------Bussiness Objective(6):What is the net total revenue generated in categories Electronics and Books.-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  select distinct sum(total_amt)as total_amount from Transactions_new as T
  inner join prod_cat_info as P
  on T.prod_subcat_code=P.prod_sub_cat_code and T.prod_cat_code = P.prod_cat_code
  where prod_cat in ('Books','Electronics')


---------Bussiness Objective(7):How many customers have >10 transactions with us excluding returns.------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 

  with ABC
  as (select cust_id ,count(transaction_id)as Count_of_trans 
  from Transactions_new
  where total_amt > 0 
  group by cust_id
  having count(transaction_id)>10)
  select count(cust_id) as Num_of_customers from ABC


 --------Bussiness Objective(8):What is the combined revenue earned from the "Electronics "and "Clothing"categories from "Flagship store".-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
  select sum(total_amt)as total_amount  from Transactions_new as T
  inner join prod_cat_info as P
  on T.prod_subcat_code=P.prod_sub_cat_code and T.prod_cat_code = P.prod_cat_code
  where prod_cat in ('Electronics','Clothing') and store_type='Flagship store';


  --------Bussiness Objective(9):What is the total revenue generated from "Male" customers in "Electronic" category? Output should disply total revenue by prod sub_cat.----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
   select sum(total_amt) as Total_revenue from Transactions_new as T
   inner join customers_new as C
   on T.cust_id = C.customer_Id
   inner join prod_cat_info as P 
   on P.prod_sub_cat_code = T.prod_subcat_code and 
   where gender = 'M' and prod_cat = 'Electronics'

   select prod_subcat,sum(total_amt) as Amount_ME from Transactions_new as T
   inner join customers_new as C
   on T.cust_id = C.customer_Id
   inner join prod_cat_info as P 
   on P.prod_cat_code = T.prod_cat_code
   where gender = 'M' and prod_cat = 'Electronics'
   group by prod_subcat

----------Bussiness Objective(10):What is percentage of sale and returns by product sub category;display only top 5 sub categories in terms of sales.-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
  select top 5(prod_subcat),sum(total_amt)as Sales_amount from Transactions as T
  inner join prod_cat_info as P
  ON P.prod_cat_code=T.prod_cat_code and P.prod_sub_cat_code=T.prod_subcat_code
  where T.total_amt>0
  group by prod_subcat
  order by Sales_amount desc

  with perABS
  as(select top 5 (prod_subcat),
  ABS(sum(case when Qty<0 then Qty else 0 end)) as Returns,
  sum(case when Qty>0 then Qty else 0 end)as Sales
  from Transactions_new as T
  inner join prod_cat_info as P
  on T.prod_cat_code=P.prod_cat_code
  group by prod_subcat
  order by Sales desc)
  select prod_subcat,round(((returns/(returns+Sales))*100),2)as Return_percent,
  round(((Sales/(returns+Sales))*100),2)as Sales_percent from perABS


----------Bussiness Objective(11):For all customers age between 25 to 35 years find what is the net total revenue generated by these customers in the last 30 days of transactions from max transaction date available in the data.---------------------------------------------------------------------------------------------------------------------------------------------------------

  select top 30 (tran_date) from Transactions_new
  group by tran_date
  order by tran_date desc

  with ABC
  as(select top 30(tran_date),sum(total_amt)as total_amount 
  from customers_new as C
  inner join Transactions_new as T
  on T.cust_id=C.customer_Id
  where datediff(year,dob,getdate()) between 25 and 35
  group by tran_date
  order by tran_date desc)
  select sum(total_amount) as final_revenue from ABC

----------Bussiness Objective(12):Which product category has seen the maximum value of returns in the last 3 months of transactions.---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  select prod_cat,count (Qty) as No_of_returns
  from Transactions_new as T
  inner join prod_cat_info as P
  on T.prod_cat_code = P.prod_cat_code and T.prod_subcat_code = P.prod_sub_cat_code
  where total_amt<0 and datediff (month,'2014-09-01',tran_date)= 3
  group by prod_cat

-- product category having maximum value of returns in last three months
with ABC
as(select prod_cat, transaction_id, total_amt
from Transactions_new as T
inner join prod_cat_info as P
on T.prod_cat_code = P.prod_cat_code
where total_amt <0 and datediff (month,'2014-09-01', tran_date)= 3)
select abs(sum(total_amt)) as Return_amount_cat from ABC

----------Bussiness Objective(13):Which store_type sells the maximum products; by value of sales amount and by quantity sold.----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  select top 1(Store_type),count(Qty)as No_of_products,
  sum (total_amt)as Amount from Transactions_new
  where total_amt>0
  group by Store_type
  order by No_of_products desc



----------Bussiness Objective(14):What are the categories for which average revenue is above the overall average.------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  select prod_cat, round(avg(total_amt), 2) as Averages from Transactions_new as T
  inner join prod_cat_info as P
  on T.prod_cat_code = P.prod_cat_code and T.prod_subcat_code = P.prod_sub_cat_code
  group by prod_cat
  having avg(total_amt) > (select avg(total_amt) from Transactions_new)


--------- -Bussiness Objective(15):Find the average and total revenue by each subcategory for the categories which are among top 5 categories in terms of quantity sold.------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

   select top 5(prod_cat), count (Qty) as Quantity_sold
   from Transactions_new T
   inner join prod_cat_info P
   on T.prod_cat_code =P.prod_cat_code and T.prod_subcat_code = P.prod_sub_cat_code
   where total_amt > 0
   group by prod_cat
   order by Quantity_sold desc


  select prod_cat, prod_subcat,
  round(sum(total_amt), 3) as Total_amount, round(avg(total_amt), 3) as Avg_amount
  from Transactions_new as T
  inner join prod_cat_info as P
  on T.prod_cat_code = P.prod_cat_code
  where total_amt > 0 and prod_cat in
  ('Books', 'Electronics', 'Home and kitchen', 'Footwear', 'Clothing')
  group by prod_cat, prod_subcat
  order by case when prod_cat= 'Books' then 1
                when prod_cat= 'Electronics' then 2
                when prod_cat ='Home and kitchen' then 3
                when prod_cat = 'Footwear' then 4
                else 5
                end;