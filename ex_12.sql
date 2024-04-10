select invoiceLine.invoiceId, track.name, artist.name
from (((invoiceLine inner join track on invoiceLine.trackId = track.trackId)
    inner join album on album.albumId = track.albumId)
    inner join artist on album.artistId = artist.artistId);