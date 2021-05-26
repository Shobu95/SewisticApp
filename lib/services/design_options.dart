import 'package:sewistic_app/models/order/design_type.dart';

class ClothDesignOptions {
  static DesignType NECK_LINES() {
    List<DesignOption> neckLineOptions = new List<DesignOption>();

    neckLineOptions.add(
        new DesignOption('assets/images/round-neck.png', "Round Neckline"));
    neckLineOptions
        .add(new DesignOption('assets/images/v-neck.png', "V Neckline"));
    neckLineOptions.add(
        new DesignOption('assets/images/square-neck.png', "Square Neckline"));
    neckLineOptions
        .add(new DesignOption('assets/images/star-neck.png', "Star Neckline"));
    neckLineOptions
        .add(new DesignOption('assets/images/boat-neck.png', "Boat Neckline"));
    neckLineOptions.add(new DesignOption(
        'assets/images/sherwani-neck.jpg', "Sherwani Neckline"));

    DesignType neckLines = new DesignType('Necklines', neckLineOptions);
    return neckLines;
  }

  static DesignType SLEEVES_WOMEN() {
    List<DesignOption> sleeveOptions = new List<DesignOption>();

    sleeveOptions.add(
        new DesignOption('assets/images/full-sleeves.png', "Full Sleeves"));
    sleeveOptions.add(new DesignOption(
        'assets/images/quarter-sleeves.png', "Quarter Sleeves"));
    sleeveOptions.add(
        new DesignOption('assets/images/half-sleeves.png', "Half Sleeves"));

    DesignType sleeves = new DesignType('Sleeves', sleeveOptions);
    return sleeves;
  }

  static DesignType BOTTOMS_WOMEN() {
    List<DesignOption> bottomOptions = new List<DesignOption>();

    bottomOptions.add(new DesignOption(
        'assets/images/shalwar-women.png', "Standard Shalwar"));
    bottomOptions
        .add(new DesignOption('assets/images/trouser-women.png', "Trouser"));
    bottomOptions.add(new DesignOption('assets/images/plazo.png', "Plazo"));

    DesignType bottoms = new DesignType('Bottoms', bottomOptions);
    return bottoms;
  }

  static DesignType SLEEVES_MEN() {
    List<DesignOption> sleeveOptions = new List<DesignOption>();

    sleeveOptions.add(new DesignOption('assets/images/cuff.jpg', "Cuff"));
    sleeveOptions.add(new DesignOption('assets/images/no-cuff.jpg', "No Cuff"));

    DesignType sleeves = new DesignType('Sleeves', sleeveOptions);
    return sleeves;
  }

  static DesignType POCKET() {
    List<DesignOption> pocketOptions = new List<DesignOption>();

    pocketOptions.add(
        new DesignOption('assets/images/with-pocket.jpg', "Single Pocket"));
    pocketOptions
        .add(new DesignOption('assets/images/no-pocket.jpg', "No Pocket"));

    DesignType pockets = new DesignType('Pockets', pocketOptions);
    return pockets;
  }

  static DesignType BOTTOMS_MEN() {
    List<DesignOption> bottomOptions = new List<DesignOption>();

    bottomOptions
        .add(new DesignOption('assets/images/shalwar-men.png', "Shalwar"));
    bottomOptions
        .add(new DesignOption('assets/images/trouser-men.png', "Trouser"));

    DesignType bottoms = new DesignType('Bottoms', bottomOptions);
    return bottoms;
  }
}
