-- 09 produk perkategori  presentase

-- Berapa persentase kontribusi pendapatan masing-masing kategori terhadap total pendapatan perusahaan?

select
	p.category,
	sum(f.total_harga) as total_pendapatan,
	round(
		sum(f.total_harga)::numeric/
		(
			select sum(total_harga)
			from fact_penjualan
		)*100, 2
	) as persen_kontribusi
from dim_produk as p
inner join fact_penjualan as f
	on p.product_id = f.product_id
group by p.category
order by persen_kontribusi desc;