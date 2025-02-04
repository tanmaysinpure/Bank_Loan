select * from financial_loan limit 5;

select count(*) as Total_Application_ID from financial_loan; 

select count(id) as MTD_Total_Loan_Application from financial_loan
where month(issue_date) =12 and year(issue_date)=2021;

select count(id) as PMTD_Total_Loan_Application from financial_loan
where month(issue_date) =11;

select sum(loan_amount) as Total_Fund_Amount from financial_loan;

select sum(loan_amount) as MTD_Total_Fund_Amount from financial_loan
where month(issue_date)=12;

select sum(loan_amount) as PMTD_Total_Fund_Amount from financial_loan
where month(issue_date)=11;


Select sum(total_payment) as Total_Payment_Recevied from financial_loan;

Select sum(total_payment) as MTD_Total_Payment_Recevied from financial_loan
where month(issue_date)=12;

Select sum(total_payment) as PMTD_Total_Payment_Recevied from financial_loan
where month(issue_date)=11;

select Round(avg(int_rate),4) * 100 as Average_Interest_Rate from financial_loan;

select Round(avg(int_rate),4) * 100 as MTD_Average_Interest_Rate from financial_loan
where month(issue_date)=12;

select Round(avg(int_rate),4) * 100 as PMTD_Average_Interest_Rate from financial_loan
where month(issue_date)=11;


select Round(avg(dti),4) * 100 as Debt_to_Income from financial_loan;

select Round(avg(dti),4) * 100 as MTD_Debt_to_Income from financial_loan
where month(issue_date)=12;

select Round(avg(dti),4) * 100 as PTMD_Debt_to_Income from financial_loan
where month(issue_date)=11;


# GOOD LOAN
select 
(count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)) 
/
count(id) *100 as Good_loan_Percentage 
from financial_loan;


select count(id) as Good_loan_Application from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';

select sum(loan_amount) as Good_loan_Funded_Amount from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';

select sum(total_payment) as Good_loan_Received_Amount from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';



#BAD LOAN
select 
(count(case when loan_status = 'Charged Off' then id end)*100) 
/
count(id)  as Bad_loan_Percentage 
from financial_loan;


select count(id) as Bad_loan_Application  from financial_loan
where loan_status='Charged Off';


select sum(loan_amount) as Bad_loan_Funded_Amount from financial_loan
where loan_status ='Charged Off';


select sum(total_payment) as Bad_loan_Received_Amount from financial_loan
where loan_status = 'Charged Off';

select * from financial_loan;



select loan_status,count(id) as Total_loan_Application,
sum(total_payment) as Total_Amount_Received,
sum(loan_amount) as Total_funded_Amount,
avg(int_rate * 100) as Avg_rate_Percentage,
avg(dti * 100) as Avg_dti_Percentage
from financial_loan 
group by loan_status;




select loan_status,
sum(total_payment) as MTD_Total_Amount_Received,
sum(loan_amount) as MTD_Total_funded_Amount
from financial_loan 
where month(issue_date) = 12
group by loan_status;


select * from financial_loan;


select month(issue_date) as Month_No ,Date_Format(issue_date, '%M') as Month_Name, 
count(id) as Total_Application,
sum(loan_amount) as Total_Amount_Funded,
sum(total_payment) as Total_Amount_Received
from financial_loan
group by Month_No,Month_Name
order by Month_No,Month_Name;


select address_state,
count(id) as Total_Application,
sum(loan_amount) as Total_Amount_Funded,
sum(total_payment) as Total_Amount_Received
from financial_loan
group by  address_state
order by  Total_Amount_Funded desc;


SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Amount_Funded,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY Term
ORDER BY Term


SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Amount_Funded,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY emp_length
ORDER BY emp_length




select purpose,
count(id) as Total_Application,
sum(loan_amount) as Total_Amount_Funded,
sum(total_payment) as Total_Amount_Received
from financial_loan
group by  purpose
order by  Total_Amount_Funded desc;


select home_ownership,
count(id) as Total_Application,
sum(loan_amount) as Total_Amount_Funded,
sum(total_payment) as Total_Amount_Received
from financial_loan
group by  home_ownership
order by  Total_Amount_Funded desc;
