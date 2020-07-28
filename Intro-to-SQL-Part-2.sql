select *
from albums;

select *
from albums a 
where title like '%cellos%';

select a.title, g.name
from albums a 
inner join tracks t
using (albumId)
inner join genres g 
using (genreId)
where a.title like '%cellos%';

select distinct a.title, g.name
from albums a 
inner join tracks t
using (albumId)
inner join genres g 
using (genreId)
where a.title like '%cellos%';

SELECT AlbumId, Title, ArtistId
FROM albums;

select t.name, t.composer
from tracks t;

select * from media_types mt;

select *
from tracks t
inner join media_types mt 
on t.MediaTypeId = mt.MediaTypeId
where mt.MediaTypeId = 4;

select t.name,t.composer,g.name
from tracks t
inner join media_types mt 
on t.MediaTypeId = mt.MediaTypeId
inner join genres g
on g.GenreId = t.GenreId 
where mt.MediaTypeId = 4;

select t.name,t.composer,g.name,a2.name
from tracks t
inner join media_types mt 
on t.MediaTypeId = mt.MediaTypeId
inner join genres g
on g.GenreId = t.GenreId 
inner join albums a1
on a1.AlbumId = t.AlbumId 
inner join artists a2 
on a2.ArtistId = a1.ArtistId 
where mt.MediaTypeId = 4;

select g.name,count(*)
from tracks t
inner join media_types mt 
on t.MediaTypeId = mt.MediaTypeId
inner join genres g
on g.GenreId = t.GenreId 
inner join albums a1
on a1.AlbumId = t.AlbumId 
inner join artists a2 
on a2.ArtistId = a1.ArtistId 
where mt.MediaTypeId = 4
group by g.name;

-- Which countries have the most invoices?

-- How many tracks were purchase in the USA?

-- What is the email and first/last name of people who purchased Classical music?
