-- Salesperson Performance Analysis
-- Pertanyaan bisnis:
-- "Salesperson mana yang menghasilkan pendapatan tertinggi, memiliki volume penjualan terbesar, dan menangani transaksi terbanyak?"
-- jawaban:
-- 1. sales pendapatan tertinggi
-- 2. sales memiliki volume penjualan terbesar
-- 3. jumlah transaksi

select
	s.sales_id,
	s.sales_name,
	count(distinct f.transaksi_id) as total_transaksi,
	sum(qty) as total_unit,
	sum(f.total_harga) as total_pendapatan
from fact_penjualan as f
inner join dim_sales as s
	on f.sales_id = s.sales_id
group by s.sales_id, s.sales_name
order by sales_id desc;