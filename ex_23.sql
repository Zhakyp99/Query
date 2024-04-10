select track.name,count(invoiceLine.quantity)
from track inner join invoiceLine
                      on track.trackid = invoiceLine.trackid
group by track.name;