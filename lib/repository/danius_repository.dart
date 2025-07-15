import 'package:daniustub/data/danius_model.dart';
import 'package:dio/dio.dart';

class Daniusrepository {
  Future<List<DaniusModel>> fethTube() async{
    
    final dio = Dio();
    final repository = await dio.get('https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLBCF2DAC6FFB574DE&maxResults=2&key=AIzaSyAsUDs2_PjtHzPD7feRj1fUDCJU53RlfoY');
    if (repository.statusCode == 200) {
     return DaniusModel.listFromResponse(repository.data);
    } else {
      throw Exception(
        'Ошибка загрузки видео'
      );
    }
  }
}