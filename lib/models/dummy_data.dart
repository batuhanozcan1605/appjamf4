import 'course_model.dart';
import 'module_model.dart';

//List of Courses
final List<Course> oyunVeUygulama = [
  const Course(name: 'Flutter ile Uygulama Geliştirme', color: 0xFF4283F1, subCourseId: 1),
  const Course(name: 'Unity ile Oyun Geliştirme', color: 0xFF4283F1, subCourseId: 2),
  const Course(name: 'Oyun Sanatı', color: 0xFF4283F1, subCourseId: 3),
];

final List<Course> coursera = [
  const Course(name: 'Proje Yönetim Temelleri', color: 0xFFE84335),
  const Course(name: 'Proje Başlatma: Başarılı Bir Proje Tasarlama', color: 0xFFE84335),
  const Course(name: 'Proje Başlatma: Tüm Süreçleri Bir Araya Getirmek', color: 0xFFE84335),
];

final List<Course> girisimcilik = [
  const Course(name: 'Temel Girişimcilik', color: 0xFFecbe12),
  const Course(name: 'Girişimciler için Hukuk', color: 0xFF4283F1),
  const Course(name: 'Girişimciler için Finans', color: 0xFF31ab5c),
  const Course(name: 'Girişimciler için İK', color: 0xFFE84335),
  const Course(name: 'Girişimciler için İK', color: 0xFFE84335),
];

//List of SubCourses
final List<Course> flutter = [
  const Course(name: 'Flutter Hazırlık', color: 0xFF4283F1),
  Course(name: 'Flutter ile Uygulama Geliştirme Eğitimleri', color: 0xFF4283F1, modulelist: flutter2),
  const Course(name: 'Flutter ile Örnek Uygulama Geliştirme', color: 0xFF4283F1),
];

final List<Course> unity = [
  const Course(name: 'Unity ile Oyun Geliştirmeye Giriş', color: 0xFF4283F1),
  const Course(name: 'Unity ile Oyun Geliştirmede Uzmanlaşma', color: 0xFF4283F1),
];

//List of Modules
final List<Module> flutter2 = [
  Module(name: "Flutter Kurulumu", lessonList:  flutter2module1),
  Module(name: "Dart Dilini ve IDE'yi tanıma", lessonList:  flutter2module2),
  Module(name: "Dart Dilini Derinlemesine tanıma", lessonList:  flutter2module3),
  Module(name: "Dart Dili ile Nesne Tabanlı Programlama", lessonList:  flutter2module4),
  Module(name: "Collection'lar", lessonList:  flutter2module5),
];

//List of Lessons
final List<Lesson> flutter2module1 = [
  Lesson(name: "Flutter Kurulumu: Flutter SDK"),
  Lesson(name: "Flutter Kurulumu: PATH Ayarları"),
  Lesson(name: "Flutter Kurulumu: Android Studio"),
  Lesson(name: "Flutter Kurulumu: Örnek Proje Yaratma"),
];

final List<Lesson> flutter2module2 = [
  Lesson(name: "Class'lar"),
  Lesson(name: "Referanslar"),
  Lesson(name: "Immutable ve Final"),
];
final List<Lesson> flutter2module3 = [
  Lesson(name: "Class'lar"),
  Lesson(name: "Referanslar"),
  Lesson(name: "Immutable ve Final"),
];
final List<Lesson> flutter2module4 = [
  Lesson(name: "Classes"),
  Lesson(name: "Referanslar"),
  Lesson(name: "Immutable ve Final"),
  Lesson(name: "Constructor"),
];
final List<Lesson> flutter2module5 = [
  Lesson(name: "Class'lar"),
  Lesson(name: "Referanslar"),
  Lesson(name: "Immutable ve Final"),
];


//Questions



