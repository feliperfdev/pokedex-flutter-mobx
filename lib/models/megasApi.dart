import 'package:pokedex_flutter_mobx/models/pokeapi.dart';

class PokeMegaAPI {
  String id;
  String formId;
  int dexNr;
  int generation;
  Names names;
  Stats stats;
  PrimaryType primaryType;
  SecondaryType secondaryType;
  bool hasMegaEvolution;
  MegaEvolutions megaEvolutions;

  PokeMegaAPI({
    this.id,
    this.formId,
    this.dexNr,
    this.generation,
    this.names,
    this.stats,
    this.primaryType,
    this.secondaryType,
    this.hasMegaEvolution,
    this.megaEvolutions,
  });

  PokeMegaAPI.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    formId = json['formId'];
    dexNr = json['dexNr'];
    generation = json['generation'];
    names = json['names'] != null ? new Names.fromJson(json['names']) : null;
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    primaryType = json['primaryType'] != null
        ? new PrimaryType.fromJson(json['primaryType'])
        : null;
    secondaryType = json['secondaryType'] != null
        ? new SecondaryType.fromJson(json['secondaryType'])
        : null;
    hasMegaEvolution = json['hasMegaEvolution'];
    megaEvolutions = json['megaEvolutions'] != null
        ? new MegaEvolutions.fromJson(json['megaEvolutions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['formId'] = this.formId;
    data['dexNr'] = this.dexNr;
    data['generation'] = this.generation;
    if (this.names != null) {
      data['names'] = this.names.toJson();
    }
    if (this.stats != null) {
      data['stats'] = this.stats.toJson();
    }
    if (this.primaryType != null) {
      data['primaryType'] = this.primaryType.toJson();
    }
    if (this.secondaryType != null) {
      data['secondaryType'] = this.secondaryType.toJson();
    }
    data['hasMegaEvolution'] = this.hasMegaEvolution;
    if (this.megaEvolutions != null) {
      data['megaEvolutions'] = this.megaEvolutions.toJson();
    }
    return data;
  }
}

class Names {
  String english;
  String german;
  String french;
  String italian;
  String japanese;
  String korean;
  String spanish;

  Names(
      {this.english,
      this.german,
      this.french,
      this.italian,
      this.japanese,
      this.korean,
      this.spanish});

  Names.fromJson(Map<String, dynamic> json) {
    english = json['English'];
    german = json['German'];
    french = json['French'];
    italian = json['Italian'];
    japanese = json['Japanese'];
    korean = json['Korean'];
    spanish = json['Spanish'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['English'] = this.english;
    data['German'] = this.german;
    data['French'] = this.french;
    data['Italian'] = this.italian;
    data['Japanese'] = this.japanese;
    data['Korean'] = this.korean;
    data['Spanish'] = this.spanish;
    return data;
  }
}

class Stats {
  int stamina;
  int attack;
  int defense;

  Stats({this.stamina, this.attack, this.defense});

  Stats.fromJson(Map<String, dynamic> json) {
    stamina = json['stamina'];
    attack = json['attack'];
    defense = json['defense'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['stamina'] = this.stamina;
    data['attack'] = this.attack;
    data['defense'] = this.defense;
    return data;
  }
}

class PrimaryType {
  String type;
  Names names;

  PrimaryType({this.type, this.names});

  PrimaryType.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    names = json['names'] != null ? new Names.fromJson(json['names']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.names != null) {
      data['names'] = this.names.toJson();
    }
    return data;
  }
}

class SecondaryType {
  String type;
  Names names;

  SecondaryType({this.type, this.names});

  SecondaryType.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    names = json['names'] != null ? new Names.fromJson(json['names']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.names != null) {
      data['names'] = this.names.toJson();
    }
    return data;
  }
}

class MegaEvolutions {
  VENUSAURMEGA vENUSAURMEGA;
  CHARIZARDMEGAX charizardmegax;
  CHARIZARDMEGAY charizardmegay;
  BLASTOISEMEGA blastoisemega;

  MegaEvolutions({
    this.vENUSAURMEGA,
    this.charizardmegax,
    this.charizardmegay,
    this.blastoisemega,
  });

