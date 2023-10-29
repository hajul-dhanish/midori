import 'package:midori/features/dashboard/domain/entity/dashboard_entity.dart';

class DashboardModel extends DashboardEntity {
  const DashboardModel(
      {required super.industryEntity,
      required super.categoryEntity,
      required super.subCategoryEntity});

  factory DashboardModel.fromJson(Map<String, dynamic> json) {
    var industryList = json["industry"];
    var categoryList = json["category"];
    var subCatList = json["subcategoryy"];

    return DashboardModel(
      industryEntity: List<IndustryModel>.from(
          industryList.map((e) => IndustryModel.fromJson(e))),
      categoryEntity: List<CategoryModel>.from(
          categoryList.map((e) => CategoryModel.fromJson(e))),
      subCategoryEntity: List<SubCategoryModel>.from(
          subCatList.map((e) => SubCategoryModel.fromJson(e))),
    );
  }
}

class IndustryModel extends IndustryEntity {
  const IndustryModel({
    required super.pkID,
    required super.industry,
    required super.description,
    required super.image,
  });

  factory IndustryModel.fromJson(Map<String, dynamic> json) {
    return IndustryModel(
      pkID: json['pkID'],
      industry: json['industry'],
      description: json['desc'],
      image: json['img'],
    );
  }
}

class CategoryModel extends CategoryEntity {
  const CategoryModel({
    required super.pkID,
    required super.catID,
    required super.category,
    required super.description,
    required super.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      pkID: json['pkID'],
      catID: json['catID'],
      category: json['category'],
      description: json['desc'],
      image: json['img'],
    );
  }
}

class SubCategoryModel extends SubCategoryEntity {
  const SubCategoryModel({
    required super.catID,
    required super.subCatID,
    required super.subCategory,
    required super.description,
    required super.image,
  });

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) {
    return SubCategoryModel(
      catID: json['catID'],
      subCatID: json['subCatID'],
      subCategory: json['subCategory'],
      description: json['desc'],
      image: json['img'],
    );
  }
}
