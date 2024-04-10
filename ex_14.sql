select count(track.trackId) as track_quantity,playlist.name
from((track inner join playlistTrack on track.trackId = playlistTrack.trackId)
    inner join playlist  on playlistTrack.playlistId = playlist.playlistId);