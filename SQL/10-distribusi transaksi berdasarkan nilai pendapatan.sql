-- Analisis Distribusi Nilai Transaksi

-- Pertanyaan bisnis:
-- Bagaimana distribusi transaksi berdasarkan nilai pendapatannya?

select
	case
		when total_harga > 2000000 then 'Transaksi Besar'
		when total_harga >=1000000 then 'Transaksi Menengah'
		else 'Transaksi Kecil'
	end as kategori_transaksi,
	count(*) as jumlah_transaksi,
	sum(total_harga) as total_pendapatan
from fact_penjualan
group by
	case
		when total_harga > 2000000 then 'Transaksi Besar'
		when total_harga >=1000000 then 'Transaksi Menengah'
		else 'Transaksi Kecil'
	end
order by total_pendapatan desc;