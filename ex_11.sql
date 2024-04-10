select invoiceLine.invoiceId, track.name
from (invoiceLine inner join track on invoiceLine.trackId = track.trackId);