SELECT
    invoice.billingCountry, sum(invoice.total) as Total

FROM
    ((employee
        INNER JOIN customer ON employee.employeeid = customer.supportrepid)
        INNER JOIN invoice ON customer.customerid = invoice.customerid)
GROUP BY
    invoice.billingCountry
order by Total desc;