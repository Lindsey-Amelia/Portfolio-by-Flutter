import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const AppDrawer(),
      body: const Center(
        child: Text(
          'Welcome to My Portfolio',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('About Me'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutMePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.work),
            title: const Text('Projects'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProjectsPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.code),
            title: const Text('Skills'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SkillsPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text (
          'I am a Software Developer excited about the intersection of design and technology, with a keen eye for UX/UI principles. Proficient in print management, ensuring seamless production workflows.' 
'Problem-solver with a knack for analytical thinking and effective communication. Passionate about leveraging technology to streamline processes and enhance user experiences. Proficient in JavaScript and Python, with hands-on experience in HTML & CSS.'
'Known for fostering collaborative environments and leading teams towards shared goals. Student leadership experience honed my ability to mentor and inspire others'
'Am open to opportunities where I can leverage my diverse skill set to drive innovation and make a meaningful impact.' 
'Lets connect and explore ways to collaborate!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '1. Exquisite HealthCare System \n2. Tulearn Website \n3.OpenLp project.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Javascript, \nCSS, \nHtml, \nArtificial \nIntelligence, \nGraphic Design, \nTeamleadership, \nanalytical thinking.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
          'This is the Contact page. ',
          style: TextStyle(fontSize: 18),
            ),  
          const SizedBox(height:8),
          _buildLinkText('Github - https://github.com/Lindsey-Amelia,' 'https://github.com/Lindsey-Amelia',),
          const SizedBox(height: 8),
          _buildLinkText('LinkedIn - https://www.linkedin.com/in/lindsey-amelia-omoto-b56ba920b/', 'https://www.linkedin.com/in/lindsey-amelia-omoto-b56ba920b/'),
           const SizedBox(height:  8),
          const Text('\nEmail. lindseyomoto46@gmail.com.              \nFeel free to contact me!',
          style: TextStyle(fontSize: 18),
        ),
      ],
      ),
    ),
  );
}
    Widget _buildLinkText(String text, String url) {
    return InkWell(
      child: Text(
        text,
        style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline, fontSize: 18),
      ),
      onTap: () => _launchURL(url),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
