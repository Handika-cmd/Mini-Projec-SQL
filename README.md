# Retail Business Performance Analysis

## Gambaran Proyek

**Retail Business Performance Analysis** adalah proyek analisis data menggunakan PostgreSQL untuk mengevaluasi performa bisnis ritel berdasarkan data transaksi penjualan.

Proyek ini berfokus pada analisis performa penjualan, performa produk, kontribusi kategori produk, performa tenaga penjualan (salesperson), tren penjualan bulanan, performa kanal penjualan, efektivitas diskon, kondisi persediaan (inventory), serta nilai transaksi.

Tujuan utama proyek ini adalah mengubah data mentah retail menjadi insight bisnis yang bermakna untuk mendukung proses pengambilan keputusan berbasis data (data-driven decision making).

## Tujuan Bisnis

Proyek ini bertujuan menjawab beberapa pertanyaan bisnis berikut:

1. Bagaimana performa penjualan bisnis secara keseluruhan?
2. Produk apa saja yang menghasilkan pendapatan (revenue) tertinggi?
3. Kategori produk mana yang memberikan kontribusi terbesar terhadap total pendapatan?
4. Salesperson mana yang menghasilkan pendapatan tertinggi?
5. Bagaimana perubahan performa penjualan dari bulan ke bulan?
6. Kanal penjualan mana yang menghasilkan pendapatan terbesar?
7. Bagaimana hubungan tingkat diskon terhadap performa penjualan?
8. Produk mana yang memiliki stok rendah tetapi volume penjualan tinggi?
9. Seberapa besar kontribusi setiap produk dan kategori terhadap total pendapatan?
10. Bagaimana distribusi nilai transaksi dalam bisnis?

## Dataset

Dataset terdiri dari empat file CSV yang membentuk model data retail sederhana.

| Dataset | Deskripsi |
|---|---|
| `fact_penjualan` | Berisi data transaksi dan penjualan retail |
| `dim_produk` | Berisi informasi produk |
| `dim_sales` | Berisi informasi salesperson |
| `dim_waktu` | Berisi informasi waktu (bulan dan tahun) |

### Skill SQL yang Digunakan

Dalam proyek ini, beberapa teknik SQL yang diterapkan meliputi:

SELECT
WHERE
ORDER BY
LIMIT
Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
GROUP BY
HAVING
INNER JOIN
LEFT JOIN
CASE WHEN
Subquery
Common Table Expression (CTE)
Window Function
RANK()



## Analysis & Business Cases

The project contains ten analytical case studies:

| No	|Analisis|	Fokus Bisnis|
|---|---|---|
|01	|Overall Sales Performance|	Evaluasi performa bisnis secara keseluruhan|
02	|Product Performance|	Identifikasi produk dengan performa terbaik|
03	|Category Performance|	Perbandingan revenue dan volume penjualan per kategori
04	|Salesperson Performance|	Evaluasi kontribusi salesperson
05	|Sales Trend Analysis	|Analisis tren penjualan bulanan
06	|Channel Performance	|Perbandingan performa kanal penjualan
07	|Discount Performance	|Analisis penjualan berdasarkan tingkat diskon
08	|Product Stock & Sales Analysis	|Identifikasi risiko persediaan
09	|Revenue Contribution Analysis	|Kontribusi produk dan kategori terhadap revenue
10	|Transaction Value Analysis	|Distribusi nilai transaksi

## Hasil Analisis & Temuan Bisnis

Ringkasan Kinerja Bisnis

![Data Model](img\Total_keseluruhan.png)

| Metric | Result |
|---|---:|
| Total Transactions | 300 |
| Total Units Sold | 1,674 |
| Total Revenue | Rp538,456,084 |

### 1. Category Performance
- Fashion generated the highest revenue, reaching Rp108,935,964.
- Snack generated the lowest revenue, reaching Rp73,270,886.
- Fashion also recorded the highest sales volume.

### 2. Sales Channel Performance
- Tokopedia generated the highest revenue at Rp144,031,923.
- TikTok Shop recorded the highest sales volume with 448 units sold.
- Shopee generated the lowest revenue among the four channels.

### 3. Monthly Sales Trend
- February 2026 recorded the highest monthly revenue at Rp75,479,665.
- June 2026 recorded the highest sales volume with 239 units.
- July 2026 recorded the lowest revenue at Rp32,940,927.

### 4. Salesperson Performance
- Budi Kusuma generated the highest recorded revenue among the salespersons, reaching Rp14,636,550.
- His performance included 4 transactions and 38 units sold.

### 5. Inventory Analysis
- Product P007 had 27 units of available stock and recorded 36 units sold during the dataset's sales period.
- This product was identified as a potential inventory risk based on the project's stock and sales classification.

### 6. Revenue Contribution
- Fashion contributed 20.23% of total revenue.
- Rumah Tangga contributed 18.08%.
- Elektronik contributed 17.57%.

## Project Structure

```text
retail-business-performance-analysis/
│
├── data/
│   ├── dim_produk.csv
│   ├── dim_sales.csv
│   ├── dim_waktu.csv
│   └── fact_penjualan.csv
│
├── sql/
│   ├── 01_overall_performance.sql
│   ├── 02_product_analysis.sql
│   ├── 03_category_analysis.sql
│   ├── 04_salesperson_analysis.sql
│   ├── 05_sales_trend.sql
│   ├── 06_channel_analysis.sql
│   ├── 07_discount_analysis.sql
│   ├── 08_stock_analysis.sql
│   ├── 09_revenue_contribution.sql
│   └── 10_transaction_analysis.sql
│
└── README.md
```

## Conclusion

This project demonstrates the use of PostgreSQL to analyze retail business data and extract business insights from multiple related datasets.

Through ten analytical case studies, SQL was used to evaluate sales performance, identify revenue contributors, compare sales channels, examine monthly trends, and assess potential inventory risks.

The project represents a practical application of SQL skills in a Data Analyst workflow, from data exploration and table relationships to business-oriented analysis.

---

**Project Category:** Data Analytics  
**Database:** PostgreSQL  
**Focus:** Retail Business Performance Analysis