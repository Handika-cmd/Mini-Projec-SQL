-- Pertanyaan bisnis:
-- "Bagaimana perkembangan pendapatan dan volume penjualan dari waktu ke waktu? Bulan mana yang menghasilkan pendapatan tertinggi?"
-- Jawaban:
-- 1. perkembangan pendapatan dari waktu ke waktu
-- 2. Volume penjualan dari waktu ke waktu
-- 3. Bulan yang menghasilkan pendapatan tertinggi

select
	w.bulan,
	w.tahun,
	count(distinct f.transaksi_id) as jumlah_transaksi,
	sum(f.qty) as volume_penjualan,
	sum(f.total_harga) as total_pendapatan
from fact_penjualan as f
inner join dim_waktu as w
	on f.date_id = w.date_id
group by w.bulan, w.tahun
order by w.bulan asc, w.tahun asc;