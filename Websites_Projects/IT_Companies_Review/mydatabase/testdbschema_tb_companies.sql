-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: testdbschema
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_companies`
--

DROP TABLE IF EXISTS `tb_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_name` varchar(255) DEFAULT NULL,
  `companylink` text,
  `img_companylink` text,
  `company_name` varchar(255) DEFAULT NULL,
  `clutchlink` text,
  `review_num` varchar(255) DEFAULT NULL,
  `diemdanhgia` varchar(255) DEFAULT NULL,
  `rating1` varchar(45) DEFAULT NULL,
  `rating2` varchar(45) DEFAULT NULL,
  `rating3` varchar(45) DEFAULT NULL,
  `rating4` varchar(45) DEFAULT NULL,
  `min_project_size` varchar(45) DEFAULT NULL,
  `company_size` varchar(45) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `gioithieu` mediumtext,
  `ds_clients` text,
  `ds_industries` text,
  `notable_project` mediumtext,
  `quotes` text,
  `ds_classindustries` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_companies`
--

LOCK TABLES `tb_companies` WRITE;
/*!40000 ALTER TABLE `tb_companies` DISABLE KEYS */;
INSERT INTO `tb_companies` VALUES (1,'kms-solutions','https://kms-solutions.asia/?utm_source=themanifest.com&amp;utm_medium=referral&amp;utm_campaign=vn-it-services','https://img.shgstatic.com/clutchco-static/image/scale/50x50/s3fs-public/logos/8bdf43d17bd00ea5e7c900929c87a283_1.jpeg','KMS Solutions, Inc.','https://clutch.co/profile/kms-solutions?utm_source=themanifest&amp;utm_medium=profile&amp;utm_content=2058029500000#reviews','3 Reviews','4.7','5.0','4.8','4.2','4.5','$25,000+','250 - 999 employees','Ho Chi Minh City, Vietnam','KMS Solutions, Inc. Is a midsize IT strategy consulting company based in Ho Chi Minh City, Vietnam. The team focuses on IT strategy consulting, custom software development, and BI &amp; big data consulting &amp; SI.','ACB Bank,MB Bank,Pactera,TCS','Financial services,Medical,Information technology,Retail','KMS Solutions, Inc. provides mobile app development for a commercial bank. They built the app with&nbsp;ensured&nbsp;data security using many tools, including React Native, MobX, Firebase, and&nbsp;more.','\"The team was so enthusiastic and full of energy.\"','field_pp_if_finservices,field_pp_if_healthcare,field_pp_if_it,field_pp_if_retail'),(2,'beetsoft-co','https://beetsoft.com.vn/?utm_campaign=directory&amp;utm_medium=referral&amp;utm_source=themanifest.com','https://img.shgstatic.com/clutchco-static/image/scale/50x50/s3fs-public/logos/logo_cong_ty.jpg','BEETSOFT Co Ltd','https://clutch.co/profile/beetsoft-co?utm_source=themanifest&amp;utm_medium=profile&amp;utm_content=2058029500000#reviews','12 Reviews','5.0','4.9','4.9','5.0','5.0','$1,000+','250 - 999 employees','Hanoi, Vietnam','Beetsoft Co Ltd is an IT outsourcing agency. Headquartered in Hanoi, Vietnam, with an\n                                additional office in Tokyo, they were founded in 2014 and operate with a team of 52\n                                employees. They provide IT strategy consulting, web\n                                development, and custom software development for small, midmarket, and enterprise\n                                businesses.<br> &nbsp;','NEC,Hyundai,Annotell,Vin Group','Consumer products &amp; services,eCommerce,Education,Financial services,Gambling,Gaming,Medical,Information technology,Manufacturing','A dental market company hired BEETSOFT Co Ltd for IT consulting on a mobile\n                                    application and e-commerce site. They\'ve been auditing bugs to create solutions\n                                    for&nbsp;full site optimization&nbsp;with monthly maintenance.','\"BEETSOFT Co Ltd works effectively and strictly follows time management.\"','field_pp_if_conproducts,field_pp_if_ecommerce,field_pp_if_education,field_pp_if_finservices,field_pp_if_gambling,field_pp_if_gaming,field_pp_if_healthcare,field_pp_if_it,field_pp_if_manufacturing'),(3,'kyanon-digital','http://kyanon.digital?utm_campaign=directory&amp;utm_medium=referral&amp;utm_source=themanifest.com','https://img.shgstatic.com/clutchco-static/image/scale/50x50/s3fs-public/logos/b6d630a22778f99c02d589f32768a721.jpeg','Kyanon Digital','https://clutch.co/profile/kyanon-digital?utm_source=themanifest&amp;utm_medium=profile&amp;utm_content=2058029500000#reviews','7 Reviews','4.9','4.7','4.7','4.4','5.0','$10,000+','50 - 249 employees','Ho Chi Minh, Vietnam','Kyanon Digital, a mobile app development firm, is based in Ho Chi Minh, Vietnam; Singapore, Singapore and Ho Chi Minh, Vietnam. Established in 2012, the midsize team provides mobile app development, e-commerce development, custom software development, enterprise app modernization, and more.',NULL,'Consumer products &amp; services,eCommerce,Manufacturing,Retail','Kyanon Digital built a mobile app for a marketing automation company. The team created designs that would fit the client\'s needs and the CRM platform.','\"They provided consultancy service suitable to advise our client in improving their business traction.\"','field_pp_if_conproducts,field_pp_if_ecommerce,field_pp_if_manufacturing,field_pp_if_retail'),(4,'niftit','http://niftit.com/?utm_campaign=directory&amp;utm_medium=referral&amp;utm_source=themanifest.com','https://img.shgstatic.com/clutchco-static/image/scale/50x50/s3fs-public/logos/niftit_logo.png','NIFTIT','https://clutch.co/profile/niftit?utm_source=themanifest&amp;utm_medium=profile&amp;utm_content=2058029500000#reviews','5 Reviews','5.0','4.8','5.0','5.0','5.0','$5,000+','10 - 49 employees','Ho Chi Minh City, Vietnam','NIFTIT is a design and development agency based in New York, with an office in Ho Chi Minh City, Vietnam. The agency, founded in 2013, has a team of around 20 that provides, among others, ECM consulting &amp; SI, IT managed services, and applications management &amp; support services to various organizations, institutions, and companies.&nbsp;','The New York Metropolitan Transportation Council,The Sports &amp; Arts in Schools Foundation (SASF),Viedam,Smile Train','Business services,Consumer products &amp; services,Medical,Information technology,Media,Non-profit,Real estate,Supply Chain and Logistics and Transport','NIFTIT was hired by a B2B Food Flavoring Company to develop SharePoint-based workflows and an intranet setup for company-wide communications. NIFTIT was able to deliver these and made an exceptionally positive impact on the Company.&nbsp;','\"They always met the timeline deadlines, even when we had change requests.\" - IT Manager, B2B Food Flavoring Company&nbsp;','field_pp_if_bizservices,field_pp_if_conproducts,field_pp_if_healthcare,field_pp_if_it,field_pp_if_media,field_pp_if_nonprofit,field_pp_if_realestate,field_pp_if_transportation'),(5,'cystack','https://cystack.net/en?utm_campaign=directory&amp;utm_medium=referral&amp;utm_source=themanifest.com','https://img.shgstatic.com/clutchco-static/image/scale/50x50/s3fs-public/logos/1e3821b3d205bf8ad1f3465c4838de37.jpg','CyStack','https://clutch.co/profile/cystack?utm_source=themanifest&amp;utm_medium=profile&amp;utm_content=2058029500000#reviews','1 Reviews','5.0','5.0','5.0','4.0','5.0','$10,000+','10 - 49 employees','Hanoi, Vietnam','CyStack Security is a cybersecurity company established in 2017. They are based in Hanoi, Vietnam and have a small team. The company specializes in cybersecurity.',NULL,'eCommerce,Financial services,Information technology','CyStack provided system security testing for an app developer. They audited the client’s app, found several vulnerabilities, and delivered a detailed report on how to fix them and avoid them in the future.','“CyStack worked very hard on the project, and they found a lot of bugs since day one.”','field_pp_if_ecommerce,field_pp_if_finservices,field_pp_if_it'),(6,'vti-cloud','https://vticloud.io/?utm_campaign=directory&amp;utm_medium=referral&amp;utm_source=themanifest.com','https://img.shgstatic.com/clutchco-static/image/scale/50x50/s3fs-public/logos/221ea79e9b447d6e90844c00d29488fd.png','VTI Cloud','https://clutch.co/profile/vti-cloud?utm_source=themanifest&amp;utm_medium=profile&amp;utm_content=2058029500000#reviews','1 Reviews','5.0','5.0','5.0','5.0','5.0','$5,000+','10 - 49 employees','Ha Noi, Vietnam','VTI Cloud is an AWS Advanced Consulting Partner based in Ha Noi, Vietnam, with offices in&nbsp;Chiyoda-ku, Japan, and Ho Chi Minh, Vietnam. The company, founded in 2018, has more than 200 employees and provides cloud consulting &amp; SI, custom software development, and other IT consulting &amp; SI services. VTI Cloud serves small and larger-sized companies in the retail, financial services, IT, real estate, and transportation industries.','Lyft,Continental Engineering Corporation,Kaplan,Deliveroo','Financial services,Information technology,Real estate,Retail,Supply Chain and Logistics and Transport','A recruitment platform company hired VTI Cloud to update their database and migrate their data center to AWS cloud. After discussions with the company about their requirements, VTI Cloud successfully migrated the company\'s data center to AWS, which enabled the company\'s system to run smoothly and perform excellently.','\"Their engineers were highly skilled and could&nbsp;solve complex problems.\" - IT Manager, Recruitment Platform Company','field_pp_if_finservices,field_pp_if_it,field_pp_if_realestate,field_pp_if_retail,field_pp_if_transportation'),(7,'oivan','http://www.oivan.com?utm_campaign=directory&amp;utm_medium=referral&amp;utm_source=themanifest.com','https://img.shgstatic.com/clutchco-static/image/scale/50x50/s3fs-public/logos/47f043942b41cd13c5e76c211ad414dd.png','Oivan','https://clutch.co/profile/oivan?utm_source=themanifest&amp;utm_medium=profile&amp;utm_content=2058029500000#reviews','13 Reviews','4.5','4.4','4.6','4.5','4.9','$10,000+','50 - 249 employees','Ho Chi Minh City, Vietnam','IWA Ltd is a web services agency&nbsp;headquarted in Helsinki with offices in Tambon BanPed, Thailand and Abu Dhabi, United Arab Emirates. Founded in 2009, the team of 141 specializes in web development, mobile app development, and application management and support. They work primarily with midmarket and small businesses, focusing on real estate, transportation, arts, and entertainment and music. &nbsp;','Likennevirta Oy/Virta Ltd,Rakennustieto Oy,Goland Group Oy,Epecci Oy','Arts and entertainment &amp; music,Education,Financial services,Government,Medical,Real estate,Telecommunications,Supply Chain and Logistics and and Transport','An online meeting solutions provider outsourced their&nbsp;software and web development of an MVP of their new product to Oivan so they can focus on business development.','\"They do really show that the project also matters for them, it is not just about making a gig.\"','field_pp_if_arts,field_pp_if_education,field_pp_if_finservices,field_pp_if_government,field_pp_if_healthcare,field_pp_if_realestate,field_pp_if_telecom,field_pp_if_transportation'),(8,'sotatek-jsc','https://www.sotatek.com/?utm_campaign=directory&amp;utm_medium=referral&amp;utm_source=themanifest.com','https://img.shgstatic.com/clutchco-static/image/scale/50x50/s3fs-public/logos/b50328096ecb1977b698959c2fece6a6_1.png','SOTATEK JSC','https://clutch.co/profile/sotatek-jsc?utm_source=themanifest&amp;utm_medium=profile&amp;utm_content=2058029500000#reviews','6 Reviews','5.0','5.0','5.0','5.0','5.0','$5,000+','250 - 999 employees','Hanoi, Vietnam','SotaTek JSC is an AI and blockchain development&nbsp;company based in Hanoi, Vietnam, with offices in Tokyo and Osaka, and Costa Mesa, Calif. The company, founded in 2015, has more than 500 employees and provides blockchain, custom software development, mobile app development, web development, AI, e-commerce development, and IT strategy consulting services. SotaTek serves mid-market and other-sized companies in various industries that include arts &amp; entertainment, business services, and automotive.','Kyber Network,Flowchain,ProximaX,XinFin','Arts and entertainment &amp; music,Business services,eCommerce,Education,Financial services,Medical,Information technology,Retail','SOTATEK JSC developed a web app for a software solutions provider. The client was looking to lessen their internal team\'s workload and becoming more productive and efficient.','\"I would say that becoming a partner with SotaTek is the wisest decision we ever made.\"','field_pp_if_arts,field_pp_if_bizservices,field_pp_if_ecommerce,field_pp_if_education,field_pp_if_finservices,field_pp_if_healthcare,field_pp_if_it,field_pp_if_retail'),(9,'digi-texx-vietnam','https://digi-texx.vn/?utm_campaign=directory&amp;utm_medium=referral&amp;utm_source=themanifest.com','https://img.shgstatic.com/clutchco-static/image/scale/50x50/s3fs-public/logos/logo_digi-texx_2015_1.jpg','DIGI-TEXX VIETNAM','https://clutch.co/profile/digi-texx-vietnam?utm_source=themanifest&amp;utm_medium=profile&amp;utm_content=2058029500000#reviews','1 Reviews','5.0','5.0','4.0','5.0','5.0','$1,000+','1,000 - 9,999 employees','Ho Chi Minh City, Vietnam','DIGI-TEXX is a business process outsourcing company based in Ho Chi Minh City, Vietnam,&nbsp;and was founded in 2003. Their team of 49 employees specializes in back-office services, voice services, and IT strategy consulting for small business and midmarket clients in the financial services and real estate industries.&nbsp;','All Nippon Airways','Advertising,Automotive,Business services,eCommerce,Education,Financial services,Gaming,Government,Medical,Hospitality &amp; leisure','DIGI-TEXX provided outsourcing services to an IT company. They helped the client, who was dealing with a large volume of customers, to improve their report processing efficiency. The client was very happy with the service and said that it improved their efficiency.&nbsp;','“The team is capable of handling a high volume of work while producing strong results. They deliver everything on time and adapt to our needs very quickly.” – Program Manager, IT Company&nbsp;','field_pp_if_advertising,field_pp_if_automotive,field_pp_if_bizservices,field_pp_if_ecommerce,field_pp_if_education,field_pp_if_finservices,field_pp_if_gaming,field_pp_if_government,field_pp_if_healthcare,field_pp_if_hospitality'),(10,'designveloper','https://www.designveloper.com/?utm_campaign=directory&amp;utm_medium=referral&amp;utm_source=themanifest.com','https://img.shgstatic.com/clutchco-static/image/scale/50x50/s3fs-public/logos/logo_png_4.png','Designveloper','https://clutch.co/profile/designveloper?utm_source=themanifest&amp;utm_medium=profile&amp;utm_content=2058029500000#reviews','7 Reviews','4.9','4.8','4.9','4.7','4.9','$5,000+','50 - 249 employees','Ho Chi Minh City, Vietnam','Designveloper is a software development company based in&nbsp;Ho Chi Minh City, Vietnam. Founded in 2013, this team of 43 offers web development, mobile app development, custom software development, UI/UX design,&nbsp;and voice services for clients. They work with small, mid market, and enterprise companies in the consumer products, information technology, business services, financial services, health care, and e-commerce industries.','LuminPDF,Joyn’it,Poppi Live chat,Sensiotec','Business services,Consumer products &amp; services,eCommerce,Financial services,Medical,Information technology','Designveloper was hired to develop a web app for an acne treatment products company. The deliverable&nbsp;was a skin assessment tech.&nbsp;&nbsp;','\"We also got the feeling that our goals are shared and that we\'re all working towards a common objective.\"','field_pp_if_bizservices,field_pp_if_conproducts,field_pp_if_ecommerce,field_pp_if_finservices,field_pp_if_healthcare,field_pp_if_it');
/*!40000 ALTER TABLE `tb_companies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-03 20:12:35
