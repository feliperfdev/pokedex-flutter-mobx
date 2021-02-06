class DescriptionAPI {
  Language language;
  List<FormDescriptions> formDescriptions;
  String name;

  DescriptionAPI({
    this.formDescriptions,
    this.language,
    this.name,
  });

  DescriptionAPI.fromJson(Map<String, dynamic> json) {
    if (json['form_descriptions'] != null) {
      formDescriptions = new List<FormDescriptions>();
      json['form_descriptions'].forEach((v) {
        formDescriptions.add(new FormDescriptions.fromJson(v));
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
    data['name'] = this.name;
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
