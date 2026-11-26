-- Top 10 Best Performing Products.

-- Skenario bisnis:
-- Manajemen ingin mengetahui produk apa saja yang memberikan kontribusi pendapatan terbesar bagi perusahaan.
-- Saya diminta membuat laporan Top 10 Best Performing Products.
-- jawab:
-- 1. product pendapatan terbesar
-- 2. 10 product terbesar

select
	p.product_id,
	p.product_name,
	p.category,
	sum(f.qty) as total_unit_terjual,
	sum(f.total_harga) as pendapatan
from dim_produk as p
inner join fact_penjualan as f
	on p.product_id = f.product_id
group by p.product_id, p.product_name, p.category
order by pendapatan desc
limit 10;