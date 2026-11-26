-- Diskon Status Analysis

-- Pertanyaan bisnis:
-- Pertanyaan bisnis:
-- 1. Berapa total transaksi yang menggunakan diskon?
-- 2. Berapa total pendapatan berdasarkan kelompok diskon?
-- 3. Apakah transaksi dengan diskon lebih besar menghasilkan pendapatan lebih tinggi?

select
	case
		when diskon >= 20000 then 'Diskon Tinggi'
		when diskon >= 10000 then 'Diskon Sedang'
		when diskon >= 5000 then 'Diskon Rendah'
		else 'Tanpa Diskon'
	end as kategori_diskon,
	count(distinct transaksi_id) as jumlah_transaksi,
	sum(qty) as sum_qty,
	sum(total_harga) as total_pendapatan
from fact_penjualan
group by 
	case
		when diskon >= 20000 then 'Diskon Tinggi'
		when diskon >= 10000 then 'Diskon Sedang'
		when diskon >= 5000 then 'Diskon Rendah'
		else 'Tanpa Diskon'
	end
order by total_pendapatan desc;