import 'package:daniustub/data/danius_model.dart';
import 'package:dio/dio.dart';

class Daniusrepository {
  Future<List<DaniusModel>> fethTube() async {
    final dio = Dio();
    final response = await dio.get('https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLBCF2DAC6FFB574DE&maxResults=2&key=AIzaSyAsUDs2_PjtHzPD7feRj1fUDCJU53RlfoY');
    if (response.statusCode == 200) {
      return DaniusModel.listFromResponse(response.data);
    } else {
      throw Exception('Ошибка загрузки видео');
    }
  }
}