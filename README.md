# Retail Banking Profitability & P&L Dashboard

SQL + dashboard project analyzing **branch and product profitability** for a retail bank — revenue mix, cost structure, cost-to-income ratio, and profit drivers.

## Business Problem
Banks must balance growth with efficiency. Understanding **where profit comes from** (products/branches/regions) and tracking **cost-to-income** helps prioritize pricing, cost control, and resource allocation.

## Dataset
Synthetic monthly P&L data (`data/branch_pl.csv`, 720 rows: 12 branches × 5 products × 12 months).
- Fields: `month, branch, region, product, interest_income_lakh, fee_income_lakh, operating_cost_lakh, staff_cost_lakh, other_cost_lakh, customers`

## Key Insights
- **Monthly trend:** revenue, cost, profit and cost-to-income ratio tracked over the year.
- **Product profitability:** compares products on revenue vs profit contribution.
- **Region & branch view:** identifies top/bottom performers to focus efficiency and growth actions.

## Analysis & Dashboard
- `sql/analysis.sql` — monthly P&L trend, product/region/branch profitability, income mix.
- `dashboard/index.html` — interactive dashboard (Chart.js): KPIs, revenue-cost-profit trend, cost-to-income, product & region profit, top/bottom branches.

Open `dashboard/index.html` in a browser to view the dashboard.

## Tools
- SQL (aggregation & P&L metrics)
- HTML/CSS/JavaScript + Chart.js

## Repo Structure
```
retail-bank-profitability-dashboard/
├── data/branch_pl.csv
├── sql/analysis.sql
├── dashboard/index.html
└── README.md
```
