select invoice.InvoiceId,
       employee.FirstName || ' ' || employee.LastName as FullName
from((employee inner join customer on employee.EmployeeId = customer.SupportRepId)
    inner join invoice on customer.CustomerId = invoice.InvoiceId) where Title like '%sales%';