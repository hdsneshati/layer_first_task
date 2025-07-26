class OrderItem {
  final String title;
  final String desc;
  final String value;

  OrderItem({required this.title, required this.desc, required this.value});
}

class Product {
  final String name;
  final String description;
  final int price;
  final List<OrderItem> orderItems;
  Product({required this.name, required this.description, required this.price,required this.orderItems});
}

List<Product> sampleProducts = [
  Product(
    name: 'کتاب Flutter مقدماتی',
    description: 'آموزش گام‌به‌گام برنامه‌نویسی با فلاتر برای مبتدیان',
    price: 120000,
    orderItems: [
      OrderItem(title: 'کتاب', desc: 'فلاتر مقدماتی', value: '۱'),
      OrderItem(title: 'کتاب', desc: 'فلاتر مقدماتی', value: '۱'),
      
    ],
    
  ),
  Product(
    name: 'هدفون بی‌سیم',
    description: 'هدفون بلوتوث با کیفیت صدای بالا و نویزگیر',
    price: 850000,
    orderItems: [
      OrderItem(title: 'هدفون', desc: 'بی‌سیم', value: '۱'),
      OrderItem(title: 'هدفون', desc: 'بی‌سیم', value: '۱'),
    ],
  ),
  Product(
    name: 'ماگ حرارتی',
    description: 'ماگ تغییر رنگ‌دهنده با طرح خاص هنگام ریختن مایعات داغ',
    price: 98000,
    orderItems: [
      OrderItem(title: 'ماگ', desc: 'حرارتی', value: '۱'),
      OrderItem(title: 'ماگ', desc: 'حرارتی', value: '۱'),
    ],
  ),
  Product(
    name: 'کیبورد مکانیکی',
    description: 'کیبورد مخصوص گیم با نورپردازی RGB',
    price: 1250000,
   orderItems: [
      OrderItem(title: 'کیبورد', desc: 'مکانیکی', value: '۱'),
      OrderItem(title: 'کیبورد', desc: 'مکانیکی', value: '۱'),
    ],
  ),
  Product(
    name: 'پکیج آموزش Dart',
    description: 'ویدیوهای آموزشی زبان برنامه‌نویسی دارت از پایه تا پیشرفته',
    price: 150000,
    orderItems: [
      OrderItem(title: 'پکیج', desc: 'آموزش Dart', value: '۱'),
      OrderItem(title: 'پکیج', desc: 'آموزش Dart', value: '۱'),
    ],
  ),
];

