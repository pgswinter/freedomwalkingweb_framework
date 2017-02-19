-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2017 at 06:13 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freedomwalkingteam`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievement`
--

CREATE TABLE `achievement` (
  `id_achi` int(255) NOT NULL,
  `id_busi_type` int(255) NOT NULL,
  `name_project` varchar(255) NOT NULL,
  `date_finished` varchar(255) NOT NULL,
  `date_started` varchar(255) NOT NULL,
  `comment` varchar(60000) NOT NULL,
  `description` varchar(255) NOT NULL,
  `id_client` int(255) NOT NULL,
  `id_team` int(255) NOT NULL,
  `id_gallery` int(255) NOT NULL,
  `id_career` int(255) NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achievement`
--

INSERT INTO `achievement` (`id_achi`, `id_busi_type`, `name_project`, `date_finished`, `date_started`, `comment`, `description`, `id_client`, `id_team`, `id_gallery`, `id_career`, `img_url`) VALUES
(1, 1, 'was fixed 1st', 'have been doing', '28/12/2016', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quod vitae impedit neque, quo fuga porro voluptatum, tempore eos numquam nulla unde odit in distinctio nihil placeat provident labore! Fuga aspernatur, aliquam ipsam ipsa possimus assumenda expedita odio alias obcaecati aperiam nesciunt nihil sint molestiae reprehenderit doloribus molestias minima fugiat?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique doloremque autem magni, iure ea provident assumenda perferendis blanditiis cum sapiente!', 1, 1, 1, 1, '../photos/hero_slider/06.jpeg'),
(2, 1, 'was fixed at 2nd', 'have been doing', '28/12/2016', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quod vitae impedit neque, quo fuga porro voluptatum, tempore eos numquam nulla unde odit in distinctio nihil placeat provident labore! Fuga aspernatur, aliquam ipsam ipsa possimus assumenda expedita odio alias obcaecati aperiam nesciunt nihil sint molestiae reprehenderit doloribus molestias minima fugiat?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique doloremque autem magni, iure ea provident assumenda perferendis blanditiis cum sapiente!', 1, 1, 1, 1, '../photos/hero_slider/06.jpeg'),
(3, 2, 'was fixed at 3rd', 'have been doing', '28/12/2016', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quod vitae impedit neque, quo fuga porro voluptatum, tempore eos numquam nulla unde odit in distinctio nihil placeat provident labore! Fuga aspernatur, aliquam ipsam ipsa possimus assumenda expedita odio alias obcaecati aperiam nesciunt nihil sint molestiae reprehenderit doloribus molestias minima fugiat?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique doloremque autem magni, iure ea provident assumenda perferendis blanditiis cum sapiente!', 1, 1, 1, 1, '../photos/hero_slider/06.jpeg'),
(4, 2, 'the guardian galaxy', 'have been doing', '28/12/2016', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quod vitae impedit neque, quo fuga porro voluptatum, tempore eos numquam nulla unde odit in distinctio nihil placeat provident labore! Fuga aspernatur, aliquam ipsam ipsa possimus assumenda expedita odio alias obcaecati aperiam nesciunt nihil sint molestiae reprehenderit doloribus molestias minima fugiat?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique doloremque autem magni, iure ea provident assumenda perferendis blanditiis cum sapiente!', 1, 1, 1, 1, '../photos/hero_slider/06.jpeg'),
(5, 4, 'Lion King', 'have been doing', '28/12/2016', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quod vitae impedit neque, quo fuga porro voluptatum, tempore eos numquam nulla unde odit in distinctio nihil placeat provident labore! Fuga aspernatur, aliquam ipsam ipsa possimus assumenda expedita odio alias obcaecati aperiam nesciunt nihil sint molestiae reprehenderit doloribus molestias minima fugiat?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique doloremque autem magni, iure ea provident assumenda perferendis blanditiis cum sapiente!', 1, 1, 1, 1, '../photos/hero_slider/06.jpeg'),
(6, 4, 'was fixed 6th', '29/12/2016', '28/12/2016', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quod vitae impedit neque, quo fuga porro voluptatum, tempore eos numquam nulla unde odit in distinctio nihil placeat provident labore! Fuga aspernatur, aliquam ipsam ipsa possimus assumenda expedita odio alias obcaecati aperiam nesciunt nihil sint molestiae reprehenderit doloribus molestias minima fugiat?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique doloremque autem magni, iure ea provident assumenda perferendis blanditiis cum sapiente!', 1, 1, 1, 1, '../photos/hero_slider/06.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(255) NOT NULL,
  `id_busi_type` int(255) NOT NULL,
  `id_link` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `like` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `img_blog` varchar(255) NOT NULL,
  `content` varchar(60000) NOT NULL,
  `id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id_blog`, `id_busi_type`, `id_link`, `title`, `date`, `like`, `author`, `img_blog`, `content`, `id`) VALUES
(1, 1, 1, 'There is title of ID 1', '13/12/2016', '1', 'John Doe', '../photos/hero_slider/tree.jpg', '<p>34 languages are supported including RTL(Right To Left) support</p><p>34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(<strong><em>Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support</em></strong></p><p style="margin-left: 20px;"><em><strong>34 languages are supported including RTL(Right To Left) support</strong></em></p><p style="margin-left: 20px;"><strong><em>34 languages are supported including RTL(Right To Left) support</em></strong></p><p style="margin-left: 20px;">34 languages are supported including RTL(Right To Left) support</p><p style="margin-left: 20px;"><img class="fr-dib fr-draggable" src="https://i.froala.com/download/ffc1f469ccad28b5aebdcf3a52b5e4998ac2b319.jpg?1483955363" style="width: 300px;"></p><p><br></p>', NULL),
(2, 2, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '21/12/2016', '9999', 'Robert NGUYEN', '../photos/hero_slider/better_1.jpg', '', NULL),
(3, 2, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '21/12/2016', '5555', 'Steve Jobs', '../photos/hero_slider/creative-html5-website-templates.jpg', '', NULL),
(4, 2, 2, 'Added title for article for blog 4', '', '', 'Robert', '', '', NULL),
(8, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', NULL),
(9, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', NULL),
(10, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', NULL),
(11, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', NULL),
(12, 1, 1, 'How to tackle the unstable future of news like a tech startup', '18/02/2017', '18/02/2017', 'Robert', 'https://cdn-images-1.medium.com/max/1250/1*NawsNoSmIFRJ4Yq6qjwfEQ.jpeg', '<h4 name="4620">While in Manila for the first&nbsp;<a data-href="http://www.globaleditorsnetwork.org/programmes/editors-lab/philippines-editors-lab/" href="http://www.globaleditorsnetwork.org/programmes/editors-lab/philippines-editors-lab/" rel="nofollow noopener" target="_blank">Philippines Editors Lab</a><span>&nbsp;</span>to kick off season five, I had the chance to speak with Maria Ressa, founder, CEO and executive editor of&nbsp;<a data-href="http://www.rappler.com/" href="http://www.rappler.com/" rel="nofollow noopener" target="_blank">Rappler</a><span>&nbsp;</span>and&nbsp;<a data-href="http://www.globaleditorsnetwork.org/press-room/news/2016/06/new-board-members/" href="http://www.globaleditorsnetwork.org/press-room/news/2016/06/new-board-members/" rel="nofollow noopener" target="_blank">recently appointed GEN board member</a>. We discussed the secrets behind the success of the online news startup, the Southeast Asian media market and how Buddhism and surfing can help you cope with an unstable digital landscape.</h4><p name="a1e1"><em>This interview has been slightly edited for length and clarity.</em></p><p name="9185"><strong>When did you decide to start Rappler?</strong></p><p name="53da">We were thinking about how journalism would change given the technology. And for me, as this is my thirtieth year as a journalist, I wanted to see how we could actually have greater impact.</p><p name="68d9">The very things that make a traditional news group successful are the same things that prevent it from shifting quickly now, from adapting quickly. When I first came to the Philippines in 2005 I did the workflows of ABS-CBN, which is the largest network in the Philippines, and looking at those workflows we then cemented them to be as efficient as possible. If youâ€™re cemented youâ€™re never going to be able to adapt and so trying to shift a traditional news group in this new world is really tough. So I thought there was a huge opportunity and it was actually easier to start with nothing than to try to shift a thousand people in the news group.</p><p name="6ebe">We thought we could have greater impact using technology in a society that is literally still putting itself together. The characteristics of the two countries that we operate in are that they have weak institutions, weak law and order yet a young population that zeitgeists for change. But the young folks donâ€™t know necessarily how to do it. So letâ€™s try to see if we can harness that energy.</p><p name="6a3e"><strong>How is the newsroom organised? How is it structured now knowing that itâ€™s pliable. What are the main departments, how do they relate to each other?</strong></p><p name="dee4">Overall we want to make sure that the organisation is flat. Because it is changing so fast, the decision-makers need to be in touch with the granular details. But you canâ€™t be mired in the granular details that you canâ€™t pull up to see a bigger picture. So just strategically we are smaller than traditional news groups. I always joke that one Rappler is worth ten.</p><figure data-scroll="native" name="ddbe"><img data-src="https://cdn-images-1.medium.com/max/750/0*vZQktBGTDLbfI7eo." src="https://cdn-images-1.medium.com/max/750/0*vZQktBGTDLbfI7eo." class="fr-dii fr-draggable"><figcaption>Rappler engages its readers on<span>&nbsp;</span><a data-href="https://www.instagram.com/rappler/" href="https://www.instagram.com/rappler/" rel="nofollow noopener" target="_blank">Instagram</a></figcaption></figure><p name="cd8c">The second is that our goal is to make it have real world impact. So one of the things we did was we added a civic engagement arm which partners with NGOs. Itâ€™s a world of collaborations versus in the past where a big network owned it all. Now you collaborate so you learn, so innovation comes through that.</p><p name="295b">And then the third part is shifting away from expertise to cutting across vertical silos. I think traditional news groups are set up for expertise in each silo. The innovative landscape is when you can cut across all of these and you actually train people who know how these all fit together and then they can take something that tech is doing and apply it to journalism, or take something that the artists are doing and apply it to tech. The struggle, always is to try to integrate vertical silos in a way that doesnâ€™t impede efficiency but actually encourages innovation.</p><p name="c81a"><strong>That leads me to the next point which is what is the role of your developers and your IT people?</strong></p><p name="27b3">Huge. And making them adapt to news time is a huge challenge. Because developers tend to want to control their environment and news is all about reacting to events you cannot control. In our old office I threw the developers in with social media, in with the reporters, because this newsroom is electrifying when breaking news happens. Tech is the underpinning of everything.</p><p name="c14f">If you have really good tech people who understand journalism and understand the purpose of journalism you will create something new.</p><p name="6f05">Now itâ€™s almost like master/slave switches. Because I think when we first started Rappler journalists were the master and tech was its slave, and then I realise somewhere along the way, that itâ€™s a combination now. Itâ€™s something that I would say with Google or with Facebook. Facebook whether it wants it or not, the tech platforms, whether they want to think about it or not, if they bring journalists into the fold, they are going to have to think about the purpose of journalism and society. So once I have tech folks who are imbued with that same mission, then they will create from their expertise what the journalists are running after in their field of expertise. And thatâ€™s the best.</p><figure name="f308"><img data-src="https://cdn-images-1.medium.com/max/1000/0*fwoX5EAQmWz6pTeg.jpg" src="https://cdn-images-1.medium.com/max/1000/0*fwoX5EAQmWz6pTeg.jpg" class="fr-dii fr-draggable"><figcaption><em>Maria Ressa at the&nbsp;</em><a data-href="http://www.globaleditorsnetwork.org/programmes/editors-lab/philippines-editors-lab/" href="http://www.globaleditorsnetwork.org/programmes/editors-lab/philippines-editors-lab/" rel="nofollow noopener" target="_blank"><em>Philippines Editors Lab</em></a><em><span>&nbsp;</span>held in Manila on 7â€“8 July 2016.<br>Photograph by Nicolas&nbsp;Magand</em></figcaption></figure><p name="c7d2"><strong>That mixing of cultures you mean?</strong></p><p name="cb4a">Not just the mix of cultures I mean, they think differently. The tech folks want to be able to, in a vacuum, build and develop and then iterate as they go. In news, you never have that luxury. Itâ€™s adaptability.</p><p name="92ed"><strong>How did you build your credibility? Do you still face skepticism from the public being this new breed of news media?</strong></p><p name="bcd9">I think credibility is what we always offered from the very beginning because of who the founders were. Part of it is becauseâ€Šâ€”â€Šand Iâ€™m biased butâ€Šâ€”â€Šthe best investigative journalists in the Philippines are our founders. They have all had books written under their names that showed a body of work. But we felt that passion for changing our society which underlies the purpose of journalism, thatâ€™s why people become journalists. That passion we found when you combine it with technology, with social media, with the ability to cascade information faster, you can actually impact your society more.</p><p name="6bdf">So when you take the experience and you merge it with the passion of the twenty-somethings who never sleep, who continuously experiment, who never say never, we do things together that are magical.</p><p name="1e5e">How did people react? Our peers first thought we were crazy but that was like the first six months. Once they saw the kind of things you could do with social media, with technology, then it amped up the game in the Philippines. And that also coincided with the growth of internet penetration. Whatâ€™s happened since then is that the traditional news groups have adapted and everyone is looking at a digital future now.</p><figure name="4ca4"><img data-src="https://cdn-images-1.medium.com/max/1000/0*FaCfbnapwTPt3R7w." src="https://cdn-images-1.medium.com/max/1000/0*FaCfbnapwTPt3R7w." class="fr-dii fr-draggable"><figcaption><em>Rappler tries to reach to the young, tech-savvy population of the Philippines. Photograph by&nbsp;</em><a data-href="https://www.flickr.com/photos/adamcohn/24969341686/" href="https://www.flickr.com/photos/adamcohn/24969341686/" rel="nofollow noopener" target="_blank"><em>Adam&nbsp;Cohn</em></a></figcaption></figure><p name="5b32">Why purely online? Itâ€™s taking advantage of exponential growth, always. Taking advantage of the information cascade. Trying to reach to a young demographic, thatâ€™s our last part. Weâ€™re 100 million people in the Filipino population, the median age is 23 years-old, they are savvy, on the phone. Indonesia is 250 million people, median age is 22 years-old. Again, young population, hunger for change, and the ability to want to do things differently.</p><p name="9a03">You asked about credibility. I think partly because of who we were, the credibility was what allowed us to monetise Rappler. The other part of this is the business model of journalism. Itâ€™s crumbling and if we stuck to the old ways, itâ€™s like a â€œhuff and puff and blow your house downâ€. So news has got to find a new business model and we started that experiment in 2012 and so credibility was at the forefront, independent journalism was the second rung, and then the third is community engagement. So if we can do that and build communities of action, we saw this in 2013 when we were able to help build a anti-corruption community, we were able to help launch a<span>&nbsp;</span><a data-href="http://agos.rappler.com/" href="http://agos.rappler.com/" rel="nofollow noopener" target="_blank">disaster risk reduction platform</a>, so many things that are much more tangible than what I used to do in a TV report and throw it into a black box and never see any returns.</p><p name="18e5"><strong>I know that youâ€™ve talked of Rappler with the goal of being a self-sustaining and independent media.</strong></p><p name="a576">Fingers crossed!</p><p name="725a"><strong>Tell us about your business model and also if it could serve as a model for other media organisations internationally? And where do you draw that line since I know you do a lot of branded content as well, how does that tie into editorial, or does it?</strong></p><p name="413d">In 2012 in the Philippines we were the first to take native advertising so we had a four concentric circle model that we are now overturning because everyone copied it which made it no longer unique. In the circle was native advertising which is in its own section, it is clearly labelled so ethically it was correct but people who worked on the native advertising on Rappler were a separate team from the journalists and they worked with the sales and marketing team. Very similar to what say <em>The New York Times</em><span>&nbsp;</span>does and other news groups. But that is a trend that began four or five years ago. So [the second is] native advertising is at the centre, we also sold social media engagement, third concentric circle is crowdsourcing and the fourth is data. Every single part of that can be monetised.</p><figure name="a4f4"><img data-src="https://cdn-images-1.medium.com/max/1000/0*D9xJXZzMeJvwKYzH." src="https://cdn-images-1.medium.com/max/1000/0*D9xJXZzMeJvwKYzH." class="fr-dii fr-draggable"><figcaption>Graphic by&nbsp;GEN</figcaption></figure><p name="ec83">So that was our original business model and it took us through 2012, 2013, 2014.</p><p name="2e53">For us that model has allowed us to grow 100% every year. But now, as I look at the market, it is like time to pivot again, and towards what? I think thatâ€™s what weâ€™re all looking for. Is it something that can be replicated in other parts of the world? I think this is a time of creative destruction for media. This is something Iâ€™ve learned at the GEN Summit, every group is looking for what will last into the new year.</p><p name="3d42"><strong>So you donâ€™t have the magic bullet.</strong></p><p name="0ce7">No and you know why? Itâ€™s not enough. Iâ€™m not satisfied with the four to ten percent growth that the traditional media used to have. So in the past if you were managing CNN or any traditional news group, if you moved 4% or 10% that was good. If youâ€™re a startup like Rappler, you donâ€™t want to go for those numbers. I want to grow 100%.</p><p name="0bb1">As media expands and grows, tech gobbles most of the money that used to go to media. This is the ecosystem that everyone is trying to map out. We are working as partners with Google, with Facebook, with YouTube and I think that weâ€™re trying to find that right mix. But whatâ€™s the dilemma? We were giving away content on digital for free. The pace of change is accelerating. If youâ€™re being driven by tech, you canâ€™t ever say that youâ€™ve arrived. Youâ€™ve found the magic bullet. You know why? Because itâ€™s changing so fast that the magic bullet in the moment is not going to be the magic bullet a year from now. Monetisation-wise, weâ€™re still okay. Itâ€™s still growth, but itâ€™s not enough growth.</p><figure name="e27f"><img data-src="https://cdn-images-1.medium.com/max/1000/1*suP7YRYav2Y420GnV5wSOQ.jpeg" src="https://cdn-images-1.medium.com/max/1000/1*suP7YRYav2Y420GnV5wSOQ.jpeg" class="fr-dii fr-draggable"><figcaption><em>Left: â€˜Technology generates as many new problems as new solutionsâ€™: Kevin Kelly. Photograph: Christopher Michel via&nbsp;</em><a data-href="https://www.theguardian.com/books/2016/jun/12/kevin-kelly-interview-the-inevitable-book-song-ai-future" href="https://www.theguardian.com/books/2016/jun/12/kevin-kelly-interview-the-inevitable-book-song-ai-future" rel="nofollow noopener" target="_blank"><em>The Guardian</em></a><em>. Right: Book cover of<span>&nbsp;</span></em><a data-href="http://www.goodreads.com/book/show/27209431-the-inevitable" href="http://www.goodreads.com/book/show/27209431-the-inevitable" rel="nofollow noopener" target="_blank"><em>The Inevitable</em></a></figcaption></figure><p name="ca2c"><strong>You really need to think like a tech startup, you are a tech startup.</strong></p><p name="804b">You always have to. I think thatâ€™s our world today. Did you read the new book by the guy who co-founded Wired? Inevitable. I love this book, itâ€™s called&nbsp;<a data-href="http://www.goodreads.com/book/show/27209431-the-inevitable" href="http://www.goodreads.com/book/show/27209431-the-inevitable" rel="nofollow noopener" target="_blank">Inevitable by Kevin Kelly</a>.</p><blockquote name="8f92">â€œAll of us, every one of us will be endless newbies in the future, simply trying to keep up. Hereâ€™s why: First most of the important technologies that will dominate life 30 years from now have not yet been invented, so naturally you will be a newbie. Second, each new technology requires endless upgrades, you will remain in the newbie state. Third, the cycle of obsolescence is accelerating. The average lifespan of a phone app is a mere 30 days. You wonâ€™t have time to master anything before it gets displaced. You will remain in the newbie mode forever.â€â€Šâ€”â€ŠKevin Kelly</blockquote><p name="aa89">Isnâ€™t that cool? Thatâ€™s a great idea. And when you accept this, then you leave the old world. Then you begin to think that, gosh, Iâ€™m going to constantly have to adapt.</p><p name="c506"><strong>And tech is already used to working this way.</strong></p><p name="75a3">Yes and no.</p><p name="c1f8"><strong>More than journalism.</strong></p><p name="c775">More than journalism, for sure. I still remember a time when we stayed with the same system for ten years.We stayed with the same workflow for five years. Now, throw all of that out. If you can accept that you will always live in quicksandâ€¦[laughs]</p><blockquote name="f85d">â€œThe basic tenant of Buddhism is you have to accept this one sentence: â€˜All life is suffering.â€™ If you do, then everythingâ€™s fantastic. Thatâ€™s kind of the way I feel right now and I guess thatâ€™s why Iâ€™m much happier. I feel like weâ€™re just going to have to constantly change.â€</blockquote><p name="b1ab"><strong>You look so excited about it!</strong></p><p name="61ff">I think I realised I kept trying to find stability then I realised, this is stability. We have to just accept this way of life. I guess itâ€™s like, if you took somebody from the days of the horse-drawn carriage and you put them on a jet plane and they still expect the world of the horse-drawn carriage. Thatâ€™s how fast change has come for all of us. So thatâ€™s the big shift from more traditional mediaâ€Šâ€”â€Šand all of them have done better in the last three than they did from 2010 to 2012. Because there were still a lot of traditional newsgroups that were in denial.</p><p name="a608">I think itâ€™s like in Buddhism, the basic tenant of Buddhism is you have to accept this one sentence: â€œAll life is suffering.â€ If you do, then everythingâ€™s fantastic. Thatâ€™s kind of the way I feel right now and I guess thatâ€™s why Iâ€™m much happier. I feel like weâ€™re just going to have to constantly change.</p><figure data-scroll="native" name="9e6b"><img data-src="https://cdn-images-1.medium.com/max/750/0*xEHw-MF28dAo_Txf." src="https://cdn-images-1.medium.com/max/750/0*xEHw-MF28dAo_Txf." class="fr-dii fr-draggable"></figure><figure data-scroll="native" name="afd9"><img data-src="https://cdn-images-1.medium.com/max/750/0*SGJLq_4diyZxsnj2." src="https://cdn-images-1.medium.com/max/750/0*SGJLq_4diyZxsnj2." class="fr-dii fr-draggable"><figcaption><em>The first<span>&nbsp;</span></em><a data-href="http://www.globaleditorsnetwork.org/programmes/editors-lab/philippines-editors-lab/" href="http://www.globaleditorsnetwork.org/programmes/editors-lab/philippines-editors-lab/" rel="nofollow noopener" target="_blank"><em>Philippines Editors Lab hackdays</em></a><em>&nbsp;took place in Manila on 7â€“8 July 2016. Photographs by Nicolas Magand</em></figcaption></figure><p name="c3ff"><strong>Talking about the Editors Lab, it seems like a very rare occasion for the usually very competitive Filipino media to collaborate. What are you hoping will come out of this hackathon? Do you think it could be a gateway to further inter-newsroom collaboration in the Philippines?</strong></p><p name="e3e1">Absolutely, itâ€™s one of the reasons we wanted to do this with GEN. I think that this old framework of competition in the Philippines is outdated. But I have to convince my peers that thatâ€™s the case. [laughs] And I think part of it is because journalism really is at a pivotal moment. In the Philippines because of the way the advertising structure works, everyone can hold on a little longer. Traditional newsgroups still have tremendous power. But that power is eroded underneath. How do you fight against that? You fight against that by collaborating.</p><p name="054f">I actually think that we should come together as an industryâ€Šâ€”â€Šand itâ€™s not just because of the way technology is impacting our world as journalists, it is also because of our administration.</p><p name="7373">We have a new president whoâ€™s basically setting new rules and standards. So this is a time for journalists to actually come together and assess: assess the way we work, assess our country, assess the amount of change that has come to our country and try to figure out how we can work together in the future.</p><p name="ba1f">Iâ€™ve never believed in competition in the same way. Competition is good to a degree but I think you have to be smart and know when you can accomplish more together.If our end goal is a better society, how do we achieve that? Technology certainly gives us the ability to do that. Disaster risk reduction is something where weâ€™re all hands on deck. Because in the end, competition will remainâ€Šâ€”â€Šitâ€™s a mindset. You either have a winner-takes-all mentality or you have a world of abundance. Thatâ€™s what I think technology is giving us: the possibility to create a world of abundance. And if I can nudge that way, then I will.</p><p name="6768"><strong>Whereâ€™s next after Rappler Indonesia launched in 2014? Do you have an Asian programme in place?</strong></p><p name="8da9">One of the things weâ€™re trying to do now is think like a startup. It is time to recreate, itâ€™s continuous learning. After the GEN Summit, I went to the<span>&nbsp;</span><a data-href="http://www.ges2016.org/aboutges/" href="http://www.ges2016.org/aboutges/" rel="nofollow noopener" target="_blank">Global Entrepreneurship Summit</a>. Iâ€™m constantly trying to figure out, where is the world going, so that we can then shift Rappler to where that is. Weâ€™re going to re-pivot Rappler again, given the new technology thatâ€™s there.Given, Snapchat for example, people talked about it at the GEN Summit, and yet in the Philippines, it takes too much bandwidth here. So what is it thatâ€™s unique to the Philippines that we can exploit? That we can grow? For me the future is not geographical locations. Learning [about] Indonesia, trying to understand. Itâ€™s trying to understand the communities we have, trying to understand what they want, how they want the news given to them, or how they want to help create the news. I was kidding our guys and saying if we had to create Rappler from scratch again today, what would it look like?</p><figure name="da8a"><img data-src="https://cdn-images-1.medium.com/max/1000/0*cMz5rqBG-OuRooVG." src="https://cdn-images-1.medium.com/max/1000/0*cMz5rqBG-OuRooVG." class="fr-dii fr-draggable"></figure><p name="40d9"><strong>What would it look like?</strong></p><p name="5094">Truly very different. Our Mood Meter came out before emojis. Facebook reactions came out almost four years after we first designed the Mood Meter. Itâ€™s time to change it. Weâ€™re learning lessons about what do our users want? How do they consume us? What about the attention span? Everyone always says this in conferences that you have to cater to the attention span of a goldfish. I donâ€™t think thatâ€™s true. It may be in things like the way we measure it. I want to know quality and impact.</p><p name="0e2f"><strong>Are platforms like Facebook a threat more than they are an asset both for Rappler and also Asian publishers?</strong></p><p name="c4ec">For most newsgroups, the way people get news is from Facebook. Thatâ€™s actually relatively universal now. In this country, like yesterday probably 85% came to us from mobile. So we see the future now but it has not taken shape yet in terms of one or the other. They all co-exist. We need to be there to help develop and shape what the future will be.</p><p name="88d9"><strong>What about Chinese services? Will the dominance of services like WeChat and Weibo affect the way content is or will be consumed worldwide?</strong></p><p name="08d1">Not so much. Not in Southeast Asia. In Southeast Asia, the two largest are Indonesia and the Philippines. I would say maybe north Asia, North East Asia you could look at that. But those who donâ€™t speak Mandarin or donâ€™t use these platforms. Not even Line, which is popular in the Philippines but not as much in Indonesia. In Indonesia, thereâ€™s a social media platform called Path that isnâ€™t really that popular anywhere else. This is a local culture where first-mover advantage really makes a difference. Facebook in both Indonesia and the Philippines, that is called the Internet. So weâ€™re not as impacted by whatâ€™s going on in China. But again, Ali Baba, Tencent: theyâ€™re just starting to come down to Southeast Asia, so maybe that will change in six months or a year. But as of now, weâ€™re more impacted by Google for sure. Because google has a lot more freedom in Asia than they do in Europe, for example. Facebook is everywhere in the Philippines. YouTube: Filipinos upload and download the most videos.</p><blockquote name="35bb"><strong>â€œIf you accept what technologyâ€™s doing, which is changing the fabric of everything, then youâ€™re&nbsp;happy.â€</strong></blockquote><p name="0d0e"><strong>Any closing thoughts?</strong></p><p name="ccff">Itâ€™s really just getting used to a new world. Thatâ€™s the biggest change for my age group. Iâ€™m over 50. Iâ€™ve been a journalist for 30 years. I love the mission of journalism. Journalists have a role that is critical in society. And yet, like every other industry, technology is disrupting journalism and weâ€™re going to have to figure out what thatâ€™s going to look like in the future. If you accept what technologyâ€™s doing, which is changing the fabric of everything, then youâ€™re happy. Right? We donâ€™t know which wave will crash and which wave will carry you to shore so we need to constantly be on the surfboard.</p><p name="840c"><em>Thanks to&nbsp;</em><a data-href="https://twitter.com/Maid_Marianne" href="https://twitter.com/Maid_Marianne" rel="nofollow noopener" target="_blank"><em>Marianne Bouchart</em></a><em><span>&nbsp;</span>for her help with editing this piece.</em></p>', 3),
(13, 2, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '21/12/2016', '9999', 'Robert NGUYEN', '../photos/hero_slider/better_1.jpg', '', NULL),
(14, 2, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '21/12/2016', '5555', 'Steve Jobs', '../photos/hero_slider/creative-html5-website-templates.jpg', '', NULL),
(15, 2, 2, 'Added title for article for blog 4', '', '', 'Robert', '', '', NULL);
INSERT INTO `blog` (`id_blog`, `id_busi_type`, `id_link`, `title`, `date`, `like`, `author`, `img_blog`, `content`, `id`) VALUES
(16, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', NULL),
(17, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', NULL),
(18, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', NULL),
(19, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', NULL),
(20, 3, 2, 'Search: â€œThe old Google-like list of results is definitely not the futureâ€', '18/02/2017', '18/02/2017', 'Robert', 'https://cdn-images-1.medium.com/max/750/1*Bk9-65HpLq3RQH7PSz_KLQ.jpeg', '<p name="ecb5">With Linkurious Enterprise we provide a visual search engine for any connected data. For instance, NASA uses it to find experts and important documents in databases by&nbsp;<a data-href="https://linkurio.us/how-nasa-experiments-with-knowledge-discovery/" href="https://linkurio.us/how-nasa-experiments-with-knowledge-discovery/" rel="nofollow noopener" target="_blank">connecting authors, topics, location, and sources</a>.</p><figure name="e660"><figcaption>NASA Strategy for Critical Data Visibility Through KMâ€”Part 3 of the knowledge management conference hosted at Johnson Space Center on June 9, 2015. Speaker: David Meza.</figcaption></figure><figure name="54b5"><img data-src="https://cdn-images-1.medium.com/max/1000/1*R7wa22hWM_jEC7pB1Er0gw.png" src="https://cdn-images-1.medium.com/max/1000/1*R7wa22hWM_jEC7pB1Er0gw.png" class="fr-dii fr-draggable"><figcaption>The NASA is using Linkurious for its aeronautic research</figcaption></figure><h4 name="021b">As a startup, you are looking for funding. How much are you asking for and what will the money go towards? What will Linkurious look like in&nbsp;2020?</h4><p name="6ea2">Right now we are expanding the company, adding more people as our number of customers grows quickly. We are looking to raise money to accelerate our growth and perhaps open a US office. [Linkurious is based in France]</p><p name="98b1">In 2020 we would like to see our technology in the hands of everyone and used to help with todayâ€™s most pressing data challenges: cyber-security, financial crime, medical research, and investigative journalism.</p>', 3);

-- --------------------------------------------------------

--
-- Table structure for table `business_type`
--

CREATE TABLE `business_type` (
  `id_busi_type` int(255) NOT NULL,
  `name_busi` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_type`
--

INSERT INTO `business_type` (`id_busi_type`, `name_busi`, `description`, `icon`) VALUES
(1, 'web design', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos et veritatis necessitatibus nostrum cumque quasi quaerat facere aliquid, ipsam alias!', 'fa fa-paint-brush'),
(2, 'game development', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos et veritatis necessitatibus nostrum cumque quasi quaerat facere aliquid, ipsam alias!', 'fa fa-gamepad'),
(3, 'translator', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos et veritatis necessitatibus nostrum cumque quasi quaerat facere aliquid, ipsam alias!', 'fa fa-book'),
(4, 'photographer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos et veritatis necessitatibus nostrum cumque quasi quaerat facere aliquid, ipsam alias!', 'fa fa-camera-retro'),
(5, 'branding design', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos et veritatis necessitatibus nostrum cumque quasi quaerat facere aliquid, ipsam alias!', 'fa fa-picture-o'),
(6, 'technology solution', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos et veritatis necessitatibus nostrum cumque quasi quaerat facere aliquid, ipsam alias!', 'fa fa-lightbulb-o');

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id_career` int(255) NOT NULL,
  `id_busi_type` int(255) NOT NULL,
  `name_career` varchar(255) NOT NULL,
  `language_programming` varchar(255) NOT NULL,
  `tool` varchar(255) NOT NULL,
  `soft_skill` varchar(255) NOT NULL,
  `processing` varchar(255) NOT NULL,
  `library` varchar(255) NOT NULL,
  `framework` varchar(255) NOT NULL,
  `platform` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`id_career`, `id_busi_type`, `name_career`, `language_programming`, `tool`, `soft_skill`, `processing`, `library`, `framework`, `platform`) VALUES
(1, 1, 'Coder', 'HTML', 'sublime', 'leader', 'agile', 'jquery', 'mvc', 'windows'),
(2, 6, 'Blogger', 'Literature', 'PC', 'Writing', 'innovation', 'life', 'my desk', 'eat and take photos_fixed');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(255) NOT NULL,
  `id_busi_type` int(255) NOT NULL,
  `id_achi` int(255) NOT NULL,
  `id_team` int(255) NOT NULL,
  `name_company` varchar(255) NOT NULL,
  `name_presentation_person` varchar(255) NOT NULL,
  `name_position_person` varchar(255) NOT NULL,
  `feed_back` varchar(255) NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `id_busi_type`, `id_achi`, `id_team`, `name_company`, `name_presentation_person`, `name_position_person`, `feed_back`, `img_url`) VALUES
(1, 1, 1, 1, 'freedomwalking', 'john doe', 'ceo', 'good job, boy!', '../photos/hero_slider/06.jpeg'),
(2, 1, 1, 1, 'freedomwalking', 'John Doe', 'ceo', 'Good job, boys!', '../photos/hero_slider/06.jpeg'),
(3, 1, 1, 1, 'freedomwalking', 'john doe', 'ceo', 'good good', '../photos/hero_slider/06.jpeg'),
(4, 1, 1, 1, 'test company', 'no display', 'top', 'display again', '../photos/hero_slider/06.jpeg'),
(6, 1, 1, 1, 'test company', 'no display', 'top', 'display again', '../photos/hero_slider/06.jpeg'),
(7, 1, 1, 1, 'test company', 'no display', 'top', 'display again', '../photos/hero_slider/06.jpeg'),
(9, 1, 1, 1, 'dm', 'no display', 'top', 'display again', '../photos/hero_slider/06.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `comment_blog`
--

CREATE TABLE `comment_blog` (
  `id_comment` int(255) NOT NULL,
  `id_blog` int(255) NOT NULL,
  `comment` varchar(60000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment_blog`
--

INSERT INTO `comment_blog` (`id_comment`, `id_blog`, `comment`) VALUES
(1, 1, 'Removing Trump would be tough because his cabinet is made of people who he’s chosen himself. There’s no restraining hand to stop him.\r\nHowever, if the cabinet did decide to listen to the psychiatric community and remove Trump, someone with Malignant Narcissism like him would likely not go quietly. With his back to the wall, there’s no way to predict what a sadistic, antisocial, paranoid narcissist in command of special forces, a Twitter army, and nuclear codes will do.\r\nBut the danger of not removing him is very clear. “We’ve had presidents with psychological disorders,” Gartner points out. Lincoln had depression, after all. “But this is unique. We’re not just talking about mental illness, we’re talking about the worst possible mental illness.”'),
(2, 1, 'Removing Trump would be tough because his cabinet is made of people who he’s chosen himself. There’s no restraining hand to stop him.\r\nHowever, if the cabinet did decide to listen to the psychiatric community and remove Trump, someone with Malignant Narcissism like him would likely not go quietly. With his back to the wall, there’s no way to predict what a sadistic, antisocial, paranoid narcissist in command of special forces, a Twitter army, and nuclear codes will do.\r\nBut the danger of not removing him is very clear. “We’ve had presidents with psychological disorders,” Gartner points out. Lincoln had depression, after all. “But this is unique. We’re not just talking about mental illness, we’re talking about the worst possible mental illness.”'),
(3, 1, 'sdad'),
(13, 1, 'stop add new comment stop add new commentstop add new commentstop add new commentstop add new commentstop add new commentstop add new commentstop add new commentstop add new commentstop add new comment'),
(14, 1, 'if (isset($_POST[\'submit\'])) \r\n{\r\n$user= $_POST[\'username\'];\r\n$email = $_POST[\'useremail\'];\r\n$pass= $_POST[\'password\']; \r\n\r\nmysql_query("INSERT INTO table (username, useremail, email) VALUES (\'$username\',\'$useremail\',\'$email\')"); // <-- missing endquote and bracket here\r\n\r\nheader(\'Location: somewhere_else.php\');\r\nexit;\r\n}'),
(15, 1, 'if (isset($_POST[\'submit\'])) \r\n{\r\n$user= $_POST[\'username\'];\r\n$email = $_POST[\'useremail\'];\r\n$pass= $_POST[\'password\']; \r\n\r\nmysql_query("INSERT INTO table (username, useremail, email) VALUES (\'$username\',\'$useremail\',\'$email\')"); // <-- missing endquote and bracket here\r\n\r\nheader(\'Location: somewhere_else.php\');\r\nexit;\r\n}'),
(16, 1, 'Done load again'),
(17, 1, 'Insert again'),
(18, 1, 'again man'),
(19, 1, 'Ok this time is ok'),
(20, 1, 'viva'),
(21, 1, 'viva'),
(22, 1, 'Ok right now is done'),
(23, 1, 'fixed width response btn'),
(24, 1, 'sasa'),
(25, 1, 'jaja');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(255) NOT NULL,
  `id_busi_type` int(255) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `big_img_url` varchar(65000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_busi_type`, `img_url`, `big_img_url`) VALUES
(1, 1, '../photos/hero_slider/06.jpeg', '../photos/hero_slider/06.jpeg'),
(2, 1, '../photos/hero_slider/05.jpg', '../photos/hero_slider/05.jpg'),
(3, 1, '../photos/hero_slider/04.jpg', '../photos/hero_slider/04.jpg'),
(4, 1, '../photos/hero_slider/03.jpg', '../photos/hero_slider/03.jpg'),
(5, 1, '../photos/hero_slider/02.jpg', '../photos/hero_slider/02.jpg'),
(6, 2, '../photos/hero_slider/01.png', '../photos/hero_slider/01.png');

-- --------------------------------------------------------

--
-- Table structure for table `member_team`
--

CREATE TABLE `member_team` (
  `id_person` int(255) NOT NULL,
  `id_team` int(255) NOT NULL,
  `id_career` int(255) NOT NULL,
  `name_member` varchar(255) NOT NULL,
  `img_member` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `desc_yourself` varchar(60000) NOT NULL,
  `id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_team`
--

INSERT INTO `member_team` (`id_person`, `id_team`, `id_career`, `name_member`, `img_member`, `experience`, `desc_yourself`, `id`) VALUES
(1, 1, 1, 'John Doe', '../photos/hero_slider/06.jpeg', '5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.', NULL),
(2, 2, 1, 'mathieu', '../photos/hero_slider/06.jpeg', '3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipite aperiam beatae mollitia fuga, maxime libero explicabo&nbsp;</p><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipite aperiam beatae mollitia fuga, maxime libero explicabo&nbsp;</p><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipite aperiam beatae mollitia fuga, maxime libero explicabo&nbsp;</p><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipite aperiam beatae mollitia fuga, maxime libero explicabo&nbsp;</p>', 3),
(4, 1, 1, 'Fox is loving me', '../photos/hero_slider/06.jpeg', '5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.', 2),
(5, 1, 1, 'update_freedom', '../photos/hero_slider/06.jpeg', '5', '<h5>Fandom Master</h5><p>348Following&nbsp;501<span>Followers</span></p><p><img alt="fandom master" src="https://s-media-cache-ak0.pinimg.com/avatars/fandomstream45_1452305279_280.jpg" class="fr-dii fr-draggable fr-fil" style="width: 521px; height: 521px;"><a href="https://www.pinterest.com/fandomstream45/followers/"></a><a href="https://www.pinterest.com/fandomstream45/followers/"><br></a><a href="https://www.pinterest.com/fandomstream45/following/"><br></a></p><p><br></p><p><br></p><p><br></p><p><br></p><p>Hey, uh, I\'m the Fandom Master. I\'m an artist, gamer, otaku, Whovian, Hunter, and more.</p><p>Hey I made a new account https://www.pinterest.com/meowfrommars45/</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', 5);

-- --------------------------------------------------------

--
-- Table structure for table `social_link`
--

CREATE TABLE `social_link` (
  `id_link` int(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_link`
--

INSERT INTO `social_link` (`id_link`, `facebook`, `twitter`, `youtube`) VALUES
(1, 'http://google.com', 'http://google.com', 'http://google.com'),
(2, 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.youtube.com'),
(3, 'facebook/ckatori', 'twitter/ckatori', 'facebook/freedomwalking');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id_team` int(255) NOT NULL,
  `id_busi_type` int(255) NOT NULL,
  `id_achi` int(255) NOT NULL,
  `id_person` int(255) NOT NULL,
  `name_team` varchar(255) NOT NULL,
  `member_number` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `team_icon` varchar(65000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id_team`, `id_busi_type`, `id_achi`, `id_person`, `name_team`, `member_number`, `available`, `team_icon`) VALUES
(1, 1, 1, 1, 'freedomwalking', '5', 1, '../photos/hero_slider/06.jpeg'),
(2, 1, 2, 1, 'freedomwalking', '5', 1, '../photos/hero_slider/06.jpeg'),
(3, 2, 3, 2, 'the guardian galaxy', '3', 0, '../photos/hero_slider/06.jpeg'),
(4, 2, 4, 2, 'the guardian galaxy', '3', 0, '../photos/hero_slider/06.jpeg'),
(5, 3, 5, 1, 'CC Studio', '1', 0, '../photos/hero_slider/06.jpeg'),
(6, 3, 6, 2, 'cc studio', '1', 0, '../photos/hero_slider/06.jpeg'),
(7, 1, 1, 1, 'BIG_success', '2', 1, '../photos/hero_slider/06.jpeg'),
(8, 1, 1, 1, 'success', '2', 1, '../photos/hero_slider/06.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `priority` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `priority`, `email`) VALUES
(1, 'maxta', '221089', '1', ''),
(2, 'fox', '123456', '2', ''),
(3, 'mathieu', '1234567', '5', ''),
(5, 'mehdi', '123456', '5', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`id_achi`),
  ADD KEY `id_busi_type` (`id_busi_type`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_team` (`id_team`),
  ADD KEY `id_gallery` (`id_gallery`),
  ADD KEY `id_career` (`id_career`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`),
  ADD KEY `id_busi_type` (`id_busi_type`),
  ADD KEY `id_link` (`id_link`);

--
-- Indexes for table `business_type`
--
ALTER TABLE `business_type`
  ADD PRIMARY KEY (`id_busi_type`);

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id_career`),
  ADD KEY `id_busi_type` (`id_busi_type`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `id_achi` (`id_achi`),
  ADD KEY `id_team` (`id_team`),
  ADD KEY `id_busi_type` (`id_busi_type`);

--
-- Indexes for table `comment_blog`
--
ALTER TABLE `comment_blog`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_blog` (`id_blog`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`),
  ADD KEY `id_busi_type` (`id_busi_type`);

--
-- Indexes for table `member_team`
--
ALTER TABLE `member_team`
  ADD PRIMARY KEY (`id_person`),
  ADD KEY `id_career` (`id_career`),
  ADD KEY `id_team` (`id_team`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `social_link`
--
ALTER TABLE `social_link`
  ADD PRIMARY KEY (`id_link`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id_team`),
  ADD KEY `id_busi_type` (`id_busi_type`),
  ADD KEY `id_achi` (`id_achi`),
  ADD KEY `id_person` (`id_person`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievement`
--
ALTER TABLE `achievement`
  MODIFY `id_achi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `business_type`
--
ALTER TABLE `business_type`
  MODIFY `id_busi_type` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id_career` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `comment_blog`
--
ALTER TABLE `comment_blog`
  MODIFY `id_comment` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `member_team`
--
ALTER TABLE `member_team`
  MODIFY `id_person` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `social_link`
--
ALTER TABLE `social_link`
  MODIFY `id_link` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id_team` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `achievement`
--
ALTER TABLE `achievement`
  ADD CONSTRAINT `achievement_ibfk_1` FOREIGN KEY (`id_busi_type`) REFERENCES `business_type` (`id_busi_type`),
  ADD CONSTRAINT `achievement_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `achievement_ibfk_3` FOREIGN KEY (`id_team`) REFERENCES `team` (`id_team`),
  ADD CONSTRAINT `achievement_ibfk_4` FOREIGN KEY (`id_gallery`) REFERENCES `gallery` (`id_gallery`),
  ADD CONSTRAINT `achievement_ibfk_5` FOREIGN KEY (`id_career`) REFERENCES `career` (`id_career`);

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`id_busi_type`) REFERENCES `business_type` (`id_busi_type`),
  ADD CONSTRAINT `blog_ibfk_2` FOREIGN KEY (`id_link`) REFERENCES `social_link` (`id_link`);

--
-- Constraints for table `career`
--
ALTER TABLE `career`
  ADD CONSTRAINT `career_ibfk_1` FOREIGN KEY (`id_busi_type`) REFERENCES `business_type` (`id_busi_type`);

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`id_busi_type`) REFERENCES `business_type` (`id_busi_type`),
  ADD CONSTRAINT `client_ibfk_2` FOREIGN KEY (`id_achi`) REFERENCES `achievement` (`id_achi`),
  ADD CONSTRAINT `client_ibfk_3` FOREIGN KEY (`id_team`) REFERENCES `team` (`id_team`);

--
-- Constraints for table `comment_blog`
--
ALTER TABLE `comment_blog`
  ADD CONSTRAINT `comment_blog_ibfk_1` FOREIGN KEY (`id_blog`) REFERENCES `blog` (`id_blog`);

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`id_busi_type`) REFERENCES `business_type` (`id_busi_type`);

--
-- Constraints for table `member_team`
--
ALTER TABLE `member_team`
  ADD CONSTRAINT `member_team_ibfk_1` FOREIGN KEY (`id_team`) REFERENCES `team` (`id_team`),
  ADD CONSTRAINT `member_team_ibfk_2` FOREIGN KEY (`id_career`) REFERENCES `career` (`id_career`),
  ADD CONSTRAINT `member_team_ibfk_3` FOREIGN KEY (`id`) REFERENCES `user` (`id`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`id_person`) REFERENCES `member_team` (`id_person`),
  ADD CONSTRAINT `team_ibfk_2` FOREIGN KEY (`id_achi`) REFERENCES `achievement` (`id_achi`),
  ADD CONSTRAINT `team_ibfk_3` FOREIGN KEY (`id_busi_type`) REFERENCES `business_type` (`id_busi_type`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
