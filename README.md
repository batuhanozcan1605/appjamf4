# appjamf4

Uygulama adı: Google OUA Ping-Pong

- Kim için ne yaptık? -

Google Oyun ve Uygulama Akademisi öğrencileri için bir soru-cevap uygulaması yaptık.

Öğrencilerin lgili derse gidip, videodaki spesifik konu ile ilgili nokta atışı soru sorup cevap alabilmesi ve daha önce aynı soru sorulmuşsa orada görebilmesi için, akademi müfredatının yapısı ile dizayn edilmiş bir uygulamadır. Slack kanalındaki soru-cevap'a göre avantajı, bir süre sonra aynı sorunun aynı kanala gelmiyor olması ve eğitimleri asenkron takip eden öğrencilerin daha düzenli şekilde soru-cevap veritabanı oluşturabilmesi.

Tabii ki aynı özellikler başka bir müfredat datası ile başka eğitimler için de kullanılabilir.

- Teknik notlar - 

Başta bir Firebase denemesi yaptım ve çok da zaman kaybettim. Veriler sürekli null geliyordu. Böyle olunca daha fazla uğraşmayıp her şeyi local'de tutarak ve riverpod ile state yöneterek devam etme kararı aldım. Elimde bir akademi dersleri database'i olmadığı için uygulamanın özelliklerini "Flutter ile Uyguluma Geliştirme >      Flutter ile Uyguluma Geliştirme Eğitimleri > Flutter Kurulumu: Flutter SDK" dersi üzerinde gösterdim ancak eğer data olsaydı verilerin nasıl akacağını da gösterdim. Yani yapı kurulu durumda.

(Teknik notların 1.tekil ile yazılma sebebi gönderdiğimiz formda)
