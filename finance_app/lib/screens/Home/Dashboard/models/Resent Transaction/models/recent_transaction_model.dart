
class RecentTransactionModel {
  
  final String? icon, title, date, size;

  RecentTransactionModel({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentTransactionModel(
    icon: "assets/icons/xd_file.svg",
    title: "Product",
    date: "01-03-2021",
    size: "342 рублей",
  ),
  RecentTransactionModel(
    icon: "assets/icons/Figma_file.svg",
    title: "Bokaleya",
    date: "27-02-2021",
    size: "1000 руб",
  ),
  RecentTransactionModel(
    icon: "assets/icons/doc_file.svg",
    title: "Кошка",
    date: "23-02-2021",
    size: "3000 руб",
  ),
  RecentTransactionModel(
    icon: "assets/icons/sound_file.svg",
    title: "Medical",
    date: "21-02-2021",
    size: "1000 руб",
  ),
  RecentTransactionModel(
    icon: "assets/icons/media_file.svg",
    title: "Продукты",
    date: "23-02-2021",
    size: "3455 рублей",
  ),
  RecentTransactionModel(
    icon: "assets/icons/pdf_file.svg",
    title: "Отдых",
    date: "25-02-2021",
    size: "567 рублей",
  ),
  RecentTransactionModel(
    icon: "assets/icons/excle_file.svg",
    title: "Netflix",
    date: "25-02-2021",
    size: "999 рублей",
  ),
];
