-- customers that cancelled or have a disputed order
SELECT * FROM orders 
WHERE status="Cancelled" 
OR status="On Hold" 
OR status="Disputed" 
OR status="In Process";