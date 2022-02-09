class ScreenSize {
  //TODO: verificar se isso ainda faz sentido, pq não faz sentido
  static final ScreenSize _screenSize = ScreenSize._internal();

  factory ScreenSize() {
    return _screenSize;
  }

  ScreenSize._internal();

  double screenHeight;
  double screenWidth;

  Map<String, double> sizes;

  initScreenSize(double height, double width) {
    this.screenHeight = height;
    this.screenWidth = width;

    sizes = {};

    sizes.addAll({
      "heightBottomBar": 60,
      "heightDefaultButtom": 40,
      "heightListTile": 115,
      "heightTopBar": 130,
      "percentualWidthDefaultButtom": 0.8,
      "percentualWidthListTile": 0.85,
      "textSize20": 20,
      "textSize18": 18,
      "textSize14": 14,
      "iconSizeTopBarButton": 30,
      "space10": 10,
      "space15": 15,
      "borderRadiusDefault": 15,
      "borderWidth": 2,
    });
  }

  double getHeightBottomBar() {
    final double originalValue = this.sizes["heightBottomBar"];

    return getOptimizedSize(originalValue);
  }

  double getHeightDefaultButtom() {
    final double originalValue = this.sizes["heightDefaultButtom"];

    return getOptimizedSize(originalValue);
  }

  double getHeightListTile() {
    final double originalValue = this.sizes["heightListTile"];

    return getOptimizedSize(originalValue);
  }

  double getHeightTopBar() {
    final double originalValue = this.sizes["heightTopBar"];

    return getOptimizedSize(originalValue);
  }

  double getPercentualWidthDefaultButtom() {
    double originalValue =
        screenWidth * this.sizes["percentualWidthDefaultButtom"];

    return getOptimizedPercentage(originalValue);
  }

  double getPercentualWidthListTile() {
    double originalValue = screenWidth * this.sizes["percentualWidthListTile"];

    return getOptimizedPercentage(originalValue);
  }

  double getIconSizeTopBarButton() {
    final double originalValue = this.sizes["iconSizeTopBarButton"];

    return getOptimizedSize(originalValue);
  }

  double getTextSize20() {
    final double originalValue = this.sizes["textSize20"];

    return getOptimizedSize(originalValue);
  }

  double getTextSize18() {
    final double originalValue = this.sizes["textSize18"];

    return getOptimizedSize(originalValue);
  }

  double getTextSize14() {
    final double originalValue = this.sizes["textSize14"];

    return getOptimizedSize(originalValue);
  }

  double getSpace10() {
    final double originalValue = this.sizes["space10"];

    return getOptimizedSize(originalValue);
  }

  double getSpace15() {
    final double originalValue = this.sizes["space15"];

    return getOptimizedSize(originalValue);
  }

  double getBorderRadiusDefault() {
    final double originalValue = this.sizes["borderRadiusDefault"];

    return getOptimizedSize(originalValue);
  }

  double getBorderWidth() {
    final double originalValue = this.sizes["borderWidth"];

    return getOptimizedSize(originalValue);
  }

  ///

  double getOptimizedSize(double originalValue) {
    final double finalValue =
        ((screenHeight / 500).ceil() * 0.5) * originalValue;

    return finalValue;
  }

  double getOptimizedPercentage(double originalPercentage) {
    final double finalPercentage =
        portraitOrientation() ? originalPercentage : (originalPercentage / 2.0);

    return finalPercentage;
  }

  bool portraitOrientation() {
    return screenHeight > screenWidth;
  }
}
