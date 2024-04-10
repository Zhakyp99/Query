select
    invoicedate,
    sum(total) as totalsum
from
    invoice
where
    strftime('%Y', invoicedate) in ('2009', '2011')
group by
    invoicedate;