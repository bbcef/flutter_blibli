import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CarouselWidget extends StatelessWidget {
  List<String> images = const [
    'assets/images/bgimg.jpg',
    'assets/images/bgimg.jpg',
    'assets/images/bgimg.jpg',
    'assets/images/bgimg.jpg'
  ];
  
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8),
      sliver: SliverToBoxAdapter(
        child: Container(
          height: 180,
          color: Theme.of(context).scaffoldBackgroundColor,
          // padding: EdgeInsets.only(bottom: 8,top:8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: Swiper(
              autoplay: true,
              itemBuilder: (BuildContext context, int index) {
                return  Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                );
              },
              // swiperPlugin: 
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              // pagination: new SwiperPagination(alignment: Alignment.bottomCenter),
              pagination:new SwiperCustomPagination(
                builder:(BuildContext context, SwiperPluginConfig config){
                  return  ActivityPageination(
                    count: config.itemCount,
                    activeIndex: config.activeIndex,
                  );
                }
              )
            ),
          )
        )
      ),
    );
  }
}


class ActivityPageination extends StatelessWidget {
  ActivityPageination({
    this.count,
    this.activeIndex
  });
  int count;
  int activeIndex;
  @override
  Widget build(BuildContext context) {
    var children = List.generate(count, (index) => Container(
      decoration: BoxDecoration(
        color: activeIndex == index ? Theme.of(context).primaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(55)
      ),
      height: 4, //3,
      width: 4, // activeIndex == index ? 12 : 4,
      margin: EdgeInsets.symmetric(
        horizontal: 3
      ),
    )).toList();
    return Container(
      alignment:  Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(bottom: 8,right:5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: children,
        ),
      )
    );
  }
}