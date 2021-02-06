class DescriptionAPI {
  Language language;
  List<FormDescriptions> formDescriptions;
  List<FlavorTextEntries> flavorTextEntries;
  String name;
  Version version;

  DescriptionAPI({
    this.formDescriptions,
    this.language,
    this.name,
    this.flavorTextEntries,
    this.version,
  });

  DescriptionAPI.fromJson(Map<String, dynamic> json) {
    if (json['form_descriptions'] != null) {
      formDescriptions = new List<FormDescriptions>();
      json['form_descriptions'].forEach((v) {
        formDescriptions.add(new FormDescriptions.fromJson(v));
      });
    }
    if (json['flavor_text_entries'] != null) {
      flavorTextEntries = new List<FlavorTextEntries>();
      json['flavor_text_entries'].forEach((v) {
        flavorTextEntries.add(new FlavorTextEntries.fromJson(v));
      });
    }
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.formDescriptions != null) {
      data['form_descriptions'] =
          this.formDescriptions.map((v) => v.toJson()).toList();
    }
    if (this.flavorTextEntries != null) {
      data['flavor_text_entries'] =
          this.flavorTextEntries.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    return data;
  }
}

class FlavorTextEntries {
  String flavorText;
  Language language;
  Version version;

  FlavorTextEntries({this.flavorText, this.language, this.version});

  FlavorTextEntries.fromJson(Map<String, dynamic> json) {
    flavorText = json['flavor_text'];
    language = json['language'] != null
        ? new Language.fromJson(json['language'])
        : null;
    version =
        json['version'] != null ? new Version.fromJson(json['version']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flavor_text'] = this.flavorText;
    if (this.language != null) {
      data['language'] = this.language.toJson();
    }
    if (this.version != null) {
      data['version'] = this.version.toJson();
    }
    return data;
  }
}

class Version {
  String name;
  String url;

  Version({this.name, this.url});

  Version.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class Language {
  String name;
  String url;

  Language({this.name, this.url});

  Language.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class FormDescriptions {
  String description;
  Language language;

  FormDescriptions({this.description, this.language});

  FormDescriptions.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    language = json['language'] != null
        ? new Language.fromJson(json['language'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    if (this.language != null) {
      data['language'] = this.language.toJson();
    }
    return data;
  }
}
