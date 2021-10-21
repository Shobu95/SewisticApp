import 'package:sewistic_app/models/order/design_type.dart';

class ClothDesignOptions {
  static DesignType NECK_LINES() {
    List<DesignOption> neckLineOptions = <DesignOption>[];

    neckLineOptions.add(
        DesignOption('assets/images/round-neck.png', "Round Neckline"));
    neckLineOptions
        .add(DesignOption('assets/images/v-neck.png', "V Neckline"));
    neckLineOptions.add(
        DesignOption('assets/images/square-neck.png', "Square Neckline"));
    neckLineOptions
        .add(DesignOption('assets/images/star-neck.png', "Star Neckline"));
    neckLineOptions
        .add(DesignOption('assets/images/boat-neck.png', "Boat Neckline"));
    neckLineOptions.add(DesignOption(
        'assets/images/sherwani-neck.jpg', "Sherwani Neckline"));

    DesignType neckLines = DesignType('Necklines', neckLineOptions);
    return neckLines;
  }

  static DesignType SLEEVES_WOMEN() {
    List<DesignOption> sleeveOptions = <DesignOption>[];

    sleeveOptions.add(
        DesignOption('assets/images/full-sleeves.png', "Full Sleeves"));
    sleeveOptions.add(DesignOption(
        'assets/images/quarter-sleeves.png', "Quarter Sleeves"));
    sleeveOptions.add(
        DesignOption('assets/images/half-sleeves.png', "Half Sleeves"));

    DesignType sleeves = DesignType('Sleeves', sleeveOptions);
    return sleeves;
  }

  static DesignType BOTTOMS_WOMEN() {
    List<DesignOption> bottomOptions = <DesignOption>[];

    bottomOptions.add(DesignOption(
        'assets/images/shalwar-women.png', "Standard Shalwar"));
    bottomOptions
        .add(DesignOption('assets/images/trouser-women.png', "Trouser"));
    bottomOptions.add(DesignOption('assets/images/plazo.png', "Plazo"));

    DesignType bottoms = DesignType('Bottoms', bottomOptions);
    return bottoms;
  }

  static DesignType SLEEVES_MEN() {
    List<DesignOption> sleeveOptions = <DesignOption>[];

    sleeveOptions.add(DesignOption('assets/images/cuff.jpg', "Cuff"));
    sleeveOptions.add(DesignOption('assets/images/no-cuff.jpg', "No Cuff"));

    DesignType sleeves = DesignType('Sleeves', sleeveOptions);
    return sleeves;
  }

  static DesignType POCKET() {
    List<DesignOption> pocketOptions = <DesignOption>[];

    pocketOptions.add(
        DesignOption('assets/images/with-pocket.jpg', "Single Pocket"));
    pocketOptions
        .add(DesignOption('assets/images/no-pocket.jpg', "No Pocket"));

    DesignType pockets = DesignType('Pockets', pocketOptions);
    return pockets;
  }

  static DesignType BOTTOMS_MEN() {
    List<DesignOption> bottomOptions = <DesignOption>[];

    bottomOptions
        .add(DesignOption('assets/images/shalwar-men.png', "Shalwar"));
    bottomOptions
        .add(DesignOption('assets/images/trouser-men.png', "Trouser"));

    DesignType bottoms = DesignType('Bottoms', bottomOptions);
    return bottoms;
  }
}
