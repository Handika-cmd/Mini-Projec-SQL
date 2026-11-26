-- Ranking Transaksi Window Functions.

-- pertanyaan bisnis:
-- Manajemen ingin melihat peringkat 10 transaksi dengan pendapatan tertinggi, 
-- tetapi kali ini kita ingin menggunakan fungsi ranking, bukan sekadar ORDER BY dan LIMIT.

with ranking_transaksi as(
	select
		transaksi_id,
		total_harga,
		rank() over(
			order by total_harga desc
		) as ranking_transaksi
		from fact_penjualan
)

select
	transaksi_id,
	total_harga,
	ranking_transaksi
from ranking_transaksi 
where ranking_transaksi <=10
order by ranking_transaksi;