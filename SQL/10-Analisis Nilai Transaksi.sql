-- Analisis Nilai Transaksi

-- Latar belakang bisnis
-- Manajemen ingin mengetahui karakteristik transaksi penjualan.

-- Ada beberapa pertanyaan yang ingin dijawab:
-- 1. Berapa rata-rata nilai transaksi?
-- 2. Berapa nilai (jumlah) transaksi tertinggi dan terendah?
-- 3. Transaksi mana yang menghasilkan pendapatan terbesar?
-- 4. Bagaimana distribusi transaksi berdasarkan nilai penjualannya?

select
	count(*) as total_transaksi,
	sum(total_harga) as total_pendapatan,
	max(total_harga) as transaksi_tertinggi,
	min(total_harga) as transaksi_terendah,
	round(avg(total_harga)::numeric,2) as rata_rata_jumlah_transaksi
from fact_penjualan;

-- Challenge 2: mencari 10 transaksi dengan nilai pendapatan tertinggi
-- Manajemen ingin mengetahui:
-- Transaksi mana yang menghasilkan pendapatan terbesar selama periode penjualan?
select
	f.transaksi_id,
	p.product_name,
	sum(qty) as total_unit,
	sum(total_harga) as total_pendapatan
from fact_penjualan as f
inner join dim_produk as p
	on f.product_id = p.product_id
group by transaksi_id, p.product_name
order by total_pendapatan desc
limit 10;

select
	transaksi_id,
	sum(qty) as total_unit,
	sum(total_harga) as total_pendapatan
from fact_penjualan
group by transaksi_id
order by total_pendapatan desc
limit 10;
	