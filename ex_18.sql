select
    sum(invoice.total) as sales,
    employee.firstname || ' ' || employee.lastname as fullname
from
    employee
        inner join customer on employee.employeeid = customer.supportrepid
        inner join invoice on customer.customerid = invoice.customerid
where
    strftime('%Y', invoice.invoicedate) = '2009'
group by
    employee.employeeid, employee.firstname, employee.lastname;