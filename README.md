# E-COMMERCE-RETAIL-DATA-ANALYSIS
 E-Commerce Retail Data aimed at extracting valuable insights to improve business performance and customer experience.Data Preparation and analyzing an E-Commerce database containing tables such as 'prod_cat_info' , 'Transactions' and 'customers' and finding out the business solutions for the given business objectives.
 
![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/8ea9c137-ccd1-4830-af82-524846af948e)


# Tools Used : SQL Server, SSMS

# Datasets: Customers.xlsx, Transactions.xlsx, prod_cat_info.xlsx

# Customers:
The file contains the information about customers in the E-Commerce Retail Dataset. It includes variables such as customer_id, DOB, Gender and city_code.The schema of the dataset is 4 variables and 5647 records.

# Transactions:
The file contains the information about all transactions occur in the E-Commerce Retail Dataset.  It includes variables such as transaction_id, customer_id, transaction_id, prod_subcat_code, prod_cat_code, quantity, rate, tax, total_amount and store_type. The schema of the dataset is 10 variable and 23053 records.

# Prod_cat_info:
The file contains the information about the product availability in the E-Commerce Retail Dataset. It includes variables such as prod_cat_code, prod_cat, prod_sub_cat_code and prod_subcat. The schema of the dataset is 4 variables and 23 records.

# DATA PREPARATION AND UNDERSTANDING

(1) The Total number of rows in each table.

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/edeb68c1-87db-4093-8db7-d5f25ad58893)

Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/28316717-40ec-4054-bbf0-6c59b1b63f0d)

(2) Number of transactions that have a return. 

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/d4c8eec4-727a-4901-b34a-5c57141a8551)

Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/7ad19832-1c4a-4cbf-8ba5-5f4355414abb)

(3) Time range of the transaction data available for analysis.

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/02d68f57-4421-400d-a6e1-9c4cab3f5960)

Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/b4765b5c-d3e3-4f91-8be7-801d00266ff5)

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/7e99f6f5-46e2-420b-9703-bcc32f992003)

(4) The product category does the sub-category DIY belong to.

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/6b6327b0-cdee-4d5e-950f-62be458104b4)

Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/76487465-8f4a-4643-af91-4f59d49fde0b)


# Business Problems and Solutions:

# Bussiness Objective(1): Which channel is most frequently used for Transactions?

Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/208b44a8-f814-4b5b-8210-133257bab4f3)

 Result:
 
![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/733d20a9-69b5-45c9-b1ec-8300d8e6f18e)

According to the result most frequently used channel for Transaction is e_shop and 9311 customers are used the e_shop for their transactions.
In this objective count function is used for counting the store_type. Group by and Order by are used for sorting the data.

# Bussiness Objective(2): What is the count of Male and Female customers in the database?

Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/450a0dca-c6c5-49bf-81a9-dce0497d7a42)

 Result:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/298ce5d7-10c9-486d-85b4-c4577d57a259)

According to the result 2753 female customers and 2892 male customers are in the database. In this objective count function is used for counting the male and female customers. Group by is used for sorting the data.

 # Bussiness Objective(3):From which city do we have the maximum number of customers and how many?

 Bussiness solution

 Query:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/10bdddbe-96b4-46aa-9258-b3d28f4ba3f0)


 Result:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/e8d9b539-a8f2-4426-b339-932f6a1da46c)

According to the result city code 10 have the maximum number of customers. There are 558 customers are in city code 10.In this objective count function is used for counting the customers. Group by and Order by are used for sorting the data.

 # Bussiness Objective(4): How many sub_categories are there under the books category?

 Bussiness solution

 Query:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/c11a06b9-230a-4c94-b610-bba6dcc372fc)


 Result:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/c6bbb670-dab1-435e-89ae-ab4716ef60c9)

According to the result 6 sub categories are there under the books category.They are Fiction, Academic, Non-Fiction, Children, Comics and DIY. In this objective Where is used for filtering the data and Order by is used for sorting the data.


# Bussiness Objective(5): What is the maximum quantity of products ever ordered?

 Bussiness solution

 Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/4f197e06-e786-4d65-8508-5ee7e8a9b108)

  Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/c8a24230-5610-43ee-8c45-ed2761e15323)

According to the result 153 products are the maximum quantity ever ordered.  In this objective count is used for counting the product categories. Inner Join is used for join the two table Transactons and Prod_cat_info.  Group by and Order by are used for sorting the data.

# Bussiness Objective(6): What is the net total revenue generated in categories Electronics and Books?

 Bussiness solution

 Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/561aad40-e4f7-4d44-afd5-5aa91810058a)

 Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/a6a02d66-6e27-434f-b671-4cb9e7e3d549)

