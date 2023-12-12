-- Bài 1
select
name
from Students
where Marks > 75
order by right(name,3),id
-- Bài 2
select
user_id
,Concat(Upper(left(name,1)), Lower(right(name,length(name)-1))) as name
from Users
--Bài 3
SELECT manufacturer
,concat('$',Round((sum(total_sales)/1000000),0),' ','milion') as sale
FROM pharmacy_sales
group by manufacturer
order by sum(total_sales) desc, manufacturer
-- Bài 4
SELECT
extract (month from submit_date) as mth
,product_id as product
,round(avg(stars),2) as avg_stars
FROM reviews
group by extract (month from submit_date),product_id
order by extract (month from submit_date), product_id
-- bài 5
SELECT
sender_id
,count(message_id) as message_count
FROM messages
where extract(month from sent_date)=8
AND
extract(year from sent_date)= 2022
group by sender_id, extract(month from sent_date)
order by message_count desc
limit 2
-- Bài 6
select
tweet_id
from Tweets
where length(content ) >15
------------------------------ Bài 7. hic, chữa bài 7 cho chị với chị đọc hông hỉu j hớt
-- Bài 8
select
count(id)
from employees
where extract(month from joining_date) between 1 and 7
and extract(year from joining_date) =2022
-- Bài 9
select
first_name
,position('a' in first_name)
from worker
where first_name = 'Amitah'
-- Bài 10
select
substring(title,length(winery)+2,4)
from winemag_p2
where country = 'Macedonia'

