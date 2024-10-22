       IDENTIFICATION DIVISION.
       PROGRAM-ID. TUGAS1AP3.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 PILIHAN          PIC 9.
       01 NAMA             PIC A(15).
       01 NPM              PIC X(8).
       01 KELAS            PIC A(5).
       01 HOBI             PIC A(20).
       
       01 TANGGAL-LAHIR.
           05 HARI-LAHIR   PIC 9(2).  
           05 BULAN-LAHIR  PIC 9(2).  
           05 TAHUN-LAHIR  PIC 9(4).  
       
       01 ANGKA            PIC 9(4).     
       01 SISA             PIC 9.

       PROCEDURE DIVISION.
       MAIN-PROGRAM.
           DISPLAY "PILIH MENU: "
           DISPLAY "1. IDENTITAS DIRI"
           DISPLAY "2. PERIKSA BILANGAN GANJIL ATAU GENAP"
           DISPLAY "3. EXIT"
           ACCEPT PILIHAN.

           IF PILIHAN = 1
               PERFORM PROSES-IDENTITAS
           ELSE
               IF PILIHAN = 2
                   PERFORM PROSES-BILANGAN-GANJIL-GENAP
               ELSE
                   IF PILIHAN = 3
                       DISPLAY "PROGRAM SELESAI."
                       STOP RUN
                   ELSE
                       DISPLAY "PILIHAN TIDAK ADA, SILAKAN COBA LAGI."
                       STOP RUN.

       PROSES-IDENTITAS.
           DISPLAY "MASUKAN NAMA LENGKAP: ".
           ACCEPT NAMA.

           DISPLAY "MASUKKAN NPM: ".
           ACCEPT NPM.

           DISPLAY "MASUKKAN KELAS: ".
           ACCEPT KELAS.

           DISPLAY "MASUKKAN HARI LAHIR (dd): ".
           ACCEPT HARI-LAHIR.
           
           DISPLAY "MASUKKAN BULAN LAHIR (mm): ".
           ACCEPT BULAN-LAHIR.
       
           DISPLAY "MASUKKAN TAHUN LAHIR (yyyy): ".
           ACCEPT TAHUN-LAHIR.    

           DISPLAY "MASUKKAN HOBI: ".
           ACCEPT HOBI.

           DISPLAY "-------------------------------".
           DISPLAY "TERIMAKASIH KAK " NAMA ", BERIKUT IDENTITAS ANDA :"
           DISPLAY "NAMA LENGKAP   : " NAMA.
           DISPLAY "NPM            : " NPM.
           DISPLAY "KELAS          : " KELAS.
           DISPLAY "TANGGAL LAHIR  : " TANGGAL-LAHIR.
           DISPLAY "HOBI           : " HOBI.
           DISPLAY "-------------------------------".

           PERFORM MAIN-PROGRAM.

       PROSES-BILANGAN-GANJIL-GENAP.
           DISPLAY "MASUKKAN ANGKA (MAKS 4 DIGIT): ".
           ACCEPT ANGKA.

           DISPLAY "-------------------------------".
           DISPLAY "ANGKA YANG ANDA INPUT ADALAH " ANGKA.

           COMPUTE SISA = ANGKA - (ANGKA / 2 * 2).    

           IF SISA = 0
               DISPLAY "ANGKA TERSEBUT ADALAH GENAP"
           ELSE
               DISPLAY "ANGKA TERSEBUT ADALAH GANJIL"

           DISPLAY "-------------------------------".

           STOP RUN.