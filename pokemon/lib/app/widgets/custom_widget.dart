import 'package:flutter/material.dart';
import '../../app/constants/image_paths.dart';

class ImageFundoWidgets {
  static Image grassFundo() {
    return Image.asset(AppFundo.greenIncolor, width: 120, height: 125);
  }

  static Image fireFundo() {
    return Image.asset(AppFundo.fireIncolor, width: 120, height: 125);
  }

  static Image waterFundo() {
    return Image.asset(AppFundo.waterIncolor, width: 120, height: 125);
  }

  static Image get(String color) {
    List images = [
      {
        "key": "Grass",
        "image": grassFundo(),
      },
      {
        "key": "Fire",
        "image": fireFundo(),
      },
      {
        "key": "Fire",
        "image": fireFundo(),
      },
      {
        "key": "Water",
        "image": waterFundo(),
      },
    ];

    try {
      return images.firstWhere((e) => e['key'] == color)['image'];
    } catch (e) {
      return waterFundo();
    }
  }
}

class ImageFundoPerfilWidgets {
  static Image grassPerfilFundo() {
    return Image.asset(AppFundo.greenIncolor, width: 120, height: 125);
  }

  static Image firePerfilFundo() {
    return Image.asset(AppFundo.greenIncolor, width: 120, height: 125);
  }

  static Image waterPerfilFundo() {
    return Image.asset(AppFundo.greenIncolor, width: 120, height: 125);
  }
}

class ImageBotaoWidgets {
  static Image fireBotao() {
    return Image.asset(AppBotao.botaofire, width: 20, height: 20);
  }
  static Image flyingBotao() {
    return Image.asset(AppBotao.botaoflying, width: 20, height: 20);
  }

  static Image grassBotao() {
    return Image.asset(AppBotao.botaograss, width: 20, height: 20);
  }

  static Image poisonBotao() {
    return Image.asset(AppBotao.botaopoison, width: 20, height: 20);
  }

  static Image waterBotao() {
    return Image.asset(AppBotao.botaowater, width: 20, height: 20);
  }
  static Image psychicBotao() {
    return Image.asset(AppBotao.botaopsychic, width: 20, height: 20);
  }
  static Image iceBotao() {
    return Image.asset(AppBotao.botaoice, width: 20, height: 20);
  }
}
