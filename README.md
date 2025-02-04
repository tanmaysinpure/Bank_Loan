# Bank_Loan

### **README: Bank Loan Analysis & Risk Assessment**  

## **📌 Project Overview**  
This project analyzes bank loan data to assess borrower risk, optimize loan approval strategies, and improve portfolio management. By examining loan trends, borrower profiles, and repayment behaviors, it helps banks reduce defaults and enhance financial decision-making.  

## **📂 Dataset**  
- **Source:** Kaggle  
- **Size:** 38,577 rows × 24 columns  
- **Fields Used:**  
  `id`, `address_state`, `application_type`, `emp_length`, `emp_title`, `grade`, `home_ownership`, `issue_date`, `last_credit_pull_date`, `last_payment_date`, `loan_status`, `next_payment_date`, `member_id`, `purpose`, `sub_grade`, `term`, `verification_status`, `annual_income`, `dti`, `installment`, `int_rate`, `loan_amount`, `total_acc`, `total_payment`  

## **🎯 Business Problem**  
This project focuses on **loan default risk and profitability optimization** by analyzing borrower data to:  
✔ Identify high-risk borrowers  
✔ Optimize loan approval and funding decisions  
✔ Analyze loan repayment patterns  
✔ Enhance financial planning and risk management  

## **🛠️ Tools & Technologies Used**  
- **SQL** – Data extraction, transformation, and KPI calculations  
- **Power BI** – Data visualization and dashboard creation  


### **Key Insights**

#### **1. Loan Application Overview**
- **Total Applications:** 38.6K (MTD: 4.3K, MoM +6.9%)
- **Total Funded:** $435.8M (MTD: $54.0M, MoM +13.0%)
- **Total Received:** $473.1M (MTD: $58.1M, MoM +15.8%)

#### **2. Loan Quality Breakdown**
- **Good Loans:** 33K (86.2%) | Funded: $370.2M | Received: $435.8M
- **Bad Loans:** 5K (13.8%) | Funded: $65.5M | Received: $37.3M

#### **3. Risk & Performance Metrics**
- **Avg Interest Rate:** 12.0% (MTD: 12.4%, MoM +3.5%)
- **Avg Debt-to-Income (DTI):** 13.3% (MTD: 13.7%, MoM +2.7%)
- **Charged-Off Loans:** 5,333 | Funded: $655.3M | Received: $372.8M | Interest: 13.88% | DTI: 14.00%

#### **4. Loan Status Breakdown**
- **Fully Paid:** 32,145 | Funded: $3.51B | Received: $4.11B | Interest: 11.64% | DTI: 13.17%
- **Current Loans:** 1,098 | Funded: $188.7M | Received: $242M | Interest: 15.10% | DTI: 14.72%

#### **5. Key Risk Areas & Trends**
- **High Default Segments:** Charged-off loans have high interest rates (13.88%) and DTI (14.00%), increasing risk.
- **State-wise Trends:** Some states show high funding but inconsistent repayments, requiring deeper analysis.
- **Longer Tenure Loans:** Higher risk due to increased interest accumulation and higher DTI borrowers.
- **Loan Purpose Impact:** Debt consolidation loans perform well, while small business and discretionary loans (e.g., weddings, vacations) show higher defaults.
- **Home Ownership Factor:** Homeowners have better repayment rates; renters show higher defaults due to financial instability.

### **Key Takeaways**
✅ **Charged-off loans pose a major risk; high interest & DTI contribute to defaults.**  
✅ **State-wise loan behavior varies; regional risk assessment needed.**  
✅ **Longer tenure & high DTI loans are more prone to defaults.**  
✅ **Debt consolidation loans are safer; small business & discretionary loans riskier.**  
✅ **Homeowners have better repayment trends compared to renters.**  


This project provides valuable insights into loan performance, borrower behavior, and risk assessment, enabling banks to make data-driven lending decisions.  
