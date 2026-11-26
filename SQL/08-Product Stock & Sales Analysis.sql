-- Product Stock & Sales Analysis
-- Pertanyaan Bisnis:
-- "Produk mana yang memiliki stok rendah tetapi permintaan penjualannya tinggi?" dan Tampilkan hanya produk yang memiliki total penjualan minimal 15 unit.

-- Kolom yang dibutuhkan:
-- - product_id
-- - product_name
-- - category
-- - stock_qty
-- - qty


select
	p.product_id,
	p.product_name,
	p.category,
	p.stock_qty as stok_tersedia,
	sum(f.qty) as unit_terjual,
CASE
    WHEN p.stock_qty <= 50
         AND SUM(f.qty) >= 15
    THEN 'Risiko Tinggi'
    WHEN p.stock_qty <= 50
         AND SUM(f.qty) < 15
    THEN 'Risiko Sedang'
    ELSE 'Risiko Rendah'
END AS risiko_stok
from dim_produk as p
inner join fact_penjualan as f
	on p.product_id = f.product_id
group by
	p.product_id,
	p.product_name,
	p.category,
	p.stock_qty
having sum(f.qty) >=15
order by stok_tersedia asc;