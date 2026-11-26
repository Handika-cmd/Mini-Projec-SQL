-- 10-Transaction Analysis menggunakan CTE

-- Pertanyaan bisnis:
-- Manajemen ingin mengetahui transaksidengan nilai tertinggi berdasarkan kategori transaksi, 
-- sekaligus melihat peringkat transaksi di setiap kategori.


with data_transaksi as(
	select
		transaksi_id,
		total_harga,
		case
			when total_harga > 2000000 then 'Transaksi Besar'
			when total_harga >=1000000 then 'Transaksi Menengah'
			else 'Transaksi Kecil'
		end as kategori_transaksi
	from fact_penjualan
			
)
select
	kategori_transaksi,
	count(*) as jumlah_transaksi,
	sum(total_harga) as total_pendapatan
from data_transaksi
group by kategori_transaksi
order by total_pendapatan desc;