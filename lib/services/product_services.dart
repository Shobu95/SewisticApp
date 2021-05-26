import 'package:sewistic_app/models/product/product.dart';
import 'package:sewistic_app/services/design_options.dart';

class ProductService {
  List<Product> _products;

  List<Product> getHomeProducts() {
    _products = new List<Product>();
    _products.add(new Product(
      'Classic 2-piece Deal',
      '650',
      'https://i2.wp.com/sewistic.com/wp-content/uploads/2020/06/deal-01-1-scaled.jpg?fit=252%2C300&ssl=1',
      "Classic 3 Piece Deal features the Shirt & trouser stitching as per catalog design with neckline and sleeves of your choice.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));
    _products.add(new Product(
      'Classic 3-piece Deal',
      '799',
      'https://i0.wp.com/sewistic.com/wp-content/uploads/2020/06/deal-02-1-scaled.jpg?fit=252%2C300&ssl=1',
      "Classic 3 Piece Deal features the Shirt, trouser & dupatta stitching as per catalog design with neckline and sleeves of your choice.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));
    _products.add(new Product(
      'Combo-Classic 2-piece Deal',
      '999',
      'https://i0.wp.com/sewistic.com/wp-content/uploads/2020/06/deal-03-1-scaled.jpg?fit=840%2C1001&ssl=1',
      "Combo Classic 2 Piece Deal features the stiching of 2 Two-piece suits including Shirt & trouser as per catalog design with neckline and sleeves of your choice.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));
    _products.add(new Product(
      'Combo–Classic 3-piece Deal',
      '1199',
      'https://i2.wp.com/sewistic.com/wp-content/uploads/2020/06/deal-04-1-scaled.jpg?fit=840%2C1001&ssl=1',
      "Combo Classic 3 Piece Deal features the stiching of 2 Three-piece suits including Shirt, trouser & dupatta as per catalog design with neckline and sleeves of your choice",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));

    _products.add(new Product(
      'Custom Order - 3 piece',
      '2800',
      'https://i2.wp.com/sewistic.com/wp-content/uploads/2020/04/poster-3-p-deal-festive.jpg?fit=600%2C716&ssl=1',
      "Custom Order – 3 Piece, features the Shirt piece stitching as per catalog design with Fancy Appliqué, Mesh, Piping of Shamooz, Slik and Banarsi + Lace work and along with neckline and sleeves of your choice, with the addition of embellishments and Addons like Beads, Stones, tassels etc displayed in the catalog will be added but not provided and therefore need procurement.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));
    _products.add(new Product(
      'Fancy 3 piece Deal',
      '1550',
      'https://sewistic.com/wp-content/uploads/2020/04/poster-3-p-deal-fency.jpg',
      "Fancy 3 Piece Deal features the Shirt piece stitching as per catalog design with Fancy Appliqué, Mesh, Piping of Shamooz and Slik + Lace work and along with neckline and sleeves of your choice, with the addition of embellishments displayed in the catalog but not provided and therefore need procurement.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));
    _products.add(new Product(
      'Festive 3 piece Deal',
      '1350',
      'https://i0.wp.com/sewistic.com/wp-content/uploads/2020/04/poster-3-p-deal-fency-1.jpg?fit=800%2C954&ssl=1',
      "Festive 3 Piece Deal features the Shirt piece stitching as per catalog design with Appliqué, Mesh, Piping + Lace work, along with neckline and sleeves of your choice.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));
    _products.add(new Product(
      'Classic 3-piece Deal',
      '950',
      'https://i1.wp.com/sewistic.com/wp-content/uploads/2020/04/3-pclassic-dea-flower-lessgradient-bluedress.jpg?resize=252%2C300&ssl=1',
      "Classic 3 Piece Deal features the Shirt piece stitching as per catalog design with neckline and sleeves of your choice.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));

    _products.add(new Product(
      'Kameez Shalwar',
      '950',
      'https://i1.wp.com/sewistic.com/wp-content/uploads/2020/05/shalwar-kameezposter.jpg?fit=800%2C954&ssl=1',
      "Kameez Shalwar stitching features the stitching of 2-piece men suit with the options of pockets, sleeves, and Bottoms of your choice",
      [
        ClothDesignOptions.SLEEVES_MEN(),
        ClothDesignOptions.POCKET(),
        ClothDesignOptions.BOTTOMS_MEN()
      ],
    ));
    _products.add(new Product(
      'Shervani Collar Kurta',
      '750',
      'https://i2.wp.com/sewistic.com/wp-content/uploads/2020/05/SHERVANI-COLLAR-KURTA-SINGLE-BANNER.jpg?fit=800%2C954&ssl=1',
      "Shervani Collar Kurta stitching features the stitching of Men Kurta Only with the option of pockets, and sleeves of your choice.",
      [
        ClothDesignOptions.SLEEVES_MEN(),
        ClothDesignOptions.POCKET(),
      ],
    ));
    _products.add(new Product(
      'Shervani Collar Kurta Shalwar',
      '950',
      'https://i1.wp.com/sewistic.com/wp-content/uploads/2020/05/shervani-collar-kurta-shalwar-stiching.jpg?w=800&ssl=1',
      "Shervani Collar Kurta Shalwar stitching features the stitching of 2-piece men suit with, pockets, sleeves, and Bottoms of your choice.",
      [
        ClothDesignOptions.SLEEVES_MEN(),
        ClothDesignOptions.POCKET(),
        ClothDesignOptions.BOTTOMS_MEN()
      ],
    ));
    _products.add(new Product(
      'Shirt Collar Kurta Shalwar',
      '950',
      'https://i1.wp.com/sewistic.com/wp-content/uploads/2020/05/collared-Kurta-banner.jpg?w=800&ssl=1',
      "Shirt Collar Kurta Shalwar stitching features the stitching of 2-piece men suit with, pockets, sleeves, and Bottoms of your choice.",
      [
        ClothDesignOptions.SLEEVES_MEN(),
        ClothDesignOptions.POCKET(),
        ClothDesignOptions.BOTTOMS_MEN()
      ],
    ));

    _products.add(new Product(
      'Cape Classic',
      '999',
      'https://i1.wp.com/sewistic.com/wp-content/uploads/2020/05/capes-classic-banner.jpg?w=800&ssl=1',
      "Peplum Classic stitching features the stitchig of cape with the neckline, sleeves & Bottoms of your choice.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));
    _products.add(new Product(
      'Peplum Angrakha',
      '1400',
      'https://i2.wp.com/sewistic.com/wp-content/uploads/2020/05/product-Peplum-Angarkha-banner.jpg?w=800&ssl=1',
      "Peplum Angrakha stitching features the stitching of Peplum with the neckline, sleeves length, Bottoms of your choice, with a  Tie-up Angrakha style neckline, flared hem & cuffed Sleeves.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));
    _products.add(new Product(
      'Peplum Festive',
      '1400',
      'https://i0.wp.com/sewistic.com/wp-content/uploads/2020/04/Peplum-Festive-Stiching-Banner.jpg?w=800&ssl=1',
      "Peplum Classic stitching features the stitching of Peplum with the neckline, sleeves length & Bottoms of your choice, with a flared hem & Bell Sleeves.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));
    _products.add(new Product(
      'Peplum Classic',
      '1200',
      'https://i0.wp.com/sewistic.com/wp-content/uploads/2020/04/Peplum-Classic-Banner.jpg?w=800&ssl=1',
      "Peplum Classic stitching features the stitching of Peplum with the neckline, sleeves & Bottoms of your choice, with a flared hem.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));

    _products.add(new Product(
      'Sewistic Classic Gharara',
      '2700',
      'https://i0.wp.com/sewistic.com/wp-content/uploads/2020/04/Ghrara-3.jpg?w=800&ssl=1',
      "Sewistic Classic Gharara stitching features the stitching of Gharara with the neckline & sleeves your choice, with a pair of wide-legged pants, ruched at the knee so they flare out dramatically.",
      [ClothDesignOptions.NECK_LINES(), ClothDesignOptions.SLEEVES_WOMEN()],
    ));
    _products.add(new Product(
      'Sewistic Festive Lehenga',
      '6500',
      'https://i1.wp.com/sewistic.com/wp-content/uploads/2020/04/Lehnga-festive.jpg?w=800&ssl=1',
      "Sewistic Festive Lehenga stitching features the stitching of Lehenga with the neckline & sleeves of your choice, with a flared hem. Designed with heavy zari and Dori embroidery work all over enhanced by sparkly stone, beads, and mirror embellishments.",
      [ClothDesignOptions.NECK_LINES(), ClothDesignOptions.SLEEVES_WOMEN()],
    ));
    _products.add(new Product(
      'Sewistic Classic Lehenga',
      '4500',
      'https://i2.wp.com/sewistic.com/wp-content/uploads/2020/04/Lengha-Classic-1.jpg?w=800&ssl=1',
      "Sewistic Classic Lehenga stitching features the stitching of Lehenga with the neckline & sleeves of your choice, with a flared hem, embellished in Stones, Beads, mesh and Dori work with complete piping detailing.",
      [ClothDesignOptions.NECK_LINES(), ClothDesignOptions.SLEEVES_WOMEN()],
    ));
    _products.add(new Product(
      'Sewistic Festive Sharara',
      '4500',
      'https://i0.wp.com/sewistic.com/wp-content/uploads/2020/04/1-Sharara-festivePS.jpg?w=800&ssl=1',
      "Sewistic Festive Sharara stitching features the stitching of Sharara with the neckline, sleeves & Bottoms of your choice, with a flared hem accompanied by 14 to 18 pleats (Kaliyan) at the hem.Dazzle everyone around as you walk into a Party wearing this Grape Purple Net Sharara Suit which makes it astonishingly charming. This Round Neck and Full Sleeves garment embellished in Stones, Beads, and Dori work with complete piping detailing.",
      [ClothDesignOptions.NECK_LINES(), ClothDesignOptions.SLEEVES_WOMEN()],
    ));

    return _products;
  }

  List<Product> getWishList() {
    _products = new List<Product>();

    _products.add(new Product(
      'Shervani Collar Kurta',
      '750',
      'https://i2.wp.com/sewistic.com/wp-content/uploads/2020/05/SHERVANI-COLLAR-KURTA-SINGLE-BANNER.jpg?fit=800%2C954&ssl=1',
      "Shervani Collar Kurta stitching features the stitching of Men Kurta Only with the option of pockets, and sleeves of your choice.",
      [
        ClothDesignOptions.SLEEVES_MEN(),
        ClothDesignOptions.POCKET(),
        ClothDesignOptions.BOTTOMS_MEN()
      ],
    ));

    _products.add(new Product(
      'Sewistic Classic Lehenga',
      '4500',
      'https://i2.wp.com/sewistic.com/wp-content/uploads/2020/04/Lengha-Classic-1.jpg?w=800&ssl=1',
      "Sewistic Classic Lehenga stitching features the stitching of Lehenga with the neckline & sleeves of your choice, with a flared hem, embellished in Stones, Beads, mesh and Dori work with complete piping detailing.",
      [ClothDesignOptions.NECK_LINES(), ClothDesignOptions.SLEEVES_WOMEN()],
    ));

    _products.add(new Product(
      'Cape Classic',
      '999',
      'https://i1.wp.com/sewistic.com/wp-content/uploads/2020/05/capes-classic-banner.jpg?w=800&ssl=1',
      "Peplum Classic stitching features the stitching of cape with the neckline, sleeves & Bottoms of your choice.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    ));

    return _products;
  }
}
