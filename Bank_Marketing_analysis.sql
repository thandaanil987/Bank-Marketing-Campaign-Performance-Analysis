create database DA_Projects;
use DA_Projects;

-- rename table name 
RENAME TABLE bank_marketing_cleaned TO bank_marketing;
show tables;

-- rename column names as well;
ALTER TABLE bank_marketing
RENAME COLUMN `default` TO credit_default;

ALTER TABLE bank_marketing
RENAME COLUMN duration TO contact_duration_seconds;

ALTER TABLE bank_marketing
RENAME COLUMN campaign TO current_campaign_contacts;

ALTER TABLE bank_marketing
RENAME COLUMN pdays TO days_since_previous_contact;

ALTER TABLE bank_marketing
RENAME COLUMN previous TO previous_campaign_contacts;

ALTER TABLE bank_marketing
RENAME COLUMN poutcome TO previous_campaign_result;

ALTER TABLE bank_marketing
RENAME COLUMN y TO subscription_result;


ALTER TABLE bank_marketing
RENAME COLUMN `emp.var.rate` TO employment_variation_rate;

ALTER TABLE bank_marketing
RENAME COLUMN `cons.price.idx` TO consumer_price_index;

ALTER TABLE bank_marketing
RENAME COLUMN `cons.conf.idx` TO consumer_confidence_index;

ALTER TABLE bank_marketing
RENAME COLUMN euribor3m TO three_month_interest_rate;

ALTER TABLE bank_marketing
RENAME COLUMN `nr.employed` TO employment_level;


-- verify the data 
select count(*)as total_records from bank_marketing;

-- check records for understanding
select*from bank_marketing
limit 5;

-- overal campaign performance
select count(*)as total_customers,
sum(subscribed_flag)as total_subscribers,
count(*)-sum(subscribed_flag)as non_subscribers,
round(avg(subscribed_flag)*100,2)as subscription_rate 
from bank_marketing;

-- subscription performance by job
select job,count(*)as total_customers,
sum(subscribed_flag)as total_subscribers,
round(avg(subscribed_flag)*100,2)as subscription_rate
from bank_marketing 
group by job
order by subscription_rate desc;

-- Subscription Performance by Age Group
select age_group, count(*)as total_customers,
sum(subscribed_flag)as total_subscribers,
round(avg(subscribed_flag)*100,2)as subscription_rate
from bank_marketing 
group by age_group
order by subscription_rate desc;

-- Contact Method Performance
select contact, count(*)as total_customers,
sum(subscribed_flag)as total_subscribers,
round(avg(subscribed_flag)*100,2)as subscription_rate
from bank_marketing 
group by contact
order by subscription_rate desc;


--  Previous Campaign Outcome
select previous_campaign_result, count(*)as total_customers,
sum(subscribed_flag)as total_subscribers,
round(avg(subscribed_flag)*100,2)as subscription_rate
from bank_marketing 
group by previous_campaign_result
order by subscription_rate desc; 

-- Monthly Campaign Performance

select month,count(*)as total_customers,
sum(subscribed_flag)as total_subscribers,
round(avg(subscribed_flag)*100,2)as subscription_rate
from bank_marketing 
group by month
order by subscription_rate desc; 

-- Number of Contacts vs Subscription Results
SELECT
    case 
        WHEN current_campaign_contacts = 1 THEN '1 Contact'
        WHEN current_campaign_contacts BETWEEN 2 AND 3 THEN '2-3 Contacts'
        WHEN current_campaign_contacts BETWEEN 4 AND 5 THEN '4-5 Contacts'
        ELSE '6+ Contacts'
    end AS contact_group,
    
    COUNT(*) AS total_customers,
    SUM(subscribed_flag) AS subscribers,
    ROUND(AVG(subscribed_flag) * 100, 2) AS subscription_rate
from bank_marketing
GROUP BY
    Case
        WHEN current_campaign_contacts = 1 THEN '1 Contact'
        WHEN current_campaign_contacts BETWEEN 2 AND 3 THEN '2-3 Contacts'
        WHEN current_campaign_contacts BETWEEN 4 AND 5 THEN '4-5 Contacts'
        ELSE '6+ Contacts'
    end
ORDER BY subscription_rate DESC;

-- Customer Segments Worth Investigating

SELECT
    age_group,
    job,
    COUNT(*) AS total_customers,
    SUM(subscribed_flag) AS subscribers,
    ROUND(AVG(subscribed_flag) * 100, 2) AS subscription_rate
FROM bank_marketing
GROUP BY age_group, job
HAVING COUNT(*) >= 50
ORDER BY subscription_rate DESC;

