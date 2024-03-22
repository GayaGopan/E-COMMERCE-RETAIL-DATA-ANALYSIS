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

# Business Problems and Solutions:

# Bussiness Objective(1): Which channel is most frequently used for Transactions?

Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/208b44a8-f814-4b5b-8210-133257bab4f3)

 Result:
 
![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/733d20a9-69b5-45c9-b1ec-8300d8e6f18e)

Methods used: 

Filter -WHERE
Sorting clause - ORDER BY

According to the result most frequently used channel for Transactions is e_shop, 9311 customers are used it for their transactions.

# Bussiness Objective(2): What is the count of Male and Female customers in the database?

Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/450a0dca-c6c5-49bf-81a9-dce0497d7a42)

 Result:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/298ce5d7-10c9-486d-85b4-c4577d57a259)

 Methods used: 

 Sorting clause - ORDER BY

 According to the result the count of Male is 2892 and Female is 2753.

 # Bussiness Objective(3):From which city do we have the maximum number of customers and how many?

 Bussiness solution

 Query:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/10bdddbe-96b4-46aa-9258-b3d28f4ba3f0)


 Result:

  ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/e8d9b539-a8f2-4426-b339-932f6a1da46c)


Methods used: 

  Filter -WHERE
  Sorting clause - ORDER BY

 According to the result  city_code 10 have the maximum number of customers and it have  558 customers.

 # Bussiness Objective(4): How many sub_categories are there under the books category?

 Bussiness solution

 Query:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/c11a06b9-230a-4c94-b610-bba6dcc372fc)


 Result:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/c6bbb670-dab1-435e-89ae-ab4716ef60c9)

Methods used: 

Filter -WHERE
Sorting clause - ORDER BY

According to the result 6 sub_categories are there under the books category.

# Bussiness Objective(5): What is the maximum quantity of products ever ordered?

 Bussiness solution

 Query:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/bd50093e-a45b-4704-ba7e-d9da179ad6ef)

  Result:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/384daf08-885d-4678-8331-247213498f6a)


According to the result 5 is the maximum quantity of products ever ordered.

 
# Bussiness Objective(6): What is the net total revenue generated in categories Electronics and Books?

 Bussiness solution

 Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/561aad40-e4f7-4d44-afd5-5aa91810058a)

  Result:

  ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/a6a02d66-6e27-434f-b671-4cb9e7e3d549)

Methods used: 

Filter -WHERE
Self Join - INNER JOIN

According to the result 46645675.505 is the net total revenue generated in categories Electronics and Books.


# Bussiness Objective(7): How many customers have >10 transactions with us excluding returns?

 Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/0e287ac3-df1f-410c-8912-a530da75a4ae)

 Result:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/6168bd5f-83c6-481e-ac88-34fe494ff545)

Methods used: 

Filter - HAVING

According to the result 13929 customers have >10 transactions with us excluding returns.


# Bussiness Objective(8): What is the combined revenue earned from the "Electronics "and "Clothing"categories from "Flagship store"?

Bussiness solution

Query:

![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/3e6620a2-34e3-4fec-b849-991466ca1fcc)

 Result:

 ![image](https://github.com/GayaGopan/E-COMMERCE-RETAIL-DATA-ANALYSIS/assets/164141178/7460c446-2a3f-444d-9e90-96a9eb08ac1f)

Methods used: 

Filter -WHERE
Self Join - INNER JOIN

According to the result 4349256.795 is the combined revenue earned from the "Electronics "and "Clothing"categories from "Flagship store".


