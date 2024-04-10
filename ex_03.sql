select customer.FirstName || ' ' ||customer.LastName as FullName,
       invoice.InvoiceId,invoice.InvoiceDate,
       invoice.BillingCountry from customer inner join invoice
                                                       on customer.CustomerId = invoice.CustomerId where country = 'Brazil';