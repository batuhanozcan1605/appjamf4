import 'course_model.dart';
import 'module_model.dart';

//Courses
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

//SubCourses
final List<Course> flutter = [
  const Course(name: 'Flutter Hazırlık', color: 0xFF4283F1),
  const Course(name: 'Flutter ile Uygulama Geliştirme Eğitimleri', color: 0xFF4283F1),
  const Course(name: 'Flutter ile Örnek Uygulama Geliştirme', color: 0xFF4283F1),
];

final List<Course> unity = [
  const Course(name: 'Unity ile Oyun Geliştirmeye Giriş', color: 0xFF4283F1),
  const Course(name: 'Unity ile Oyun Geliştirmede Uzmanlaşma', color: 0xFF4283F1),
];

//Modules
final List<Module> flutter2 = [
  Module(name: "Flutter Kurulumu", lesson:  flutter2module1),
  Module(name: "Dart Dilini ve IDE'yi tanıma", lesson:  flutter2module2),
  Module(name: "Dart Dilini Derinlemesine tanıma", lesson:  flutter2module3),
];

//Lessons
final List<Lesson> flutter2module1 = [

];
final List<Lesson> flutter2module2 = [

];
final List<Lesson> flutter2module3 = [

];