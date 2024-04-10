SELECT
    SUM(invoice.total) AS sales,
    employee.firstname || ' ' || employee.lastname AS fullname

FROM
    employee
        INNER JOIN customer ON employee.employeeid = customer.supportrepid
        INNER JOIN invoice ON customer.customerid = invoice.customerid
GROUP BY
    fullname
ORDER BY
    sales DESC
    LIMIT 1;