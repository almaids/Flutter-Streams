# Flutter-Streams

## Praktikum 1 - Dart Streams
- **Jelaskan fungsi keyword yield*pada kode tersebut.**
  - Fungsi yield* adalah untuk men-forward stream lain secara langsung. Artinya, semua event yang dikeluarkan dari Stream.periodic akan diteruskan oleh stream utama.
- **Apa maksud isi perintah dari kode tersebut.**
   - Maksud kode Stream.periodic(Duration(seconds: 1), ...) adalah membuat aliran data baru setiap 1 detik yang berisi warna dari list colors berdasarkan urutan indeks yang berulang. Ini memungkinkan background aplikasi berubah warna setiap detik.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
   ![soal 4](https://github.com/user-attachments/assets/67df5f96-9e76-4a12-b183-78967cd9cca0)
- **Jelaskan perbedaan menggunakan listen dan await for (langkah 9)!**
  - Perbedaan antara listen dan await for adalah:
    - listen() memungkinkan kita untuk menetapkan callback yang akan dieksekusi setiap kali data baru masuk ke dalam stream. Ini cocok untuk kasus real-time dan memberikan kontrol lebih seperti onDone dan onError.
    - await for digunakan dalam fungsi async dan akan menunggu setiap data baru satu per satu sebelum melanjutkan eksekusi berikutnya. Cocok untuk alur yang lebih linear dan sinkron.



