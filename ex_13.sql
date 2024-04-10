select sum(invoiceLine.quantity) as Quantity,
       invoice.billingCountry from(invoiceLine inner join
    invoice on invoiceLine.invoiceId = invoice.invoiceId)
group by invoice.billingCountry;