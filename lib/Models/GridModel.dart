class GridModel{
  final String image,image1,image2,image3,type,discription,star,price;
  GridModel({
    required this.image,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.type,
    required this.discription,
    required this.star,
    required this.price,
  });

  static List<GridModel> listGrid=[
    GridModel(
      image: 'assets/images/Grid1.jpg',
      image1: 'assets/images/x1.jpg',
      image2: 'assets/images/x11.jpg',
      image3: 'assets/images/x111.jpg', 
      type: 'Shirt', 
      discription: "Camiseta gráfica para hombre",
      star: '4.89 | 232', 
      price: '\$11.09'),

      GridModel(
      image: 'assets/images/Grid2.jpg', 
      image1: 'assets/images/x2.jpg',
      image2: 'assets/images/x22.jpg',
      image3: 'assets/images/x222.jpg', 
      type: 'Shirt', 
      discription: "Camiseta gráfica para hombre",
      star: '4.89 | 235', 
      price: '\$14.09'),

      GridModel(
      image: 'assets/images/Grid3.jpg', 
      image1: 'assets/images/x3.jpg',
      image2: 'assets/images/x33.jpg',
      image3: 'assets/images/x333.jpg', 
      type: 'Shirt', 
      discription: "Camiseta gráfica para hombre",
      star: '4.89 | 2323', 
      price: '\$15.05'),

      GridModel(
      image: 'assets/images/Grid4.jpg',
      image1: 'assets/images/x4.jpg',
      image2: 'assets/images/x4.jpg',
      image3: 'assets/images/x444.jpg',  
      type: 'Shirt', 
      discription: "Camiseta gráfica para hombre",
      star: '4.89 | 2323', 
      price: '\$9.03'),

      GridModel(
      image: 'assets/images/Grid5.jpg', 
      image1: 'assets/images/x5.jpg',
      image2: 'assets/images/x55.jpg',
      image3: 'assets/images/x555.jpg', 
      type: 'Shirt', 
      discription: "Camiseta gráfica para hombre",
      star: '4.89 | 2323', 
      price: '\$10.02'),

      GridModel(
      image: 'assets/images/Grid6.jpg', 
      image1: 'assets/images/x6.jpg',
      image2: 'assets/images/x66.jpg',
      image3: 'assets/images/x666.jpg', 
      type: 'Shirt', 
      discription: "Camiseta gráfica para hombre",
      star: '4.89 | 2323', 
      price: '\$15.03'),

      GridModel(
      image: 'assets/images/Grid7.jpg', 
      image1: 'assets/images/x7.jpg',
      image2: 'assets/images/x77.jpg',
      image3: 'assets/images/x777.jpg', 
      type: 'Shirt', 
      discription: "Camiseta gráfica para hombre",
      star: '4.89 | 2323', 
      price: '\$11.00'),

      GridModel(
      image: 'assets/images/Grid8.jpg', 
      image1: 'assets/images/x8.jpg',
      image2: 'assets/images/x88.jpg',
      image3: 'assets/images/x888.jpg', 
      type: 'Shirt', 
      discription: "Camiseta gráfica para hombre",
      star: '4.89 | 2323', 
      price: '\$13.04'),
  ];
}