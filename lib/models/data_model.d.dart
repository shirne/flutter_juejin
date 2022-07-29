part of 'data_model.dart';

final Map<Type, DataFactory> dataModelFactories = <Type, DataFactory>{
  EmptyDataModel: EmptyDataModel.fromJson,
  AdvertiseItemModel: AdvertiseItemModel.fromJson,
  ArticleItemModel: ArticleItemModel.fromJson,
  ArticleInfo: ArticleInfo.fromJson,
  ArticleStatus: ArticleStatus.fromJson,
  ArticleExtra: ArticleExtra.fromJson,
  Category: Category.fromJson,
  Tag: Tag.fromJson,
  CommentItemModel: CommentItemModel.fromJson,
  CommentInfo: CommentInfo.fromJson,
  CommentReply: CommentReply.fromJson,
  PinItemModel: PinItemModel.fromJson,
  PinInfo: PinInfo.fromJson,
  PinTopic: PinTopic.fromJson,
  PinTheme: PinTheme.fromJson,
  HotComment: HotComment.fromJson,
  FeedModel: FeedModel.fromJson,
  UserInfoModel: UserInfoModel.fromJson,
  UserUniversity: UserUniversity.fromJson,
  UserMajor: UserMajor.fromJson,
  UserGrowthInfo: UserGrowthInfo.fromJson,
  UserInteract: UserInteract.fromJson,
  UserOrg: UserOrg.fromJson,
};
