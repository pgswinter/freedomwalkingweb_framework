-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2017 at 11:31 AM
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
  `content` varchar(60000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id_blog`, `id_busi_type`, `id_link`, `title`, `date`, `like`, `author`, `img_blog`, `content`) VALUES
(1, 1, 1, 'There is title of ID 1', '13/12/2016', '1', 'John Doe', '../photos/hero_slider/tree.jpg', '<p>34 languages are supported including RTL(Right To Left) support</p><p>34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(<strong><em>Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support</em></strong></p><p style="margin-left: 20px;"><em><strong>34 languages are supported including RTL(Right To Left) support</strong></em></p><p style="margin-left: 20px;"><strong><em>34 languages are supported including RTL(Right To Left) support</em></strong></p><p style="margin-left: 20px;">34 languages are supported including RTL(Right To Left) support</p><p style="margin-left: 20px;"><img class="fr-dib fr-draggable" src="https://i.froala.com/download/ffc1f469ccad28b5aebdcf3a52b5e4998ac2b319.jpg?1483955363" style="width: 300px;"></p><p><br></p>'),
(2, 2, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '21/12/2016', '9999', 'Robert NGUYEN', '../photos/hero_slider/better_1.jpg', ''),
(3, 2, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '21/12/2016', '5555', 'Steve Jobs', '../photos/hero_slider/creative-html5-website-templates.jpg', ''),
(4, 2, 2, 'Added title for article for blog 4', '', '', 'Robert', '', ''),
(8, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>'),
(9, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>'),
(10, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>'),
(11, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>'),
(12, 1, 1, 'There is title of ID 1', '13/12/2016', '1', 'John Doe', '../photos/hero_slider/tree.jpg', '<p>34 languages are supported including RTL(Right To Left) support</p><p>34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(<strong><em>Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support34 languages are supported including RTL(Right To Left) support</em></strong></p><p style="margin-left: 20px;"><em><strong>34 languages are supported including RTL(Right To Left) support</strong></em></p><p style="margin-left: 20px;"><strong><em>34 languages are supported including RTL(Right To Left) support</em></strong></p><p style="margin-left: 20px;">34 languages are supported including RTL(Right To Left) support</p><p style="margin-left: 20px;"><img class="fr-dib fr-draggable" src="https://i.froala.com/download/ffc1f469ccad28b5aebdcf3a52b5e4998ac2b319.jpg?1483955363" style="width: 300px;"></p><p><br></p>'),
(13, 2, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '21/12/2016', '9999', 'Robert NGUYEN', '../photos/hero_slider/better_1.jpg', ''),
(14, 2, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '21/12/2016', '5555', 'Steve Jobs', '../photos/hero_slider/creative-html5-website-templates.jpg', ''),
(15, 2, 2, 'Added title for article for blog 4', '', '', 'Robert', '', ''),
(16, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>'),
(17, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>'),
(18, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>'),
(19, 1, 1, 'test1', '09012016', '9999', 'Robert', '../photos/hero_slider/tree.jpg', '<p><br></p><h1 itemprop="name"><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp">how to store and retrieve the HTML text Editor contents to SQL Server DB in ASP.net C#</a></h1><p><br></p><p><br></p><p><br></p><p><a href="http://engine.adzerk.net/r?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg0LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJ1ciI6Imh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9qb2JzP3V0bV9zb3VyY2U9d2Vic2l0ZSZ1dG1fbWVkaXVtPWJhbm5lciZ1dG1fY29udGVudD1sZWFkZXJib2FyZF82JnV0bV9jYW1wYWlnbj1ob3VzZV9hZHNfaG91c2VfYWRzX1JPU19TTyJ9&amp;s=taHOw6hc95kfFJznVMxLAyMFciI" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/78e105390cf2426896c5fc38ae85a4f6.png" title="" alt="" border="0" width="728" height="90" class="fr-dii fr-draggable"></a><img height="0px" width="0px" border="0" src="http://engine.adzerk.net/i.gif?e=eyJhdiI6NDE0LCJhdCI6NCwiYnQiOjAsImNtIjo1MTc3NTcsImNoIjoxMTc4LCJjayI6e30sImNyIjoxNjM4OTgwLCJkaSI6ImUxM2NlYTU3NGRhNTQzNTRiODdmNGIyNmJlZjc1ZjRiIiwiZG0iOjEsImZjIjoyMTY0NTQyLCJmbCI6MjYzMTU3OSwiaXAiOiIxMTguNjkuNTguMTc4Iiwia3ciOiJjIyxhc3AubmV0LHNxbC1zZXJ2ZXItMjAwOC1yMixodG1sLWVkaXRvcix4LXBlcnNvbmEtZnJvbnRlbmQiLCJtayI6IngtcGVyc29uYS1mcm9udGVuZCIsIm53IjoyMiwicGMiOjAsImVjIjowLCJwciI6MTYwNCwicnQiOjIsInJmIjoiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS52bi8iLCJzdCI6ODI3NywidWsiOiJ1ZTEtZDhmMTI0ZjM1YTlmNDFjZGE1M2ViYzFhZWEyNWQxMWQiLCJ6biI6NDMsInRzIjoxNDgzOTUzMDE1Mzg1LCJiZiI6dHJ1ZSwicG4iOiJhZHplcmsxMzM3ODYzMTQiLCJmcSI6MH0&amp;s=NOKBmw2Ux7qH05jGQn0Yl3D5jss" class="fr-dii fr-draggable"></p><table><tbody><tr><td><a title="This question shows research effort; it is useful and clear">up vote</a><span itemprop="upvoteCount">0</span><a title="This question does not show any research effort; it is unclear or not useful">down vote</a><a href="http://stackoverflow.com/questions/18378742/how-to-store-and-retrieve-the-html-text-editor-contents-to-sql-server-db-in-asp#">favorite</a><br><strong>2</strong><br><br><br></td><td><br><br><br><br>I am using a HMTL Text Editor in my asp.net with C# project. so, how do I store the editor contents in SQl Server 2008 DB so that it would be extracted as it is edited on the web page, means the same editing effects must be shown when I extract the data on a web page.<br>please Help<br>Thanks in Advance Nils<br><br><br><a href="http://stackoverflow.com/questions/tagged/c%23" rel="tag" title="show questions tagged \'c#\'">c#</a> <a href="http://stackoverflow.com/questions/tagged/asp.net" rel="tag" title="show questions tagged \'asp.net\'">asp.net</a><span>&nbsp;</span><a href="http://stackoverflow.com/questions/tagged/sql-server-2008-r2" rel="tag" title="show questions tagged \'sql-server-2008-r2\'">sql-server-2008-r2</a> <a href="http://stackoverflow.com/questions/tagged/html-editor" rel="tag" title="show questions tagged \'html-editor\'">html-editor</a><br><table><tbody><tr><td><a href="http://stackoverflow.com/q/18378742" title="short permalink to this question">share</a><a href="http://stackoverflow.com/posts/18378742/edit" title="">improve this question</a><br></td><td><br><br>asked<span>&nbsp;</span><span title="2013-08-22 11:08:02Z">Aug 22 \'13 at 11:08</span><br><a href="http://stackoverflow.com/users/2377271/nils"></a><br><a href="http://stackoverflow.com/users/2377271/nils"><img src="https://www.gravatar.com/avatar/a6ee4719f282fa79f31a7b1e2183a701?s=32&amp;d=identicon&amp;r=PG" alt="" width="32" height="32" class="fr-dii fr-draggable"></a><br><br><br><a href="http://stackoverflow.com/users/2377271/nils">Nils</a><br><span dir="ltr" title="reputation score ">10</span><span title="1 gold badge">1</span><span title="1 silver badge">1</span><span title="6 bronze badges">6</span><br><br><br><br><br></td></tr></tbody></table><br><br></td></tr><tr><td><br></td><td><a title="Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.">add a comment</a><br></td></tr></tbody></table><p><br></p><p><br></p><p><br></p><p><br></p><h2>2 Answers</h2><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>');

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
  `desc_yourself` varchar(60000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_team`
--

INSERT INTO `member_team` (`id_person`, `id_team`, `id_career`, `name_member`, `img_member`, `experience`, `desc_yourself`) VALUES
(1, 1, 1, 'John Doe', '../photos/hero_slider/06.jpeg', '5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.'),
(2, 2, 1, 'jane doe', '../photos/hero_slider/06.jpeg', '3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.'),
(4, 1, 1, 'Fox is loving me', '../photos/hero_slider/06.jpeg', '5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates temporibus asperiores illo libero ad vitae iure, ab, perferendis laboriosam velit impedit quas eligendi suscipit fuga officiis sapiente, voluptas similique inventore itaque quibusdam eveniet amet distinctio eius. Quae cupiditate aperiam beatae mollitia fuga, maxime libero explicabo molestias in saepe ab aliquid.'),
(5, 1, 1, 'update_freedom', '../photos/hero_slider/06.jpeg', '5', '<h5>Fandom Master</h5><p>348Following&nbsp;501<span>Followers</span></p><p><img alt="fandom master" src="https://s-media-cache-ak0.pinimg.com/avatars/fandomstream45_1452305279_280.jpg" class="fr-dii fr-draggable fr-fil" style="width: 521px; height: 521px;"><a href="https://www.pinterest.com/fandomstream45/followers/"></a><a href="https://www.pinterest.com/fandomstream45/followers/"><br></a><a href="https://www.pinterest.com/fandomstream45/following/"><br></a></p><p><br></p><p><br></p><p><br></p><p><br></p><p>Hey, uh, I\'m the Fandom Master. I\'m an artist, gamer, otaku, Whovian, Hunter, and more.</p><p>Hey I made a new account https://www.pinterest.com/meowfrommars45/</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>');

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
  ADD KEY `id_team` (`id_team`);

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
  MODIFY `id_blog` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
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
  ADD CONSTRAINT `member_team_ibfk_2` FOREIGN KEY (`id_career`) REFERENCES `career` (`id_career`);

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
