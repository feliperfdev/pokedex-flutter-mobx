import 'megasApi.dart';

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

class BEEDRILLMEGA {
  String id;
  Names names;
  Stats stats;
  PrimaryType primaryType;
  SecondaryType secondaryType;

  BEEDRILLMEGA({
    this.id,
    this.names,
    this.stats,
    this.primaryType,
    this.secondaryType,
  });

  BEEDRILLMEGA.fromJson(Map<String, dynamic> json) {
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

class PIDGEOTMEGA {
  String id;
  Names names;
  Stats stats;
  PrimaryType primaryType;
  SecondaryType secondaryType;

  PIDGEOTMEGA({
    this.id,
    this.names,
    this.stats,
    this.primaryType,
    this.secondaryType,
  });

  PIDGEOTMEGA.fromJson(Map<String, dynamic> json) {
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

class GENGARMEGA {
  String id;
  Names names;
  Stats stats;
  PrimaryType primaryType;
  SecondaryType secondaryType;

  GENGARMEGA({
    this.id,
    this.names,
    this.stats,
    this.primaryType,
    this.secondaryType,
  });

  GENGARMEGA.fromJson(Map<String, dynamic> json) {
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

class GYARADOSMEGA {
  String id;
  Names names;
  Stats stats;
  PrimaryType primaryType;
  SecondaryType secondaryType;

  GYARADOSMEGA({
    this.id,
    this.names,
    this.stats,
    this.primaryType,
    this.secondaryType,
  });

  GYARADOSMEGA.fromJson(Map<String, dynamic> json) {
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

class AMPHAROSMEGA {
  String id;
  Names names;
  Stats stats;
  PrimaryType primaryType;
  SecondaryType secondaryType;

  AMPHAROSMEGA({
    this.id,
    this.names,
    this.stats,
    this.primaryType,
    this.secondaryType,
  });

  AMPHAROSMEGA.fromJson(Map<String, dynamic> json) {
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

class HOUNDOOMMEGA {
  String id;
  Names names;
  Stats stats;
  PrimaryType primaryType;
  SecondaryType secondaryType;

  HOUNDOOMMEGA({
    this.id,
    this.names,
    this.stats,
    this.primaryType,
    this.secondaryType,
  });

  HOUNDOOMMEGA.fromJson(Map<String, dynamic> json) {
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

class ABOMASNOWMEGA {
  String id;
  Names names;
  Stats stats;
  PrimaryType primaryType;
  SecondaryType secondaryType;

  ABOMASNOWMEGA({
    this.id,
    this.names,
    this.stats,
    this.primaryType,
    this.secondaryType,
  });

  ABOMASNOWMEGA.fromJson(Map<String, dynamic> json) {
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
