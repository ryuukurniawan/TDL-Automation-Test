TDL Dashboard Automation Test

Repositori ini berisi skrip pengujian otomatis untuk Tactical Data Link (TDL) Dashboard. Pengujian difokuskan pada validasi data real-time, logika identitas objek, dan ketahanan sistem terhadap beban tinggi (Stress Test).

Tech Stack & Architecture

- Language: Python
- Framework: Robot Framework
- Library: SeleniumLibrary
- Design Pattern: Page Object Model (POM)
- Syntax Style: Gherkin (Given/When/Then)

Project Structure

TDL_Automation/
├── Resources/
│   ├── Elements/     # Menampung Locators (ID, XPath, CSS)
│   ├── Pages/        # Logika dasar interaksi elemen (Technical Keywords)
│   └── Steps/        # Definisi langkah Gherkin (Business Keywords)
└── Tests/            # File utama Test Case (.robot)

Test Scenarios

Skrip ini memvalidasi skenario kritikal berikut:

- Real-time Data Update: Memastikan Data Grid terupdate secara otomatis saat data di-inject.
- No Page Refresh: Memvalidasi bahwa aplikasi berjalan secara asynchronous (tidak ada reload halaman).
- Real-time State Change: Memastikan indikator sistem berubah secara instan.

Running the Test

Jalankan perintah berikut di terminal:
robot -d results tests/dashboard_test.robot

View Report

Setelah selesai, buka file Results/report.html di browser kamu untuk melihat hasil pengujian yang detail.