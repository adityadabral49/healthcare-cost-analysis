--           HEALTHCARE COST ANALYSIS

select *
from members;

select *
from claims;

select *
from members
where member_id is null;

select *
from claims
where member_id is null;

-- Q1. Which claim types are the most expensive?
with claim_summary as
(
select claim_type , count(*)as number_of_claims , sum(billed_amount)as Total_billed_amount , 
sum(paid_amount)as Total_paid_amount 
from claims
group by claim_type
)
select  dense_rank( ) over( order by Total_paid_amount  desc) as Ranking,
 claim_type, number_of_claims,Total_billed_amount, Total_paid_amount

from  claim_summary ;

-- Q2. Which CPT and ICD codes drive the highest spending?

-- cpt code
select  cpt_code , count(*)as number_of_claims, sum(paid_amount)as Total_paid_amount
 ,sum(paid_amount)/count(*)  as Avg_pay_per_claim 
from claims
group by cpt_code
order by 3 desc
limit 10;


-- ICD code
select  icd_code , count(*)as number_of_claims, sum(paid_amount)as Total_paid_amount
 ,sum(paid_amount)/count(*)  as Avg_pay_per_claim 
from claims
group by icd_code
order by 3 desc
limit 10;

-- Q3. Which members account for the largest share of total costs?

-- All Members total paid amount
select member_id , sum(paid_amount) as Total_paid_amount
from claims
group by  member_id
order by 1 ;

-- Top 10 members by paid amount
select member_id , sum(paid_amount) as Total_paid_amount
from claims
group by  member_id
order by 2 desc
limit 10;
 
-- Top 5 High-Cost members - Claim Type breakdown
WITH member_total AS (
    SELECT member_id,SUM(paid_amount) AS total_paid
    FROM claims
    GROUP BY member_id),
top_members AS (
    SELECT member_id
    FROM member_total
    ORDER BY total_paid DESC
    limit 5)
SELECT c.member_id,c.claim_type,SUM(c.paid_amount) AS Total_paid_cost
FROM claims c
JOIN top_members t 
ON c.member_id = t.member_id
join member_total mt 
on c.member_id = mt.member_id 
GROUP BY c.member_id, c.claim_type
ORDER BY mt.total_paid desc,Total_paid_cost  DESC;

-- Q4, How do billed amounts compare to paid amounts?

-- Overall Ratio
 SELECT SUM(billed_amount) AS total_billed_amount,SUM(paid_amount)   AS total_paid_amount,
ROUND(SUM(paid_amount) * 1.0 / NULLIF(SUM(billed_amount), 0),2) AS paid_ratio
FROM claims;

-- Claim Type
SELECT claim_type, SUM(billed_amount) AS total_billed_amount,SUM(paid_amount)   AS total_paid_amount,
    ROUND(SUM(paid_amount) * 1.0 / NULLIF(SUM(billed_amount), 0),2) AS paid_ratio
FROM claims
GROUP BY claim_type
ORDER BY total_billed_amount DESC;

-- CPT code 
SELECT cpt_code,COUNT(*) AS total_claims, SUM(billed_amount) AS total_billed_amount,
SUM(paid_amount)   AS total_paid_amount,
ROUND(SUM(paid_amount) * 1.0 / NULLIF(SUM(billed_amount), 0),2) AS paid_ratio
FROM claims
GROUP BY cpt_code
ORDER BY total_billed_amount DESC;

-- Provider
select *
from claims;

SELECT provider_id,COUNT(*) AS total_claims, SUM(billed_amount) AS total_billed_amount,
SUM(paid_amount)   AS total_paid_amount,
ROUND(SUM(paid_amount) * 1.0 / NULLIF(SUM(billed_amount), 0),2) AS paid_ratio
FROM claims
GROUP BY provider_id
ORDER BY total_billed_amount DESC;

