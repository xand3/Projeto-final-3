select count(year) as quantidade_de_corridas, year as ano 
	from races
		where year in ('2005', '2006', '2007', '2008', '2009')
			group by year order by year;