According to the result the net total revenue generated in categories Electronics and Books are 46645675.505. In this objective Sum is used for find the net total revenue. Inner Join is used for join the two table Transactons and Prod_cat_info. Where is used for filter the data.

# Bussiness Objective(7): How many customers have >10 transactions with us excluding returns?

 Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/23b157f2-1ddb-4604-986b-ba7c06759202)

 Result:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/f762cbd8-daa9-46fa-be1f-d0ae216ff18a)

According to the result 6 customers have >10 transactions with us excluding returns. In this objective CTEs are used for finding the solution. 

# Bussiness Objective(8): What is the combined revenue earned from the "Electronics "and "Clothing"categories from "Flagship store"?

Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/3e6620a2-34e3-4fec-b849-991466ca1fcc)

 Result:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/7460c446-2a3f-444d-9e90-96a9eb08ac1f)

According to the result 4349256.795 is the combined revenue earned from the "Electronics "and "Clothing"categories from "Flagship store".
In this objective inner Join is used for join the two table Transactons and Prod_cat_info. Where is used for filtering the data.

# Bussiness Objective(9): What is the total revenue generated from "Male" customers in "Electronic" category? Output should disply total revenue by prod sub_cat?

Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/1bdf96a9-08b7-4fcd-8dad-037c9ed0bc5b)


Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/594fbf67-9913-430d-868e-a73de0e28ad2)


According to the result 10947130.025  is the total revenue generated from "Male" customers in "Electronic" and total revenue by prod sub categories such us Personal Appliances, Mobiles, Computers, Audio and video and Camera of each category is 5703109.42500002.  In this objective Sum is used for find the total revenue. Inner Join is used for join the two table Transactons and Customers. Where is used for filter the data.

# Bussiness Objective(10): What is percentage of sale and returns by product sub category;display only top 5 sub categories in terms of sales?

Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/ec8d8638-4fac-4f72-8f99-fe4f2a18973c)

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/eb3aedac-1f17-481d-b6f6-8b5827630850)


Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/9f15045e-ec37-492a-a02e-e36ae0d10405)

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/dd50b434-ee8b-41d1-afd6-ec9d029c45dd)


According to the result  we get top 5 percentage of sale and returns by product sub category such as Women, Mens, Comics, Children and Academic. In this objective CTEs are used for finding the solution. inner Join is used for join the two table Transactons and Prod_cat_info. Where is used for filtering the data. Group by and Order by are used for sorting the data.


# Bussiness Objective(11): For all customers age between 25 to 35 years find what is the net total revenue generated by these customers in the last 30 days of transactions from max transaction date available in the data?

Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/179df5c2-b6e2-40a6-9ab9-5d6bcd1a34c1)

Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/23025cc1-9519-4c0c-bdaa-b1524907199c)

According to the result  the net total revenue generated by customers age between 25 to 35 years are 211997.565.  In this objective CTEs are used for finding the solution. inner Join is used for join the two table Transactons and Customers. Where is used for filtering the data. Group by and Order by are used for sorting the data.


# Bussiness Objective(12): Which product category has seen the maximum value of returns in the last 3 months of transactions?

Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/368b1526-9b18-4c26-9b61-c1fd7c210bf9)

Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/24a7f1ca-3f30-446d-b2f9-763b364851f8)

According to the result Home and kitchen has seen the maximum value of returns in the last 3 months of transactions. In this objective inner Join is used for join the two table Transactons and Prod_cat_info. Where is used for filtering the data. Group by used for sorting the data.

# Bussiness Objective(13): Which store_type sells the maximum products; by value of sales amount and by quantity sold?

Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/fe18bda3-c769-4594-a9b8-0c608c2fd17f)

Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/e435ea52-e4b8-444f-9396-295793fabafc)

According to the result  store_type  e-Shop  sells the maximum products by 22185609.8749999 sales amount and 8429 quantity sold.  In this objective count is used for counting the quantity sold and Sum is used for find the amount. Where is used for filtering the data. Group by and Order by are used for sorting the data.

# Bussiness Objective(14): What are the categories for which average revenue is above the overall average?

Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/0cf614a1-74d1-421b-b3ba-6926a7cf8eed)

Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/3eff0380-816c-4a1b-95f9-0b89ab134cf4)



According to the result Books, Clothing, Electronics are the 3 categories for which average revenue is above the overall average.  In this objective inner Join is used for join the two table Transactons and Prod_cat_info. Having is used for filtering the data. Group by used for sorting the data.


# Bussiness Objective(15): Find the average and total revenue by each subcategory for the categories which are among top 5 categories in terms of quantity sold?

Bussiness solution

Query:










