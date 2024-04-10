select invoice.Total,customer.FirstName || ' ' ||customer.LastName as
    CustomerFullName,
       invoice.BillingCountry,
       employee.FirstName || ' ' || employee.LastName as
    EmpployeeFullName
from((employee inner join customer on employee.EmployeeId = customer.SupportRepId)
    inner join invoice on customer.CustomerId = invoice.InvoiceId);