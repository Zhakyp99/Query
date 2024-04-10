select track.name as 'Track Name',
        album.title as 'Album Title',
        mediaType.name as 'Media Type name',
        genre.name as 'Genre Name'
from(((track inner join album on track.albumId = album.albumId)
    inner join mediaType on track.mediaTypeId = mediaType.mediaTypeId)
    inner join genre on track.genreId = genre.genreId);