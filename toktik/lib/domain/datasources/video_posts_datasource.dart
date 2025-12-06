import 'package:toktik/domain/entities/video_post.dart';

mixin VideoPostDatasource {
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID);
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
