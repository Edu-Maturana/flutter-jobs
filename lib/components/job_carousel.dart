import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_1/components/item_job.dart';
// import Job
import 'package:flutter_1/classes/job.dart';
import 'package:flutter_1/classes/company.dart';

class JobCarousel extends StatelessWidget {
  List<Job> forYouJobs = [
    Job(
      role: 'Product Designer',
      location: 'San Francisco, CA',
      company: Company(
        name: 'Google',
        urlLogo:
            'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip',
      ),
    ),
    Job(
      role: 'DevOps Engineer',
      location: 'Miami',
      company: Company(
        name: 'Netflix',
        urlLogo:
            'https://i.pinimg.com/originals/8c/74/0b/8c740bc13bd5a0a19c24d28dff98cbdd.png',
      ),
    ),
    Job(
      role: 'Mobile Developer',
      location: 'New York',
      company: Company(
        name: 'Airbnb',
        urlLogo:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfj5u03lWebXnUxDClk-NhG8ahWDGuuRu7X2D3qVqutuBEKqf74KomVfW7HsstxaUs7R4&usqp=CAU',
      ),
    ),
  ];

  List<Job> nzJobs = [
    Job(
      role: 'Product Designer',
      location: 'San Francisco, CA',
      company: Company(
        name: 'Google',
        urlLogo:
            'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip',
      ),
    ),
    Job(
      role: 'DevOps Engineer',
      location: 'Miami',
      company: Company(
        name: 'Netflix',
        urlLogo:
            'https://i.pinimg.com/originals/8c/74/0b/8c740bc13bd5a0a19c24d28dff98cbdd.png',
      ),
    ),
    Job(
      role: 'Mobile Developer',
      location: 'New York',
      company: Company(
        name: 'Airbnb',
        urlLogo:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfj5u03lWebXnUxDClk-NhG8ahWDGuuRu7X2D3qVqutuBEKqf74KomVfW7HsstxaUs7R4&usqp=CAU',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 150,
          reverse: false,
          viewportFraction: 0.86,
          enableInfiniteScroll: false),
      items: <Widget>[
        for (var job in forYouJobs)
          ItemJob(
            job: job,
          ),
      ],
    );
  }
}
