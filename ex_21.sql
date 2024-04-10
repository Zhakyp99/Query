SELECT
    count(customer.customerid) AS customerNumber,
    employee.firstname || ' ' || employee.lastname AS fullnameEmployee

FROM
    ((employee
        INNER JOIN customer ON employee.employeeid = customer.supportrepid)
        INNER JOIN invoice ON customer.customerid = invoice.customerid)
GROUP BY
    fullnameEmployee;