
-- Channel Performance Analysis

-- Pertanyaan bisnis:
-- "Channel penjualan mana yang menghasilkan pendapatan dan rata rata tertinggi, volume penjualan terbesar, dan jumlah transaksi terbanyak?"
-- Jawaban
-- 1. Channel yang menghasilkan pendapatan tertinggi
-- 2. Channel dengan volume penjualan terbesar
-- 3. Channel dengan jumlah trnasaksi terbanyak
-- 4. Channel dengan rata-rata pendapatan


select
	channel,
	count(distinct transaksi_id) as jumlah_transaksi,
	sum(qty) as Volume_penjualan,
	sum(total_harga) as total_pendapatan,
	round(avg(total_harga)::numeric) as rata_rata_pendapatan 
from fact_penjualan
group by channel
order by total_pendapatan desc;