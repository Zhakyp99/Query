select track.name,count(invoiceLine.quantity) as quantity
from track inner join invoiceLine
                      on track.trackid = invoiceLine.trackid
group by track.name
order by quantity desc
    limit 5;