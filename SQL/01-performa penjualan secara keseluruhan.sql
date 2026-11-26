-- Business Case 01 — Overall Sales Performance
-- Skenario bisnis:
-- Manajer perusahaan ingin mengetahui performa penjualan secara keseluruhan.
-- Pertanyaan bisnis:
-- 1. Berapa total transaksi yang tercatat?
-- 2. Berapa total unit produk yang terjual?
-- 3. Berapa total pendapatan perusahaan?
-- 4. Berapa rata-rata nilai transaksi?


select
	count(distinct transaksi_id) as total_transaksi,
	sum(qty) as total_unit_terjual,
	sum(total_harga) as total_pendapatan,
	round(avg(total_harga)::numeric,2) as rata_rata_pendapatan
from fact_penjualan;