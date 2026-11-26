-- Category Performance Analysis
-- Pertanyaan Bisnis:
-- Kategori produk mana yang menghasilkan pendapatan terbesar, memiliki volume penjualan tertinggi, dan berapa banyak produk yang terjual?
-- jawaban:
-- 1. categori produk pendapatan terbesar
-- 2. volume penjualan tertinggi
-- 3. jumlah produk yang terjual

select
	p.category,
	count(distinct f.product_id) as jumlah_produk,
	sum(f.qty) as total_unit_terjual,
	sum(f.total_harga) as total_pendapatan,
	round(avg(p.selling_price)::numeric,2) as rata_rata_Pendapatan
from fact_penjualan as f
inner join dim_produk as p
	on f.product_id = p.product_id
group by p.category
order by total_pendapatan desc;