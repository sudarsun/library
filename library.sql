-- MySQL dump 10.13  Distrib 5.1.62, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.1.62-0ubuntu0.11.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`auth_id`),
  UNIQUE KEY `auth_name` (`auth_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Thirumoolar'),(2,'Thiruvalluvar'),(3,'Swami Vivekanandar'),(4,'திருமூலர்');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `book_id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `author` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication` text COLLATE utf8_unicode_ci,
  `edition` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `total_holding` int(4) DEFAULT NULL,
  `related_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `book_remark` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=254 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (10,'Statistical Pattern Recognition','Andrew Webb','A John  Wiley & Sons,INC.,Publication','Second Edition',2004,1,NULL,NULL),(11,'Data Mining Solutions','Christopher Westphal, Teresa Blaxton','A John  Wiley & Sons,INC.,Publication','NA',1998,1,NULL,NULL),(12,'Building the Knowledge Management Network','Cliff Figallo, Nancy Rhine','A John  Wiley & Sons,INC.,Publication','NA',2002,1,NULL,NULL),(13,'Mining Graph Data','Diane J. Cook, Lawrence B. Holder','A John  Wiley & Sons,INC.,Publication','NA',2007,1,NULL,NULL),(14,'Next Generation Of Data â€“ Mining Applications','Mehmed M. Kantardzic, and Jozef Zurada','A John  Wiley & Sons,INC.,Publication','NA',2005,1,NULL,NULL),(15,'Markov Decision Processes in Artificial Intelligence','Olivier Siguad and Olivier Buffet','A John  Wiley & Sons,INC.,Publication','NA',2010,1,NULL,NULL),(16,'Pattern Classification ','Richard O. Duda, Peter E. Hart, David G. Stork','A John  Wiley & Sons,INC.,Publication','Second Edition',2005,1,NULL,NULL),(17,'DataBasing The Brain','Stephen H. Koslow, Shankar Subramaniam','A John  Wiley & Sons,INC.,Publication','NA',2005,1,NULL,NULL),(18,'Approximate Dynamic Programming','Warren B. Powell','A John  Wiley & Sons,INC.,Publication','NA',2007,1,NULL,NULL),(19,'Smoothing of Multivariate Data','Jussi Klemela','A John Wiley & Sons,INC.,Publication','NA',2009,1,NULL,NULL),(20,'Statistical Learning Theory','Vladimir N. Vapnik','A John Wiley & Sons,INC.,Publication','NA',1998,1,NULL,NULL),(21,'An Introduction to Probability Theory and Its Applications','William Feller','A John Wiley & Sons,INC.,Publication','Second Edition(Volume I)',1957,1,NULL,NULL),(22,'An Introduction to Probability Theory and Its Applications','William Feller','A John Wiley & Sons,INC.,Publication','Third Edition(Volume I)',1957,1,NULL,NULL),(23,'Advances in Knowledge Discovery and Data Mining','Fayyad, Piatetsky- Shapiro, Smyth, Uthurusamy','AAAI Press /The MIT Press, Cambridge','NA',1996,1,NULL,NULL),(24,'Smart machines in Education ','Kenneth D. Forbus and Paul J. Feltovich','AAAI Press /The MIT Press, Cambridge','NA',2001,1,NULL,NULL),(25,'Natural Language Processing and Knowledge Representation','Lucja M. Iwanska, Sturt C. Shapiro','AAAI Press /The MIT Press, Cambridge','NA',2000,1,NULL,NULL),(26,'Intelligent Tutoring Systems','D.Sleemen, J. S. Brown','Academic Press Professional','NA',1982,1,NULL,NULL),(27,'The Multimedia Production HandBook for The PC, Macintosh, and Amiga','Tom Yager','Academic Press Professional','NA',1993,1,NULL,NULL),(28,'Modelling And Simulation â€“ Based Data Engineering','Bernard P.Zeigler , Phillip E. Hammonds','Academic Press Professional, Elsevier','NA',2007,1,NULL,NULL),(29,'The C++ Programming Language ','Bjarne Stroustrup','Addison Wesley','Third Edition',1997,1,NULL,NULL),(30,'An Introduction to Database Systems ','C.J. Date','Addison Wesley','Third Edition',1985,1,NULL,NULL),(31,'Operating Systems (A Systematic View)','Davis, Rajkumar','Addison Wesley','Fifth Edition',2001,1,NULL,NULL),(32,'The Java Programming Language ','Ken Arnold, james Gosling','Addison Wesley','Second Edition',1998,1,NULL,NULL),(33,'Fundamental Algorithms (The Art of Computer Programming)','Knuth','Addison Wesley','First  Edition',1972,1,NULL,NULL),(34,'Data Mining ','Pieter Adriaans, Dolf Zantinge','Addison Wesley','NA',1999,1,NULL,NULL),(35,'Structured Concurrent Programming With Oerating Systems Applications','R.C.Holt, E.D. Lazowska, G.S. Graham, M.A.Scott','Addison Wesley','NA',1978,1,NULL,NULL),(36,'Probability and Statistics','Morris H. DeGroot, Mark J. Schervish','Addison Wesley ','Third Edition',2002,1,NULL,NULL),(37,'SNMP, SNMPv2, SNMPv3, and RMON1 and 2','William Stallings','Addison Wesley, pearson Education','Third Edition',2000,1,NULL,NULL),(38,'Networked Multimedia Systems','S.V.Raghavan/Satish K.Tripathi','Alan Apt','First  Edition',1998,1,NULL,NULL),(39,'Microprocessor Systems Handbook','D.P. Burton and A.L. Dexter','Analog Devices, Inc.','NA',1979,1,NULL,NULL),(40,'Dynamic Programming And Optimal Control','Dimitri P. Bertsekas','Athena Scientific','Second Edition',2001,1,NULL,NULL),(41,'Neuro â€“ Dynamic Programming ','Dimitri P. Bertsekas, john N. Tsitsiklis','Athena Scientific','NA',1996,1,NULL,NULL),(42,'A Friendly Guide to Wavelets','Gerald Kaiser','Birkhauser','NA',1994,1,NULL,NULL),(43,'Structural Analysis Of Complex Networks','Matthias Dehmer','Birkhauser','NA',2011,1,NULL,NULL),(44,'Troubleshooting and Repairing The New Personal Computers','Art Margolis','BPB Publications','NA',2000,1,NULL,NULL),(45,'The 386/486 PC','Harry Fairhead','BPB Publications','NA',1991,1,NULL,NULL),(46,'C in Depth','S.K. Srivastava , Deepali Srivastava','BPB Publications','Second Edition',2000,1,NULL,NULL),(47,'Extended Finite State Models Of Language','Andras Kornai','Cambridge','NA',1999,1,NULL,NULL),(48,'Large Scale Inference','Bradley Efron','Cambridge','NA',2011,1,'',''),(49,'Introduction to Information Retrieval','Christopher D. Manning , Prabhakar Raghavan, Hinrich Schutze','Cambridge','NA',2008,1,NULL,NULL),(50,'Bayesian Reasoning and Machine Learning','David Barber','Cambridge','NA',2012,1,NULL,NULL),(51,'Networks, Crowds, and Markets','David Easily and Jon Kleinberg','Cambridge','NA',2010,1,NULL,NULL),(52,'Algorithmic Aspects Of Graph Connectivity ','Hiroshi Nagamochi, Toshihide Ibaraki','Cambridge','First  Edition',2008,1,NULL,NULL),(53,'The Cauchy --- Schwarz Master Class(An Inroduction to the Art of Mathematical Inequalities','J. Michael Steele','Cambridge','NA',2004,1,NULL,NULL),(54,'Natural language Engineering','John Tait, Branimir K. Boguraev, Christian Jacquemin','Cambridge','NA',2003,1,NULL,NULL),(55,'Random Networks for Communication','Massimo Franceschetti and Ronald Meester','Cambridge','NA',2007,1,NULL,NULL),(56,'The Quest For Artificial Intelligence','Nils J. Nilsson','Cambridge','NA',2010,1,NULL,NULL),(57,'Causality','Pearl','Cambridge','NA',2001,1,NULL,NULL),(58,'Causality','Pearl','Cambridge','Second Edition',2010,1,NULL,NULL),(59,'Models and Methods in Social  Network Analysis','Peter J. Carrington, John Scott, Stanley Wasserman','Cambridge','NA',2007,1,NULL,NULL),(60,'Scaling Up Machine Learning','Ron Bekkerman, Mikhail Bilenko,John Langford','Cambridge','NA',2012,1,NULL,NULL),(61,'Social Network Analysis- Methods and Applications','Stanly Wasserman and Katherine Faust','Cambridge','NA',1994,1,NULL,NULL),(62,'Convex Optimization ','Stephen Boyd and Lieven Vandenberghe','Cambridge','NA',2010,1,NULL,NULL),(63,'Text Mining Application Programming','Manu Konchady','Carrer & Professional Group','NA',2006,1,NULL,NULL),(64,'Operating Systems (Principles, Design and Applications)','Brian L. Stuart','Course Technology','NA',2009,1,NULL,NULL),(65,'A Guide to Programming Logic and Design','Joyce Farrel','Course Technology (Vikas Publishing House)','NA',1999,1,NULL,NULL),(66,'Data Mining (Technologies, Techniques, Tools, and Trends)','Bhavani Turaisingham','CRC Press','NA',1999,1,NULL,NULL),(67,'Foundations of Modern Analysis','Avner Friedman','Dover Publications','NA',1982,1,NULL,NULL),(68,'Introduction To Topology','Bert Mendelson','Dover Publications','Third Edition',1990,1,NULL,NULL),(69,'Foundations of Mathematical Logic','Haskell B.Curry','Dover Publications','NA',1977,1,NULL,NULL),(70,'Information Theory And Statistics','Solomon Kullback','Dover Publications','First  Edition',1968,1,NULL,NULL),(71,'Srinivasa Ramanujan (A Mathematical Genius)','K. Srinivasa Rao','East West Books(Madras)','First  Edition',1998,1,NULL,NULL),(72,'Wireless Sensor Networks ','Feng ZHAO, Leonidas Guibas','Elsevier','First  Edition',2004,1,NULL,NULL),(73,'Data Mining (Concepts and Techniques)','jiawei Han, Micheline Kamber','Elsevier','Second Edition',2006,1,NULL,NULL),(74,'Data Mining ','Jiawei Han, Micheline Kamber, Jian Pei','Elsevier','Third Edition',2012,1,NULL,NULL),(75,'Data Mining (Practical Machine Learning Tools and Techniques)','Lan H. Witten, Eibe Frank, Mark A. Hall','Elsevier','Second Edition',2005,1,NULL,NULL),(76,'Data Mining (Practical Machine Learning Tools and Techniques)','Lan H. Witten, Eibe Frank, Mark A. Hall','Elsevier','Third Edition',2011,1,NULL,NULL),(77,'Automated Planning (Theory and Practice)','Malik Ghallab, Dana Nau, Paolo Traverso','Elsevier','NA',2004,1,NULL,NULL),(78,'Artificial Intelligence (A New Synthesis)','Nils J. Nilsson','Elsevier','NA',2004,1,NULL,NULL),(79,'Algorithms and Parallel VLSI Architectures II','Patrice Quinton, Yves Robert','Elsevier','NA',1992,1,NULL,NULL),(80,'Introduction to Probability and Statistics for Engineers and Scientists','Sheldon M.Ross','Elsevier','Third Edition',2005,1,NULL,NULL),(81,'Introduction to Probability and Statistics for Engineers and Scientists','Sheldon M.Ross','Elsevier','Fourth Edition',2011,1,NULL,NULL),(82,'Probability Models For Computer Science','Sheldon M.Ross','Elsevier','NA',2006,1,NULL,NULL),(83,'Mining The Web','Soumen Chakrabarti','Elsevier','NA',2005,1,NULL,NULL),(84,'Client/Server Strategies','David Vaskevitch','Galgotia','First  Edition',1993,1,NULL,NULL),(85,'Fundamentals of Assembly Language Programming','Richard C.Detmer','Galgotia Publications','First  Edition',1991,1,NULL,NULL),(86,'Compiler Construction','William A.Barret, Rodney M. Bates, David A. Gustafson, John D.Couch','Galgotia Publications','Second Edition',1986,1,NULL,NULL),(87,'The Harper Collins Dictionary of Mathematics ','E.J.Borowski & J.m.Borwein','Haper Resource','NA',1991,1,NULL,NULL),(88,'Human Design (Molecular, cellular, and Systematic Physiology)','William S. Beck','Harcourt Brace Jovavich, Inc.','NA',1971,1,NULL,NULL),(89,'Data Mining (Concepts and Techniques)','jiawei Han, Micheline Kamber','HarCourt India Pvt. Ltd','NA',2001,1,NULL,NULL),(90,'Combinatorial  Optimization  Networks and Matroids','Eugene Lawler','Holt, Rinehart, and Winston','NA',1976,1,NULL,NULL),(91,'Fuzzy Models For Pattern Recognition ','james C. Bezdek, Sankar K. Pal','IEEE Press','NA',1992,1,NULL,NULL),(92,'Labelled Markov Processes','Prakash Panangaden','Imperial College Press','NA',2009,1,NULL,NULL),(93,'The Transputer Databook','NA','Inmos Limited','First  Edition',1988,1,NULL,NULL),(94,'i486 Microprocessor','NA','Intel Corporation','NA',1989,1,NULL,NULL),(95,'The Logic Of Adaptive Behavior ','Martin van Otterlo','IOS Press','NA',2009,1,NULL,NULL),(96,'Digital Systems and Microprocessor Fundamentals','Sulabha Apte','Jaico Publishing House','NA',1993,1,NULL,NULL),(97,'Statistical Analysis of Management Data','Hubert Gatignon','Kluwer Academic Publishers','NA',2003,1,NULL,NULL),(98,'Networks Of Learning Automata â€“ Techinques for Online Stochastic Optimization','M.A.L. Thathachar, P.S.Sastry','Kluwer Academic Publishers','NA',2004,1,NULL,NULL),(99,'Learning To Learn','Sebastian Thrun, Lorien Pratt','Kluwer Academic Publishers','NA',1998,1,NULL,NULL),(100,'Rough Sets Theoretical Aspects of Reasoning about Data','Zdzislaw Pawlak','Kluwer Academic Publishers','NA',1991,1,NULL,NULL),(101,'Modelling, Identification & Control Of Robotics ','W Khali & E Dombre','Kogan Page Science','NA',2005,1,NULL,NULL),(102,'Welcome to Networking (A Guide to LANs)','Joseph R.Levy','Manish Jain for BPB Publications','First  Edition',1994,1,NULL,NULL),(103,'Probability Random Variables, and Stochastic Processes','Athanasios Papoulis','McGraw- Hill International Editions','Third Edition',1991,1,NULL,NULL),(104,'Microprocessor and Digital Systems','Douglas V. Hall','McGraw- Hill International Editions','NA',1980,1,NULL,NULL),(105,'Artificial Intelligence ','Elaine Rich','McGraw- Hill International Editions','NA',1988,1,NULL,NULL),(106,'Systems Programming ','John J. Donovan','McGraw- Hill International Editions','First  Edition',1972,1,NULL,NULL),(107,'Computer Architecture And Parallel Processing','Kai Hwang, Faye A. Briggs','McGraw- Hill International Editions','NA',1985,2,NULL,NULL),(108,'Analysis and Design of Parallel Algorithms','S. Lakshmivarahan Sudarshan K . Dhall','McGraw- Hill International Editions','NA',1990,1,NULL,NULL),(109,'Operating Systems','Staurt E. Madnick, John J. Donovan','McGraw- Hill International Editions','NA',1974,1,NULL,NULL),(110,'Mathematical Handbook (Higher Mathematics)','M. Vygodsky','MiR Publishers Moscow','First  Edition',1975,1,NULL,NULL),(111,'Spotting and Discovering Terms Through Natural Language Processing','Christian Jacquemin','MiT Press Cambridge','NA',2001,1,NULL,NULL),(112,'Multiagent Systems','Gerhard Weiss','MiT Press Cambridge','NA',2001,1,NULL,NULL),(113,'An Introduction to Computational Learning Theory','Kearns, Vazirani','MiT Press Cambridge','NA',1994,1,NULL,NULL),(114,'A Course In Game Theory','MartinJ. Osborne, Ariel Rubinstein','MiT Press Cambridge','NA',1997,1,NULL,NULL),(115,'Gaussion Processes For Machine Learning','Rasmussen and Williams','MiT Press Cambridge','NA',2006,1,NULL,NULL),(116,'Machine Learning Course','Ron Rivest, TA: Javed Aslam','MiT Press Cambridge','NA',1990,1,NULL,NULL),(117,'C45: Programs for Machine Learning','J. Ross Quinlan','Morgan Kaufmann Publishers,','NA',1993,1,NULL,NULL),(118,'A Trip Down the Graphics Pipeline','Jim Blin\'s Corner','Morgan Kaufmann Publishers,','NA',1996,1,NULL,NULL),(119,'Machine Learning ','Ryszard S. Michalski, Jaime G. Cabonell, TOm M.Mitchell','Morgan Kaufmann Publishers,','Volume II',1986,1,NULL,NULL),(120,'Disk Operating System Version 3.20','NA','NA','First  Edition',1986,1,NULL,NULL),(121,'Management of Data','D. Janaki Ram','Narosa Publishing House','NA',1998,1,NULL,NULL),(122,'Graph Theory','Harry','Narosa Publishing House','NA',1989,1,NULL,NULL),(123,'Computational and Mathematical Modelling ','R. Nadarajan, R.S. Lekshmi, G. Sai Sundara Krishnan','Narosa Publishing House','NA',2012,1,NULL,NULL),(124,'Managing Internet Information Services','Cricket Liu, Jerry Peek, Russ Jones, Buus & Nye','O\'Reilly &Associates, Inc.','NA',1995,1,NULL,NULL),(125,'Intel Threading Building Blocks','James Reiders ','O\'Reilly &Associates, Inc.','NA',2007,1,NULL,NULL),(126,'Neural Networks For Pattern Recognition','Christopher M. Bishop','Oxford University Press','NA',1995,1,NULL,NULL),(127,'Artificial Intelligence and Intelligent Systems','N.P. Padhy','Oxford University Press','NA',2005,1,NULL,NULL),(128,'Natural language Processing and Information Retrieval ','Tanveer Siddiqui, U.S.Tiwary','Oxford University Press','NA',2008,1,NULL,NULL),(129,'A Book On C','AI Kelly, Ira Pohi','Pearson Education','Fourth Edition',2009,1,NULL,NULL),(130,'Operating Systems (Design and Implementation) ','Andrew S. Tanenbaum, Albert S. Woodhull','Pearson Education','Second Edition',1997,2,NULL,NULL),(131,'Bluetooth Revealed','Brent A. Miller, Chatchik Bisdikian','Pearson Education','First  Edition',2001,1,NULL,NULL),(132,'Introduction to Artificial Intelligence and Expert Systems','Dan W. Patterson','Pearson Education','NA',2007,1,NULL,NULL),(133,'Database Processing (Fundamentals, Design, and Implementation)','David M. Kroenke','Pearson Education','NA',2007,1,NULL,NULL),(134,'Operating Systems (A Systematic View)','Davis and Rajkumar','Pearson Education','Sixth Edition',2007,1,NULL,NULL),(135,'Fundamentals of Database Systems','Elmasri, Navathe, Somayajulu, Gupta','Pearson Education','NA',2006,1,NULL,NULL),(136,'Computer Vision â€“ A Modern Approach','Forsyth, Ponce','Pearson Education','NA',2003,1,NULL,NULL),(137,'Artificial Intelligence ','George F. Luger','Pearson Education','Fourth Edition',2001,1,NULL,NULL),(138,'Operating Systems','H.M. Deitel','Pearson Education','Second Edition',1990,1,NULL,NULL),(139,'The Pentium Microprocessor','James L. Antonakos','Pearson Education','NA',1997,1,NULL,NULL),(140,'Bluetooth Connect Without cables','Jennifer Bray and Charles F Sturman','Pearson Education','First  Edition',2001,1,NULL,NULL),(141,'Data Mining (Introductory and Advanced Topics)','Margaret H. Dunham','Pearson Education','NA',2003,1,NULL,NULL),(142,'Data Mining ','Margaret H. Dunham, S.Sridhar','Pearson Education','NA',2006,1,NULL,NULL),(143,'Introduction to Data Mining','Pang â€“ Nung Tan, Vipin Kumar, Michael Steinbach','Pearson Education','NA',2006,1,NULL,NULL),(144,'Introduction to Data Mining','Pang â€“ Nung Tan, Vipin Kumar, Michael Steinbach','Pearson Education','NA',2006,1,NULL,NULL),(145,'Modern Information Retrieval ','Ricardo Baeza- Yates, Berthier Ribeiro â€“ Neto','Pearson Education','NA',2004,1,NULL,NULL),(146,'Data Mining (A Tutorial -Based Primer)','Richard J. Roiger, Michael W. Geatz','Pearson Education','NA',2008,1,NULL,NULL),(147,'Introduction to BioInformatics','T K Attwood & D J Parry- Smith','Pearson Education','NA',2001,1,NULL,NULL),(148,'PCI System Architecture','Tom Shanley, Don Anderson','Pearson Education','Fourth Edition',1999,1,NULL,NULL),(149,'Unix Internals The New Frontiers','Uresh Vahalia','Pearson Education','NA',1996,1,NULL,NULL),(150,'Network Security Essentials (Application and Standards)','William Stallings','Pearson Education','First  Edition',2000,1,NULL,NULL),(151,'Operating Systems','William Stallings','Pearson Education','Fourth Edition',2001,1,NULL,NULL),(152,'Computer Networks','Andrew S. Tanenbaum','Prentice- Hall','Second Edition',1991,1,NULL,NULL),(153,'Distributed Operating Systems','Andrew S. Tanenbaum','Prentice- Hall of India','NA',1995,1,NULL,NULL),(154,'Artificial Neural Networks','B. Yegnanarayana','Prentice- Hall of India','NA',1999,1,NULL,NULL),(155,'The C (ANSI C) Programming language','Brian W. Kernighan, Dennis Ritchie','Prentice- Hall of India','Second Edition',1992,1,NULL,NULL),(156,'Neural Engineering','Chris Eliasmith and Charles H. Anderson','Prentice- Hall of India','NA',2003,1,NULL,NULL),(157,'Introduction to Artificial Intelligence and Expert Systems','Dan W. Patterson','Prentice- Hall of India','NA',1990,1,NULL,NULL),(158,'Principles of Data Mining','David Hand, Heikki Mannila, Padhraic Smyth','Prentice- Hall of India','NA',2001,1,NULL,NULL),(159,'Pattern Recognition and Image Analysis','Earl Gose, Richard Johnsonbaugh, Steve Jost','Prentice- Hall of India','NA',1997,1,NULL,NULL),(160,'Introduction to Data Mining with Case Studies ','G.K.Gupta','Prentice- Hall of India','NA',2006,1,NULL,NULL),(161,'Fuzzy Sets Uncertainty, and Information','George j. Klir, Tina A. Folger','Prentice- Hall of India','NA',1988,2,NULL,NULL),(162,'Digital Design â€“ Principles & Practices','John F. Wakerly','Prentice- Hall of India','Third Edition',2000,1,NULL,NULL),(163,'Introduction To Finite Mathematics ','John G. Kemeny, J.Laurie Snell, Gerald L. Thompson','Prentice- Hall of India','Second Edition',1966,1,NULL,NULL),(164,'Digital Designing With Programmable Logic Devices','John W. Carter','Prentice- Hall of India','NA',1997,1,NULL,NULL),(165,'Insight into Data Mining  - Theory and Practice','K.P.Soman, Shyam Diwakar, V.Ajay','Prentice- Hall of India','NA',2006,1,NULL,NULL),(166,'Introduction to Statistical Signal Processing With Applications ','M.D. Srinath, P.K.RajaSekaran, R.Viswanathan','Prentice- Hall of India','NA',1996,1,NULL,NULL),(167,'Mechanics of Robotic Manipulation ','Matthew T. Mason','Prentice- Hall of India','NA',2001,1,NULL,NULL),(168,'The Design Of The Unix Operting System','Maurice J. Bach','Prentice- Hall of India','NA',1986,2,NULL,NULL),(169,'Design Of Microprocessor Based Systems ','Nikitas Alexandridis','Prentice- Hall of India','NA',1993,1,NULL,NULL),(170,'Simulation Model Design and Execution(Building Digital Words)','Paul A. Fishwick','Prentice- Hall of India','First  Edition',1995,1,NULL,NULL),(171,'Introductory Methods of Numerical Analysis','S.S.Sastry','Prentice- Hall of India','Second Edition',1990,1,NULL,NULL),(172,'Introduction to Autonomous Mobile Robots','Siegwart, Nourbakhsh','Prentice- Hall of India','NA',2004,1,NULL,NULL),(173,'Neural Networks ','Simon Haykin','Prentice- Hall of India','Second Edition',1999,1,NULL,NULL),(174,'Computer Systems Design and Architecture','Vincent P.Heuring, Harry F. Jordan','Prentice- Hall of India','Second Edition',2004,1,NULL,NULL),(175,'A Guide to Commercial Artificial Intelligence','Wendy B. Rauch-Hindin','Prentice- Hall of India','NA',1988,1,NULL,NULL),(176,'Information Retrieval (DataStructures and Algorithms)','WilliamB. Frakes, Ricardo Baeza- Yates','Prentice- Hall of India','NA',1992,1,NULL,NULL),(177,'Induction and Analogy in Mathematics','G.Polya','Princeton University Press','NA',1973,1,NULL,NULL),(178,'Social and Economic Networks','Matthew O. Jackson','Princeton University Press','NA',2008,1,NULL,NULL),(179,'Numerical Methods','Robert W. Hornbeck','Quantum Publishers','NA',1975,1,NULL,NULL),(180,'J: The Natural Language For Analytic Computing','Norman Thomson','Research Studies Press Ltd','NA',2001,1,NULL,NULL),(181,'IP Switching and Routing Essentials','Stephen A. Thomas','Robert Ipsen','First  Edition',2002,1,NULL,NULL),(182,'Theory and Problems of Computers and Programming','Francis Scheid','Schaum\'s Outline Series In Computers','First  Edition',1983,1,NULL,NULL),(183,'Python In a Nutshell','Alex Martelli','Shroff Publishers and Distributors , O\'Reilly','First  Edition',2004,1,NULL,NULL),(184,'Virtual Private Networks','Charlie Scott, Paul Wolfe & Mike Erwin','Shroff Publishers O\'Reilly','Second Edition',1999,1,NULL,NULL),(185,'Programming PERL','Larry Wall, Tom Christiansen, Randal L.Schwartz with Stephen Potter','Shroff Publishers O\'Reilly','Second Edition',1998,1,NULL,NULL),(186,'Testing Client/ Server Applications','Patricia A. Goglia','Shroff Publishers O\'Reilly','NA',1993,1,NULL,NULL),(187,'Game Theory (A Non Technical Introduction to the Analysis of Strategy','Roger A. McCain','South Western','First  Edition',2004,1,NULL,NULL),(188,'Advanced Lectures on Machine Learning','Bousquet, Ulrike von Luxburg, Gunner Ratsch (Eds.)','Springer ','NA',2004,1,NULL,NULL),(189,'Monte carlo and Quasi- Monte Carlo Sampling','Christiane Lemieux','Springer ','NA',2009,1,NULL,NULL),(190,'The Elements of Statistical Learning','Hastie, Tibshirani, Friedman','Springer ','NA',2001,1,NULL,NULL),(191,'Springer Handbook of Robotics ','Siciliano, Khatib','Springer ','NA',2008,1,NULL,NULL),(192,'Representation Theory','William Fulton, Joe Harris','Springer ','NA',2004,1,NULL,NULL),(193,'Adaptive and Natural Algorithms','Andrej Dobnikar, Uros Lotric, Branko Ster','Springer Verlag','part II',2011,1,NULL,NULL),(194,'Adaptive and Natural Algorithms','Andrej Dobnikar, Uros Lotric, Branko Ster','Springer Verlag','Part I',2011,1,NULL,NULL),(195,'Security, Privacy, and Applied Cryptography Engineering','Andrey Bogdanov, Somitra Sanandhya (Eds.)','Springer Verlag','NA',2012,1,NULL,NULL),(196,'Web Data Mining ','Bing Liu','Springer Verlag','NA',2007,1,NULL,NULL),(197,'MetaLearning','Brazdil, Giraud- Carrier, Soares, Vilalta','Springer Verlag','NA',2009,1,NULL,NULL),(198,'Lie Groups, Lie Algebras, and Representations (AnElememtary Introduction)','Brian C. Hall','Springer Verlag','NA',2006,1,NULL,NULL),(199,'Applications of Evolutionary Computation','Cecilia Di Chio et al. (Eds.)','Springer Verlag','Part I',2010,1,NULL,NULL),(200,'Applications of Evolutionary Computation','Cecilia Di Chio et al. (Eds.)','Springer Verlag','Part II',2010,1,NULL,NULL),(201,'Evolutionary Computation, Machine Learning and Data Mining in Bioinformatics','Clara Pizzuti, Marylyn D.Ritchie, Mario Giacobini','Springer Verlag','NA',2010,1,NULL,NULL),(202,'Fundamental Approaches to Software Engineering','Dimitra Giannakopoulou, Fernando Orejas (Eds.)','Springer Verlag','NA',2011,1,NULL,NULL),(203,'Multiple Classifier Systems','EL Gayar, Kittler, Roli(Eds.)','Springer Verlag','NA',2010,1,NULL,NULL),(204,'Genetic Programming','Esparcia â€“ Alcazar et al. (Eds)','Springer Verlag','NA',2010,1,NULL,NULL),(205,'Bayesian Networks and Decision Graphs','Finn V. Jensen','Springer Verlag','NA',2001,1,NULL,NULL),(206,'Algorithms in Bioinformatics','Gary Benson, Roderic Page (Eds.)','Springer Verlag','NA',2004,1,NULL,NULL),(207,'Image Analysis, Random Fields, and Markov Chain, Monte Carlo Methods','Gerhard Winkler','Springer Verlag','Second Edition',2003,1,NULL,NULL),(208,'Simulated Evolution and Learning','Kalyanmoy Deb et al. (Eds.)','Springer Verlag','NA',2010,1,NULL,NULL),(209,'Foundations of Software Science and Computational Structures','Martin Hofmann (Ed.)','Springer Verlag','NA',2011,1,NULL,NULL),(210,'Principles of Data Mining','Max Bramer','Springer Verlag','NA',2007,1,NULL,NULL),(211,'Advances in Knowledge Discovery and Data Mining','Mohammed J. Zaki, Jeffrey Xu Yu, B. Ravindran, Vikram Pudi (Eds.)','Springer Verlag','Part I',2010,1,NULL,NULL),(212,'Advances in Knowledge Discovery and Data Mining','Mohammed J. Zaki, Jeffrey Xu Yu, B. Ravindran, Vikram Pudi (Eds.)','Springer Verlag','part II',2010,1,NULL,NULL),(213,'Product Research','N.R. Srinivasa Raghavan , John A. Cafeo','Springer Verlag','NA',2009,1,NULL,NULL),(214,'The Data Mining and Knowledge Discovery Handbook','Oded Mamion, Lior Rokach','Springer Verlag','NA',2005,1,NULL,NULL),(215,'Tools and Algorithms For The Construction and Analysis Of Systems','Parosh Aziz Abdulla, K. Rustan M.Lenio (Eds.)','Springer Verlag','NA',2011,1,NULL,NULL),(216,'Recent Advances in Reinforcement Learning','Scott Sanner, Marcus Hutter(Eds.)','Springer Verlag','NA',2011,1,NULL,NULL),(217,'Advanced Lectures on Machine Learning','Shahar Mendelson, Alexander J. Smola (Eds.)','Springer Verlag','NA',2003,1,NULL,NULL),(218,'Markov Random Field Modeling in Image Analysis','Stan Z. Li','Springer Verlag','NA',2001,1,NULL,NULL),(219,'NonLinear and Dynamic Programming','Sven Dano','Springer Verlag','NA',1975,1,NULL,NULL),(220,'Ambient Intelligence','W. Weber, J.M. Rabaey, E. Aarts ','Springer Verlag','NA',2005,1,NULL,NULL),(221,'Game Theoretic Probems in Network Economics and Mechanism Design Solutions','Y. Narahari, Dinesh Garg, Ramasuri Narayanan, Hastagiri Prakash','Springer Verlag','NA',2008,1,NULL,NULL),(222,'Probability Theory','Yuan Shih Chow, Henry Teicher','Springer Verlag','Third Edition',2004,1,NULL,NULL),(223,'Data WareHousing, Data Mining, & OLAP','Alex Berson,Stephen J. Smith','Tata McGraw- Hill ','NA',1997,1,NULL,NULL),(224,'Operating Systems (A Concept Based Approach)','D M Dhamdhere','Tata McGraw- Hill ','NA',2003,1,NULL,NULL),(225,'Modern Processor Design â€“ Fundamentals Of Superscalar Processors','John Paul Shen, MikkoH; Lipasti','Tata McGraw- Hill ','NA',2005,1,NULL,NULL),(226,'Principles of Interactive Multimedia','Mark Elsom â€“ Cook','Tata McGraw- Hill ','NA',2004,1,NULL,NULL),(227,'Artificial Intelligence ','Rich, Knight, Nair','Tata McGraw- Hill ','Third Edition',2009,1,NULL,NULL),(228,'Artificial Intelligence and Expert System Technologies','Sarma, Viswanadham, Yegnanrayana, Deekshatulu','Tata McGraw- Hill ','NA',1991,1,NULL,NULL),(229,'Neural Networks ','Satish Kumar','Tata McGraw- Hill ','NA',2004,1,NULL,NULL),(230,'Introduction to Computing Systems','Yale N. Patt, Sanjay j. Patel','Tata McGraw- Hill ','NA',2001,1,NULL,NULL),(231,'Natural language Understanding','James Allen','The Benjamin/Cummings Publishing Company. Inc.','NA',1987,1,NULL,NULL),(232,'Algebra and Tiling (Homomorphisims in The Service Of Geometry','Sherman K. Stein and Sandor Szabo','The Carus Mathematical Monographs','NA',1994,1,NULL,NULL),(233,'Operating Systems ','D M Dhamdhere','The McGraw- Hill Companies','Second Edition',2006,1,NULL,NULL),(234,'Made-Up Minds','Cary L. Drescher','The MIT Press, Cambridge','NA',2002,1,NULL,NULL),(235,'Probabilistic Graphical Models','Daphne Koller and Nir Friedman','The MIT Press, Cambridge','NA',2009,1,NULL,NULL),(236,'Bayesian Brain','Doya, Ishii, Pought, And P. N. Rao','The MIT Press, Cambridge','NA',2011,1,NULL,NULL),(237,'Machine Learning (A Probabilistic Perspective)','Kevin P. Murphy','The MIT Press, Cambridge','NA',2012,1,NULL,NULL),(238,'Learning in Graphical Models','Michael I. Jordan','The MIT Press, Cambridge','NA',1998,1,NULL,NULL),(239,'Empirical Methods for Artificial Intelligence','Paul R. Cohen','The MIT Press, Cambridge','NA',1995,1,NULL,NULL),(240,'The Minimum Description Length Principle','Peter D. Grunwald','The MIT Press, Cambridge','NA',2007,1,NULL,NULL),(241,'Theoretical Neurosciences','Peter Dayan and L.F.Abbott','The MIT Press, Cambridge','NA',2001,1,NULL,NULL),(242,'Semantic Structures','Ray jackendoff','The MIT Press, Cambridge','NA',1995,1,NULL,NULL),(243,'Probabilistic Robotics','Sebastian Thrun, Wolfram Burgard,  Dieter Fox','The MIT Press, Cambridge','NA',1967,1,NULL,NULL),(244,'Optimization For Machine Learning','Suvrit SRA, Sebastian Nowozin, Stephen J. Wright','The MIT Press, Cambridge','NA',2012,1,NULL,NULL),(245,'Engineering Mathematics (Third Year Part- B)','DR. M.K. Venkataraman','The National Publishing Co.,','Eleventh Edition',1989,1,NULL,NULL),(246,'Higher Mathematics For Engineering and Science ','DR. M.K. Venkataraman','The National Publishing Co.,','NA',1990,1,NULL,NULL),(247,'Networking Guide to Operating Systems','Michael Palmer, Michael Walters','Thomson Learning Inc.','Enhanced Edition',2007,1,NULL,NULL),(248,'Data Mining  Techniques','Arun K. Pujari','University Press','NA',2002,1,NULL,NULL),(249,'Interactive Computer Graphics Aided Design','T G Sambanthan, N Subramanian','Wheeler Publishing','Second Edition',1994,1,NULL,NULL),(250,'Digital Computers Memory Technology','D.Dutta Majumdar, J. Das','Wiley Eastern Limited','Third Edition',1992,1,NULL,NULL),(251,'Kernels For Structured Data','Thomas Gartner','World Scientific Publishing','NA',2008,1,NULL,NULL),(252,'Workshop on Feature Selection in Data Mining(FSDM-2010)','Huan Liu, Hiroshi Motoda, Rudy Sectiono, Zheng Zhao','NA','NA',2010,1,NULL,NULL),(253,'Workshop on Behavior Informatics (BI-2010)','Philip S. Yu','NA','NA',2010,1,NULL,NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_name` (`cat_name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,'à®…à®®à¯à®®à®¾33'),(3,'Devotion'),(4,'Sacred Script'),(5,'trial'),(6,'à®•à®£à®•à¯à®•à¯'),(7,'à®¤à®®à®¿à®´à¯'),(8,'trial2');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_book_id` varchar(255) DEFAULT NULL,
  `loan_mem_name` varchar(50) DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `loan_return_date` date DEFAULT NULL,
  `loan_status` tinytext,
  `loan_return_stats` tinytext,
  `loan_return_mem_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (21,'9','4','2013-08-22','2013-08-22','Returned',NULL,'4'),(22,'9','4','2013-08-22','2013-08-22','Returned',NULL,'4');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `loc_id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_name` varchar(255) NOT NULL,
  PRIMARY KEY (`loc_id`),
  UNIQUE KEY `loc_name` (`loc_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Sithantham'),(2,'Samayam'),(3,'Thiruvasakam'),(4,'à®¤à¯‡à®µà®¾à®°à®®à¯');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `reader_id` int(11) NOT NULL AUTO_INCREMENT,
  `nric` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `address` text CHARACTER SET utf8,
  `mobilephone` bigint(20) NOT NULL,
  `mem_remark` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`reader_id`),
  UNIQUE KEY `NRIC` (`nric`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (4,'CS13D030','SUDARSUN','SANTHIAPPAN','Thirumullaivoyil',9840737947,'');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-16 22:08:46
