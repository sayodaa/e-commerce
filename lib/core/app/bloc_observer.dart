import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);

    debugPrint('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('onEvent -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);

    debugPrint('onChange -- ${bloc.runtimeType}');
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    debugPrint('onError -- ${bloc.runtimeType}');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);

    debugPrint('onClose -- ${bloc.runtimeType}');
  }
}
// {"threads":[{"position":0,"start":0,"end":544,"connection":"open"},{"position":1088,"start":545,"end":1088,"connection":"closed"}],"url":"https://att-c.udemycdn.com/2024-02-01_05-32-59-a84c1b29515c3ace80856e7ea718be38/original.dart?response-content-disposition=attachment%3B+filename%3Dbloc_observer.dart&Expires=1736496842&Signature=pqAfcJrv1CuPjJWW9ZxqQfBhysL01t~ADxD4-PlyPqfupQFlWCVEi9~M0aBJyemX2Twmjgg2-xrc3NWkXWN1uUiWvOTh08Ry0vDNoWSJfdpTnesQhd1ni0YdNAEmPmGd~vjLBBqJT5-ji8fygcdDsnvnR0eLCN45sEz0~ExEG59PTU8Eus9aTc~VehR5ON1UKAcN4omIghJVQkCgV1WvF0Q1TiA9xnVaVlVs2yDTDWi~ZBVXZdWBCTyqmXvQDA~ZeEgubR4fWfrNYFf500yWTore-yDsxW9YuCyGVwH9yMY9V~DVzkohMbYg23la0tbIcYgZJzNkFpiN9ov1bapePg__&Key-Pair-Id=K3MG148K9RIRF4","method":"GET","port":443,"downloadSize":1088,"headers":{"content-type":"binary/octet-stream","content-length":"1088","connection":"close","date":"Fri, 10 Jan 2025 05:01:23 GMT","x-amz-replication-status":"COMPLETED","last-modified":"Thu, 01 Feb 2024 05:33:00 GMT","etag":"\"881a5943647685397359ca634a2387d7\"","x-amz-server-side-encryption":"AES256","x-amz-meta-qqfilename":"bloc_observer.dart","x-amz-version-id":"50H4lxlpOv3rzkGkBdqSscQI0CRd2RXP","content-disposition":"attachment; filename=bloc_observer.dart","accept-ranges":"bytes","server":"AmazonS3","x-cache":"Miss from cloudfront","via":"1.1 cada6106b1dd50cba37a0bff9ace1a70.cloudfront.net (CloudFront)","x-amz-cf-pop":"CAI50-P2","x-amz-cf-id":"XjKDg4Fxicf1vR3X1vRI0vkH06DdHIBYNfaDmQYKh7rPnoRgrWUXzg==","x-cdn":"cf-cloudfront","vary":"Origin"}}