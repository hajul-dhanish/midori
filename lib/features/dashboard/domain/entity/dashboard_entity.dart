import 'package:equatable/equatable.dart';

class DashboardEntity extends Equatable {
  final List<IndustryEntity> industryEntity;
  final List<CategoryEntity> categoryEntity;
  final List<SubCategoryEntity> subCategoryEntity;

  const DashboardEntity({required this.industryEntity, required this.categoryEntity, required this.subCategoryEntity});


  @override
  List<Object?> get props => [];
}

class IndustryEntity extends Equatable {
  final int pkID;
  final String industry;
  final String description;
  final String image;

  const IndustryEntity({
    required this.pkID,
    required this.industry,
    required this.description,
    required this.image,
  });

  @override
  List<Object?> get props => [];
}

class CategoryEntity extends Equatable {
  final int pkID;
  final int catID;
  final String category;
  final String description;
  final String image;

  const CategoryEntity({
    required this.pkID,
    required this.catID,
    required this.category,
    required this.description,
    required this.image,
  });

  @override
  List<Object?> get props => [];
}

class SubCategoryEntity extends Equatable {
  final int catID;
  final int subCatID;
  final String subCategory;
  final String description;
  final String image;

  const SubCategoryEntity({
    required this.catID,
    required this.subCatID,
    required this.subCategory,
    required this.description,
    required this.image,
  });

  @override
  List<Object?> get props => [];
}
