import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_1/components/item_job.dart';
// import Job
import 'package:flutter_1/classes/job.dart';
import 'package:flutter_1/classes/company.dart';

class JobCarousel extends StatelessWidget {
  // receive required title
  final String? title;

  JobCarousel({
    this.title,
  });

  List<Job> forYouJobs = [
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
      role: 'Product Designer',
      location: 'San Francisco, CA',
      company: Company(
        name: 'Google',
        urlLogo:
            'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip',
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
      role: 'QA Engineer',
      location: 'Anywhere',
      company: Company(
        name: 'Discord',
        urlLogo:
            'https://cdn.iconscout.com/icon/free/png-256/discord-3691244-3073764.png',
      ),
    ),
    Job(
      role: 'Product Owner',
      location: 'Anywhere',
      company: Company(
        name: 'PayPal',
        urlLogo:
            'https://freeter.io/embedding-web-apps/payment-processing/paypal.png',
      ),
    ),
    Job(
      role: 'Android Developer',
      location: 'Anywhere',
      company: Company(
        name: 'Spotify',
        urlLogo:
            'https://cdn.iconscout.com/icon/free/png-256/spotify-11-432546.png',
      ),
    ),
  ];

  List<Job> usJobs = [
    Job(
      role: 'iOS Developer',
      location: 'New York',
      company: Company(
        name: 'Xbox',
        urlLogo:
            'https://www.shareicon.net/data/256x256/2015/07/28/76387_xbox_256x256.png',
      ),
    ),
    Job(
      role: 'UX/UI Designer',
      location: 'Seattle, WA',
      company: Company(
        name: 'Walmart',
        urlLogo:
            'https://static-s.aa-cdn.net/img/gp/20600005901048/NjfJVcXryyqXkYWyv9RbXquLxvsbZO_mKZiHgqWUqx8Gr9wqd7dr8ekzXXs_MxygYQ?v=1',
      ),
    ),
    Job(
      role: '3D Modeler',
      location: 'San Francisco, CA',
      company: Company(
        name: 'Epic Games',
        urlLogo:
            'https://static.wikia.nocookie.net/gtawiki/images/8/89/EpicGamesLaucher-icon.png/revision/latest?cb=20210112200352',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // list of jobs based on title
    List<Job> jobs = title == 'For You'
        ? forYouJobs
        : title == 'New Zealand'
            ? nzJobs
            : usJobs;

    return CarouselSlider(
      options: CarouselOptions(
          height: 150,
          reverse: false,
          viewportFraction: 0.86,
          enableInfiniteScroll: false),
      items: <Widget>[
        for (var job in jobs) ItemJob(job: job),
      ],
    );
  }
}
