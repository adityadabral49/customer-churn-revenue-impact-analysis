
SELECT *
FROM telecom_customers;
    
      # DATA VALIDATION
       
    select sum(case when MonthlyCharges is null then 1 else 0 end)as null_monthly
    , sum(case when tenure<0 then 1 else 0 end )as bad_tenure
    from telecom_customers;

# TOTAL CUSTOMERS

SELECT 
   COUNT(*)
FROM
    telecom_customers;
    
    SELECT Churn, count(*)
    from telecom_customers
    group by 1 ;
    
    # CHURN RATE
    
    Select round(100 *sum(case when Churn ='Yes' then 1 else 0 end)/count(*),2)as churn_rate
    from telecom_customers;
    
    # TOTAL REVENUE
    
    SELECT round(sum(MonthlyCharges),2)as total_revenue
    from telecom_customers;
    
    # REVENUE LOST DUE TO CHURN
    
      SELECT round(sum(MonthlyCharges),2)as churned_revenue
    from telecom_customers
    where Churn='Yes';
    
    # AVG REVENUE PER CHURNED CUSTOMER 
    
 SELECT round(avg(MonthlyCharges),2)as average_revenue
    from telecom_customers
    where Churn='Yes';
    
    #  SEGMENTATION ANALYSIS
    
    # CHURN BY CONTRACT
    
    SELECT Contract, count(*)as churned_customers
    from telecom_customers
    where Churn ='Yes'
    group by Contract 
    order by 2 desc;
    
    # CHURN BY TENURE BUCKET
    
    select case when Tenure <=6 then '0-6 months'
     when Tenure <=12 then '8-12 months' when Tenure <=24 then '1-2 years'
     else '2+ years' end as tenure_group
     ,count(*) as churned_customers
     from telecom_customers
     where Churn='Yes'
     group by 1
     order by 2 desc;
     
    # HIGH VALUE CUSTOMER CHURN
    
    select avg(MonthlyCharges)as avg_charges ,max(MonthlyCharges)as max_charges,Min(MonthlyCharges)min_charges
    from telecom_customers;
    
    select count(*) as high_value_churn
    from telecom_customers
    where Churn ='Yes' and MonthlyCharges >=90;
    
    # SEVICE IMPACT ANALYSIS 
    
    select TechSupport , count(*) as churned
    from telecom_customers
    where Churn= 'Yes'
    group by 1 ;
    
    # CHURN % BY SEGMENT 
    
    select InternetService, round(100 *sum(case when Churn ='Yes' then 1 else 0 end)/count(*),2)as churn_rate
    from telecom_customers
    group by 1
    order by 2 desc;

    # REVENUE CONCENTRATION 
    
    select Contract, round(sum(MonthlyCharges),2)as total_revenue , 
round(sum(case when Churn='Yes' then MonthlyCharges else 0 end),2)as churn_revenue
    from telecom_customers group by 1 ;
    
    # TOP RISK CUSTOMERS 
    
    select ï»¿customerID , Tenure, Contract,MonthlyCharges
    from telecom_customers
    where Churn = 'Yes'
    order by 4 desc
    limit 10;
    
    # View KPI
    
    create view churn_kpi as 
    select count(*) as total_customers, 
    sum(case when churn= 'Yes' then 1 else 0 end )as churned_customers,
    round(100 *sum(case when Churn ='Yes' then 1 else 0 end)/count(*),2)as churn_rate,
    round(sum(MonthlyCharges),2)as total_revenue , 
round(sum(case when Churn='Yes' then MonthlyCharges else 0 end),2)as churn_revenue
from telecom_customers;

create view churn_by_contract as 
select  Contract, count(*) as customers,sum(case when churn= 'Yes' then 1 else 0 end )as churned,
round(100 *sum(case when Churn ='Yes' then 1 else 0 end)/count(*),2)as churn_rate
from telecom_customers
group by 1;

# *************************************************************************************************************