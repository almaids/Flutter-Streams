# Flutter-Streams

## Praktikum 1 - Dart Streams
- **Jelaskan fungsi keyword yield*pada kode tersebut.**
  - Fungsi yield* adalah untuk men-forward stream lain secara langsung. Artinya, semua event yang dikeluarkan dari Stream.periodic akan diteruskan oleh stream utama.
- **Apa maksud isi perintah dari kode tersebut.**
   - Maksud kode Stream.periodic(Duration(seconds: 1), ...) adalah membuat aliran data baru setiap 1 detik yang berisi warna dari list colors berdasarkan urutan indeks yang berulang. Ini memungkinkan background aplikasi berubah warna setiap detik.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README:**  
   
- **Jelaskan perbedaan menggunakan listen dan await for (langkah 9)!**
  - Perbedaan antara listen dan await for adalah:
    - listen() memungkinkan kita untuk menetapkan callback yang akan dieksekusi setiap kali data baru masuk ke dalam stream. Ini cocok untuk kasus real-time dan memberikan kontrol lebih seperti onDone dan onError.
    - await for digunakan dalam fungsi async dan akan menunggu setiap data baru satu per satu sebelum melanjutkan eksekusi berikutnya. Cocok untuk alur yang lebih linear dan sinkron.

---

## Praktikum 2 - Stream Controllers dan Sinks
- **Jelaskan maksud kode langkah 8 dan 10 tersebut!**
  - Pada langkah ke-8, initState() digunakan untuk memulai stream dan mendengarkan data yang masuk dengan menggunakan metode listen(). Hal ini memastikan bahwa setiap angka acak yang dikirimkan melalui sink dapat diterima oleh subscriber. Langkah ke-10 berisi fungsi addRandomNumber() yang bertugas menghasilkan angka acak dan mengirimkannya ke stream melalui sink.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**

- **Jelaskan maksud kode langkah 13 sampai 15 tersebut!**
  - Langkah 13 hingga 15 menjelaskan cara menambahkan dan menangani error pada stream. Metode addErrorToSink() digunakan untuk menyisipkan error secara manual ke dalam stream. Kemudian, onError ditambahkan dalam parameter listen() agar error yang terjadi dapat ditangani tanpa menghentikan aplikasi. Langkah ini penting sebagai bagian dari pengelolaan aliran data secara aman dan efektif.

---

## Praktikum 3 - Injeksi data ke streams
- **Jelaskan maksud kode langkah 1-3 tersebut!**
  - Langkah-langkah pada praktikum ini menunjukkan bagaimana cara melakukan transformasi data sebelum mencapai UI. Melalui penggunaan StreamTransformer, setiap angka dalam stream diubah menjadi kelipatan 10. Transformasi ini dilakukan untuk memvalidasi, memfilter, atau menyesuaikan data sebelum ditampilkan ke pengguna akhir. 
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**
  
  
---

## Praktikum 4 - Subscribe ke stream events
- **Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!**
  - Langkah ke-2 berisi penambahan subscription yang memberikan kontrol lebih baik terhadap stream, termasuk penanganan event onData, onError, dan onDone.
  - Langkah ke-6 menambahkan fungsi dispose() untuk menghentikan subscription guna mencegah memory leak.
  - Langkah ke-8 mengatur ulang fungsi addRandomNumber() agar selaras dengan perubahan arsitektur yang diterapkan.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**
 
  
---

## Praktikum 5 - Multiple stream subscriptions
- **Jelaskan mengapa error itu bisa terjadi ?**
  - Error terjadi karena secara default, stream hanya dapat digunakan untuk satu langganan (single subscription). Ketika dilakukan dua pemanggilan listen() terhadap stream yang sama, maka akan muncul error berupa Bad state: Stream has already been listened to.
- **Jelaskan mengapa hal itu bisa terjadi ?**
  - Setelah stream diubah menjadi broadcast menggunakan asBroadcastStream(), stream dapat memiliki banyak subscriber secara bersamaan. Hal ini menyebabkan kedua subscriber menerima data yang sama, sehingga tampilan teks bertambah dua kali setiap angka dikirim.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**
  
 
---

## Praktikum 6 - StreamBuilder
- **Jelaskan maksud kode pada langkah 3 dan 7 !**
  - Langkah ke-3 menyiapkan stream yang menghasilkan angka baru setiap detik menggunakan Stream.periodic().
  - Langkah ke-7 mengimplementasikan StreamBuilder yang akan membangun ulang bagian UI setiap kali stream mengirimkan data baru. Hal ini menciptakan UI yang reaktif dan dinamis terhadap perubahan data.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**
  
---

## Praktikum 7 - BLoC Pattern
- **Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?**
  - Praktikum ini mengimplementasikan pola arsitektur BLoC (Business Logic Component). Seluruh proses pengelolaan data dilakukan di luar UI, yakni di dalam class RandomNumberBloc, menggunakan StreamController sebagai sarana komunikasi antara logika dan antarmuka. Alur kerja mencakup input event ke sink, pemrosesan logika, lalu hasilnya diteruskan ke UI melalui stream. Pendekatan ini memisahkan logika bisnis dari tampilan, sehingga lebih mudah dalam pengujian dan pengembangan skala besar.
- **Capture hasil praktikum Anda berupa GIF dan lampirkan di README.**








  






