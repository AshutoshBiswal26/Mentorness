use mentorness;
show tables;
select * from walmartdata where Branch="A";

select Product_line, round(sum(total)) as total_sales from walmartdata group by Product_line;

select * from walmartdata where Payment= 'Cash';

select city, round(sum(gross_income)) as total_gross_income from walmartdata group by city;

select branch, round(avg(rating),2)  as avg_rating from walmartdata group by branch;

select * from walmartdata;
select Product_line, sum(Quantity) as total_quantity from walmartdata group by Product_line;

select Invoice_ID, product_line, Unit_price from walmartdata order by unit_price desc limit 5;

select Invoice_ID, Total, cogs, (Total-cogs) as gross_profit from walmartdata having gross_profit >30;

select Total, date_format(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m-%d') as transaction_data from walmartdata where dayofweek(date_format(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m-%d')) in (5,6);

select city, sum(total) as total_sales, sum(total - cogs) as gross_income from walmartdata group by city order by total_sales;

select date_format(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m') as month, sum(Total) as total_sales, sum(Total - cogs) as gross_income from walmartdata group by date_format(STR_TO_DATE(Date, '%Y-%m-%d'), '%Y-%m')
order by month;

select count(*) as number_of_transactions from walmartdata where time(Time) > '18:00:00';

select * from walmartdata where Total > (select avg(Total) from walmartdata);

select Branch, Date, sum(gross_income) from walmartdata group by Branch,Date;

select City, sum(cogs) as total_cogs from walmartdata group by city;