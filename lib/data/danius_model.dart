import 'package:equatable/equatable.dart';

class DaniusModel extends Equatable{
 final String videoId;
 final String title;
 final String thumbNailsUrl;
 final String publishedAt;
 final String channelId;
 final String description;
 final List<Map<String, dynamic>> items;

 DaniusModel({
    required this.videoId,
    required this.title,
    required this.thumbNailsUrl,
    required this.publishedAt,
    required this.channelId,
    required this.description,
    required this.items
 });

 DaniusModel copyWith ({
    String? videoId,
    String? title,
    String? thumbNailsUrl,
    String? publishedAt,
    String? channelId,
    String? description,
    List<Map<String, dynamic>>? items
 }) {
    return DaniusModel(
        videoId: videoId ?? this.videoId, 
        title: title ?? this.title, 
        thumbNailsUrl: thumbNailsUrl ?? this.thumbNailsUrl,
        publishedAt: publishedAt ?? this.publishedAt,
        channelId: channelId ?? this.channelId,
        description: description ?? this.description,
        items: items ?? this.items
        );
 }

 factory DaniusModel.fromJson(Map<String, dynamic> json) {
    return DaniusModel(
        videoId: json['snippet']['resourceId']['videoId'], 
        title: json['snippet']['title'], 
        thumbNailsUrl: json['snippet']['thumbnails']['medium']['url'],
        publishedAt: json['snippet']['publishedAt'],
        channelId: json['snippet']['channelId'],
        description: json['snippet']['description'],
        items: json['items']
    );
 }

 @override
 List<Object> get props => [
    videoId,
    title,
    thumbNailsUrl,
    publishedAt,
    channelId,
    description,
    items
 ];
}
