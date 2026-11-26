-- Revenue Contribution Analysis

-- Saya membayangkan bekerja sebagai Data Analyst di perusahaan retail.
-- Manajemen ingin mengetahui:
-- - Produk mana yang memberikan kontribusi pendapatan terbesar?
-- - Berapa persen kontribusi pendapatan setiap produk terhadap total pendapatan perusahaan?
-- - Produk mana yang menjadi kontributor utama bisnis?

select
	p.product_id,
	p.product_name,
	p.category,
	sum(f.total_harga) as total_pendapatan,
	round(
		sum(f.total_harga)::numeric/
			(
				select sum(total_harga)
				from fact_penjualan
			) * 100,2
		) as kontribusi_persen
from dim_produk as p
inner join fact_penjualan as f
	on p.product_id = f.product_id
group by
	p.product_id,
	p.product_name,
	p.category
limit 10;