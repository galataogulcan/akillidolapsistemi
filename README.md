# akillidolapsistemi
				
T.C.
DOKUZ EYLÜL ÜNİVERSİTESİ
İKTİSADİ VE İDARİ BİLİMLER FAKÜLTESİ
YÖNETİM BİLİŞİM SİSTEMLERİ BÖLÜMÜ
DÖNEM PROJESİ





YBS 4002:
YÖNETİM BİLİŞİM SİSTEMLERİ SEMİNERİ

AKILLI DOLAP SİSTEMİ




2017469021
Oğulcan GALATA



Danışman
Prof.Dr. Vahap TECİM




İZMİR - 2022


ÖZET

Akıllı Dolap Sistemi, kampüs içerisindeki ihtiyaca yönelik yapılmış bir projedir. Proje, mobil uygulama üzerinden kilit kontrol sistemi üzerine kurulmuştur. Bu sistem, günlük hayattaki depolama ihtiyacı probleminin çözülmesine yönelik yapılmıştır.  Projenin amacı günlük hayattaki geçici depolama alanı ihtiyacının sıklıkla yaşanmasından kaynaklı problemlerin, geçici depolama alanı sunarak çözülmesidir. Proje, Raspberry Pi, Google Cloud Firebase ve Dart diliyle yazılmış bir mobil uygulama üzerine kurulmuştur. Proje’nin ana iskeleti bu şekildedir. Veriler bulutta tutulur, mobil uygulama üzerinden gerekli işlemler yapılarak geçici depolama alanı sağlanır. Bu Proje, kampüsteki günlük hayatta sıkça ihtiyaç duyulabilen bir problemin çözümüne yönelik olduğu için son derece faydalı bir projedir.

 					    
GİRİŞ 

İnsanoğlunun sığınma ihtiyacı, zaman içerisinde yaşadığı mekanları kendisi için düzenleme, daha konforlu ve yaşanır hale getirme, ve işlevsellik katma şekline dönüşmüştür.
Bu dönüşüm yaşanırken, mimarlık kavramı da gelişmiş olup, artık yapılar daha sağlam, daha büyük daha yüksek, daha dayanıklı yapılmaya çalışıldığı gibi, daha güzel, daha konforlu ve daha işlevsel dizayn edilmeye de başlanmıştır. Asansöründen merdiven otomatına, diyafonundan iç mekan aydınlatmasına, buzdolabından bulaşık makinesine, çamaşır makinesinden televizyonuna, her ekipman teknolojik olarak kontrol edilebilir hale gelmiştir.
Akıllı Dolap Sistemi, bu anlatılanlara uygun yapılmış bir projedir. Kampüs hayatında ve günlük yaşamda insanların geçici olarak depolama ihtiyacı beraberinde pek çok problem getirirken bu problemin çözülmesi de bir o kadar basittir. Teknolojik olarak kontrol edilmeyen bir sistemin getirdiği problemler, yaşanan karışıklıklar bu dönüşümün habercisi olarak sunulabilir. 
Yapılan araştırmalar sonucunda, bu problemin çözümü için en uygun yöntemler seçilerek sistemin geliştirilmesi ve akabinde bu problemin çözülmesi amaçlandı.

YÖNTEM-METOD

Bu projede, mobil uygulama kısmında Flutter kullanılarak Dart dili tercih edilmiştir ve geliştirilmiştir. Flutter ve beraberinde Dart dilinin tercih edilme sebebi, Flutter Framework’ünün, tek bir platform üzerinden iOS ve Android için Native mobil uygulamalar ve ara yüzler geliştirebilme imkanı sunmasıdır. Ayrı ayrı platformlar için farklı diller öğrenme ihtiyacını ortadan kaldırması nedeniyle, Dart ve Flutter bu proje için en uygun yöntem olarak seçilmiş ve uygulanmıştır. 
Projede,Veri tabanı olarak ise Google Cloud Firestore kullanılmıştır. Google Cloud Firestore tercih edilme sebebi ise Bulut bir veri tabanı olması ve esnek bir yapıya sahip olması en önemli özelliklerindendir.
Fiziksel kısımda ise, dolap kilit kontrol sistemi, Raspberry Pi 3B+ üzerinde Python diliyle yazılmış kod ile kontrol edilmiştir. İki platformu, yani Raspberry Pi ve Mobil uygulama, bulut veritabanını aracı olarak kullanarak bağlanmış ve  kontrol sağlanmıştır. 

SONUÇ VE ÖNERİLER

Akıllı Dolap Sistemi, kampüs hayatında zaman zaman gerek duyulan  geçici depolama alanına basit bir şekilde çözüm getirirken her proje gibi geliştirilmeye müsait bir projedir. Proje demosunda tek bir dolap ve kilit sistemi kontrol edilerek sunum yapılmıştır. Geliştirilmeye çok uygun olan bu proje, uygun yöntemler seçilerek geliştirilirse çok daha faydalı bir sistem haline gelecektir.
Yönetim Bilişim Sistemleri Alanına Katkısı: Bölümle alakalı olarak bu proje,4 yıllık eğitim hayatında alınan pek çok eğitimi kapsamaktadır.Donanım kısmı olsun yazılım kısmı olsun veri tabanı kısmı olsun tamamen bir yönetim bilişim sistemleri projesidir.Yönetim Bilişim uzmanı toplumsal sorunları analiz ederek en kolay şekilde çözmeyi başaran kişidir. Bu projenin konusu da bir bakıma toplumsal bir sorundur.. Yönetim bilişim sistemlerinin bu alana katkısı ihtiyaca yönelik bir sistem geliştirip bunu sunmaktır.




