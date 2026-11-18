-- Retail Banking Profitability & P&L Analysis
-- Table: branch_pl(month, branch, region, product, interest_income_lakh, fee_income_lakh, operating_cost_lakh, staff_cost_lakh, other_cost_lakh, customers)

-- 1) Monthly P&L trend (revenue, cost, profit, cost-to-income)
SELECT month,
  ROUND(SUM(interest_income_lakh + fee_income_lakh), 2) AS revenue_lakh,
  ROUND(SUM(operating_cost_lakh + staff_cost_lakh + other_cost_lakh), 2) AS cost_lakh,
  ROUND(SUM(interest_income_lakh + fee_income_lakh - operating_cost_lakh - staff_cost_lakh - other_cost_lakh), 2) AS profit_lakh,
  ROUND(SUM(operating_cost_lakh + staff_cost_lakh + other_cost_lakh) * 100.0 / NULLIF(SUM(interest_income_lakh + fee_income_lakh),0), 2) AS cost_to_income_pct
FROM branch_pl GROUP BY month ORDER BY month;

-- 2) Product-wise profitability
SELECT product,
  ROUND(SUM(interest_income_lakh + fee_income_lakh), 2) AS revenue_lakh,
  ROUND(SUM(interest_income_lakh + fee_income_lakh - operating_cost_lakh - staff_cost_lakh - other_cost_lakh), 2) AS profit_lakh
FROM branch_pl GROUP BY product ORDER BY profit_lakh DESC;

-- 3) Region-wise performance
SELECT region,
  ROUND(SUM(interest_income_lakh + fee_income_lakh), 2) AS revenue_lakh,
  ROUND(SUM(interest_income_lakh + fee_income_lakh - operating_cost_lakh - staff_cost_lakh - other_cost_lakh), 2) AS profit_lakh
FROM branch_pl GROUP BY region ORDER BY profit_lakh DESC;

-- 4) Top & bottom branches by profit
SELECT branch, region,
  ROUND(SUM(interest_income_lakh + fee_income_lakh - operating_cost_lakh - staff_cost_lakh - other_cost_lakh), 2) AS profit_lakh
FROM branch_pl GROUP BY branch, region ORDER BY profit_lakh DESC;

-- 5) Income mix (interest vs fee) by month
SELECT month, ROUND(SUM(interest_income_lakh), 2) AS interest_income_lakh, ROUND(SUM(fee_income_lakh), 2) AS fee_income_lakh
FROM branch_pl GROUP BY month ORDER BY month;
