import 'package:myapp/models/recipe_model.dart';

final List<Recipe> recipes = [
  Recipe(
    title: 'Telur dadar sehat',
    description: 'Telur dadar praktis untuk sarapan',
    imgUrl: 'assets/images/telor_dadar.jpg',
    ingredients: ['2 butir telur', 'sejumput garam', 'sedikit minyak goreng'],
    steps: [
      'Kocok telur dan tambahkan garam',
      'Panaskan minyak di wajan',
      'Tuang adonan telur dan masak hingga matang'
    ],
    category: 'foods',
  ),
  Recipe(
      title: 'Nasi Goreng',
      description:
          'Nasi goreng sederhana dan lezat untuk sarapan atau makan malam.',
      imgUrl: 'assets/images/nasi_goreng.jpg',
      ingredients: [
        '1 piring nasi putih',
        '1 butir telur',
        '1 siung bawang putih, cincang',
        '2 sdm kecap manis',
        '1 sdm minyak goreng',
        'Garam secukupnya',
        'Irisan daun bawang (opsional)'
      ],
      steps: [
        'Panaskan minyak di wajan, tumis bawang putih hingga harum.',
        'Tambahkan telur dan orak-arik hingga matang.',
        'Masukkan nasi, kecap manis, dan garam. Aduk hingga tercampur rata.',
        'Masak hingga nasi panas dan kecokelatan. Tambahkan daun bawang jika diinginkan.'
      ],
      category: 'foods'),
  Recipe(
      title: 'Chocolate Milkshake',
      description: 'Milkshake cokelat creamy yang menyegarkan.',
      imgUrl: 'assets/images/chocolate_milkshake.jpeg',
      ingredients: [
        '200 ml susu cair',
        '2 sdm cokelat bubuk',
        '1 sdm gula',
        '3-4 es batu',
        'Whipped cream (opsional)'
      ],
      steps: [
        'Masukkan susu, cokelat bubuk, gula, dan es batu ke dalam blender.',
        'Blender hingga halus dan berbusa.',
        'Tuang ke dalam gelas dan tambahkan whipped cream jika diinginkan.'
      ],
      category: 'drinks'),
  Recipe(
      title: 'Orange Juice',
      description: 'Jus jeruk segar untuk mengawali hari dengan vitamin C.',
      imgUrl: 'assets/images/orange_juice.jpg',
      ingredients: [
        '2 buah jeruk manis',
        'Es batu secukupnya',
        'Gula atau madu (opsional)'
      ],
      steps: [
        'Peras jeruk untuk mendapatkan jusnya.',
        'Tambahkan es batu dan gula atau madu jika diinginkan.',
        'Aduk rata dan sajikan.'
      ],
      category: 'drinks'),
  Recipe(
      title: 'Steak',
      description: 'Steak daging sapi empuk dengan saus lada hitam.',
      imgUrl: 'assets/images/steak.jpg',
      ingredients: [
        '200 gram daging sapi (sirloin atau tenderloin)',
        'Garam dan lada hitam secukupnya',
        '1 sdm minyak zaitun',
        '1 sdm mentega',
        'Saus steak (sesuai selera)'
      ],
      steps: [
        'Bumbui daging dengan garam dan lada hitam.',
        'Panaskan minyak zaitun di wajan dan masak daging hingga tingkat kematangan yang diinginkan.',
        'Tambahkan mentega dan oleskan di atas daging selama memasak.',
        'Sajikan dengan saus steak dan pelengkap sesuai selera.'
      ],
      category: 'foods'),
];