  MegaEvolutions.fromJson(Map<String, dynamic> json) {
    vENUSAURMEGA = json['VENUSAUR_MEGA'] != null
        ? new VENUSAURMEGA.fromJson(json['VENUSAUR_MEGA'])
        : null;
    charizardmegax = json['CHARIZARD_MEGA_X'] != null
        ? new CHARIZARDMEGAX.fromJson(json['CHARIZARD_MEGA_X'])
        : null;
    charizardmegay = json['CHARIZARD_MEGA_Y'] != null
        ? new CHARIZARDMEGAY.fromJson(json['CHARIZARD_MEGA_Y'])
        : null;
    blastoisemega = json['BLASTOISE_MEGA'] != null
        ? new BLASTOISEMEGA.fromJson(json['BLASTOISE_MEGA'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.vENUSAURMEGA != null) {
      data['VENUSAUR_MEGA'] = this.vENUSAURMEGA.toJson();
    }
    return data;
  }
}

class VENUSAURMEGA {
  String id;
  Names names;
  Stats stats;
  PrimaryType primaryType;
  SecondaryType secondaryType;

  VENUSAURMEGA({
    this.id,
    this.names,
    this.stats,
    this.primaryType,
    this.secondaryType,
  });

  VENUSAURMEGA.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    names = json['names'] != null ? new Names.fromJson(json['names']) : null;
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    primaryType = json['primaryType'] != null
        ? new PrimaryType.fromJson(json['primaryType'])
        : null;
    secondaryType = json['secondaryType'] != null
        ? new SecondaryType.fromJson(json['secondaryType'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.names != null) {
      data['names'] = this.names.toJson();
    }
    if (this.stats != null) {
      data['stats'] = this.stats.toJson();
    }
    if (this.primaryType != null) {
      data['primaryType'] = this.primaryType.toJson();
    }
    if (this.secondaryType != null) {
      data['secondaryType'] = this.secondaryType.toJson();
    }
    return data;
  }
}

class CHARIZARDMEGAX {
  String id;
  Names names;
  Stats stats;
  PrimaryType primaryType;
  SecondaryType secondaryType;

  CHARIZARDMEGAX({
    this.id,
    this.names,
    this.stats,
    this.primaryType,
    this.secondaryType,
  });

  CHARIZARDMEGAX.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    names = json['names'] != null ? new Names.fromJson(json['names']) : null;
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    primaryType = json['primaryType'] != null
        ? new PrimaryType.fromJson(json['primaryType'])
        : null;
    secondaryType = json['secondaryType'] != null
        ? new SecondaryType.fromJson(json['secondaryType'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.names != null) {
      data['names'] = this.names.toJson();
    }
    if (this.stats != null) {
      data['stats'] = this.stats.toJson();
    }
    if (this.primaryType != null) {
      data['primaryType'] = this.primaryType.toJson();
    }
    if (this.secondaryType != null) {
      data['secondaryType'] = this.secondaryType.toJson();
    }
    return data;
  }
}

class CHARIZARDMEGAY {
  String id;
  Names names;
  Stats stats;
  PrimaryType primaryType;
  SecondaryType secondaryType;

  CHARIZARDMEGAY({
    this.id,
    this.names,
    this.stats,
    this.primaryType,
    this.secondaryType,
  });

  CHARIZARDMEGAY.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    names = json['names'] != null ? new Names.fromJson(json['names']) : null;
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    primaryType = json['primaryType'] != null
        ? new PrimaryType.fromJson(json['primaryType'])
        : null;
    secondaryType = json['secondaryType'] != null
        ? new SecondaryType.fromJson(json['secondaryType'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.names != null) {
      data['names'] = this.names.toJson();
    }
    if (this.stats != null) {
      data['stats'] = this.stats.toJson();
    }
    if (this.primaryType != null) {
      data['primaryType'] = this.primaryType.toJson();
    }
    if (this.secondaryType != null) {
      data['secondaryType'] = this.secondaryType.toJson();
    }
    return data;
  }
}

class BLASTOISEMEGA {
  String id;
  Names names;
  Stats stats;
  PrimaryType primaryType;
  SecondaryType secondaryType;

  BLASTOISEMEGA({
    this.id,
    this.names,
    this.stats,
    this.primaryType,
    this.secondaryType,
  });

  BLASTOISEMEGA.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    names = json['names'] != null ? new Names.fromJson(json['names']) : null;
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    primaryType = json['primaryType'] != null
        ? new PrimaryType.fromJson(json['primaryType'])
        : null;
    secondaryType = json['secondaryType'] != null
        ? new SecondaryType.fromJson(json['secondaryType'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.names != null) {
      data['names'] = this.names.toJson();
    }
    if (this.stats != null) {
      data['stats'] = this.stats.toJson();
    }
    if (this.primaryType != null) {
      data['primaryType'] = this.primaryType.toJson();
    }
    if (this.secondaryType != null) {
      data['secondaryType'] = this.secondaryType.toJson();
    }
    return data;
  }
}
