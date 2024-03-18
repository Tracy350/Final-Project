class Rating {
  final String image;
  final String hotelname;
  final String hotellocation;
  final String price;
  final double rating;
  final int reviews;

  Rating(
    this.image,
    this.hotelname,
    this.hotellocation,
    this.price,
    this.rating,
    this.reviews,
  );

  static List<Rating> dataSample = <Rating>[
    Rating('assets/toprated1', 'Hotel 1', 'Makola, Ghana', '\$20.00',
        4.5, 1000),
    Rating('assets/toprated2', 'tusefkk Hotel', 'Makola, Ghana', '\$20.00',
        4.5, 1000),
    Rating('assets/toprated3', 'Movenpick Hotel', 'Makola, Ghana', '\$20.00',
        4.5, 1000),
    Rating('assets/toprated1', 'Movenpick Hotel', 'Makola, Ghana', '\$20.00',
        4.5, 1000),
  ];
}
