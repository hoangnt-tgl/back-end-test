-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: us-cdbr-east-06.cleardb.net    Database: heroku_6965ea3352c823d
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `computer_power`
--

DROP TABLE IF EXISTS `computer_power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computer_power` (
  `code` varchar(100) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `wattage` varchar(100) DEFAULT NULL,
  `fan_bearing` varchar(100) DEFAULT NULL,
  `fan_size` varchar(100) DEFAULT NULL,
  `mtbf` varchar(100) DEFAULT NULL,
  `atx_connect` varchar(100) DEFAULT NULL,
  `atx_version` varchar(100) DEFAULT NULL,
  `eps12v_connect` varchar(100) DEFAULT NULL,
  `floppy_connect` varchar(100) DEFAULT NULL,
  `pcle_connect` varchar(100) DEFAULT NULL,
  `sata_connect` varchar(100) DEFAULT NULL,
  `ac_input` varchar(100) DEFAULT NULL,
  `performance` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computer_power`
--

LOCK TABLES `computer_power` WRITE;
/*!40000 ALTER TABLE `computer_power` DISABLE KEYS */;
INSERT INTO `computer_power` VALUES ('CP00001','ATOMV550','550W',NULL,'120mm',NULL,'1','V2.3','1','1','2','5','230V AC 5A',NULL,NULL),('CP00002','R-PF450D-HA0B-EU','450W','Hypro Bearing','120mm','100K giờ','1 (v2.4)',NULL,'1','','1','2','200-240Vac / 3.5A','≥85% Under Typical Load(50% Loading)','150 x 140 x 86 (mm)'),('CP00003','CP-9020209-NA','450W','Sleeve','140mm','100K giờ','1','V2.31','1','1','2','7','100-240V',NULL,NULL),('CP00004','MAG-A650BN','650W',NULL,'120mm',NULL,'1','V2.3','1',NULL,'2','5','230V AC 5A',NULL,NULL);
/*!40000 ALTER TABLE `computer_power` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpu`
--

DROP TABLE IF EXISTS `cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu` (
  `code` varchar(100) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `architecture` varchar(100) DEFAULT NULL,
  `core` varchar(100) DEFAULT NULL,
  `thread` varchar(100) DEFAULT NULL,
  `basic_rate` varchar(100) DEFAULT NULL,
  `cache` varchar(100) DEFAULT NULL,
  `PCle` varchar(100) DEFAULT NULL,
  `graphics_card` varchar(100) DEFAULT NULL,
  `RAM_support` varchar(100) DEFAULT NULL,
  `socket` varchar(100) DEFAULT NULL,
  `heatsink_included` varchar(100) DEFAULT NULL,
  `RAM_numbers` int(10) DEFAULT NULL,
  `electric_used` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu`
--

LOCK TABLES `cpu` WRITE;
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` VALUES ('CPU00001','i3-10105F','14nm','4','8','3.7GHz (Up to 4.4GHz)','6MB','3.0','','2666MHz','LGA1200',NULL,2,'65W'),('CPU00002','100-100000457BOX','TSMC 7nm FinFET','6','12','3.6GHz (Up to 4.2GHz)','- L1: 384KB\n- L2: 3MB\n- L3: 16MB','3.0',NULL,'DDR4 Up to 3200MHz','AM4','Wraith Stealth',NULL,'45W'),('CPU00003','100-100000148','7nm FinFET','4','8','3.8GHz (Up to 4.0GHz)','- L1: 256KB\n- L2: 2MB\n- L3: 4MB','3.0','Radeon Graphics','DDR4 Up to 3200MHz','AM4','Wraith Stealth',NULL,'45-65W'),('CPU00004','i5-12400F','Intel 7','- 6 Performance-cores\n- 0 Efficient-cores','12','Performance-cores: 2.5GHz (Up to 4.4GHz)','18MB','5.0 và 4.0',NULL,'- Lên đến 4800MHz với DDR5\n- Lên đến 3200MHz với DDR4','LGA1700',NULL,2,'65W (Maximum 117W) '),('CPU00005','100-100000593WOF','5nm FinFET','6','12','4.7GHz (Up to 5.3GHz)','- L1:384KB\n- L2: 6MB\n- L3: 32MB','4.0','AMD Radeon Graphics (400 MHz-2200 MHz)','DDR5 Up to 5200MHz','AM5',NULL,NULL,'105W'),('CPU00006','100-100000063WOF','TSMC 7nm FinFET','8','16','3.8GHz (Up to 4.7GHz)','- L2: 4MB\n- L3: 32MB','4.0',NULL,'DDR4 Up to 3200MHz','AM4',NULL,NULL,'105W'),('CPU00007','i7-12700','Intel 7','- 8 Performance-cores\n- 4 Efficient-cores','20','- Performance-cores: 2.1GHz (Up to 4.9GHz)\n- Efficient-cores: 1.6GHz (Up to 3.6GHz)','25MB','5.0 và 4.0','Intel UHD 770 Graphics','- Lên đến 4800MHz với DDR5\n- Lên đến 3200MHz với DDR4','LGA1700',NULL,2,'65W (Max 180W)');
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hdd_harddrive`
--

DROP TABLE IF EXISTS `hdd_harddrive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hdd_harddrive` (
  `code` varchar(100) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `communication_standards` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `capacity` varchar(100) DEFAULT NULL,
  `cache` varchar(100) DEFAULT NULL,
  `rpm` varchar(100) DEFAULT NULL,
  `read_speed` varchar(100) DEFAULT NULL,
  `write_speed` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hdd_harddrive`
--

LOCK TABLES `hdd_harddrive` WRITE;
/*!40000 ALTER TABLE `hdd_harddrive` DISABLE KEYS */;
INSERT INTO `hdd_harddrive` VALUES ('HDD00001','WD10EZEX','Sata III','3.5 inch','1 TB','64MB','7200','~100 MB/s','~ 100MB/s'),('HDD00002','BarraCuda ST1000DM010','Sata III','3.5 inch','1 TB','64 MB','7200','~ 210 MB/s','~ 210 MB/s'),('HDD00003','WD22PURZ','Sata III','3.5 inch','2 TB','256MB','5400','~100 MB/s','~100 MB/s');
/*!40000 ALTER TABLE `hdd_harddrive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainboard`
--

DROP TABLE IF EXISTS `mainboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mainboard` (
  `code` varchar(100) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `cpu_support` longtext,
  `chipset` varchar(100) DEFAULT NULL,
  `ram_support` longtext,
  `expansion_slot` longtext,
  `harddrive_support` longtext,
  `lan_wlan` varchar(100) DEFAULT NULL,
  `audio` varchar(100) DEFAULT NULL,
  `inconnection_port` longtext,
  `rearconnection_port` longtext,
  `design` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainboard`
--

LOCK TABLES `mainboard` WRITE;
/*!40000 ALTER TABLE `mainboard` DISABLE KEYS */;
INSERT INTO `mainboard` VALUES ('MAIN00001','A320M-K','AMD Socket AM4 dành cho AMD Ryzen thế hệ thứ 1/ 2/ AMD Ryzen thế hệ thứ 1 và thứ 2 với đồ họa tích hợp Radeon Vega Graphics/ A-series thế hệ thứ 7 / Athlon với card đồ họa Radeon Vega/ Athlon X4','AMD A320','2 x DDR4 3200/ 2000/ 2933/ 2800/ 2666/ 2400/ 2133 MHz (Max 32GB)','- 1 x PCIe 3.0/ 2.0 x16 (x16 mode)\n- 2 x PCIe 2.0 x1','- 4 x SATA 6Gb/s\n- 1 x M.2 2242/2260/2280 (SATA & PCIE 3.0 x 4 )','Realtek® RTL8111H','Realtek ALC887/897 7.1','- 1 x Đầu nối USB 3.1 Gen1 (5Gbps)\n- 2 x Đầu cắm USB 2.0\n- 1 x COM Port\n- 4 x SATA 6Gb/s\n- 1 x CPU Fan (1 x 4-pin) \n- 1 x Chassic Fan (1 x 4-pin) \n- 1 x Đầu ra S/PDIF\n- 1 x 24-pin EATX Power\n- 1 x 8-pin ATX 12V Power\n- 1 x M.2 2242/2260/2280\n- 1 x Đầu cắm AAFP\n- 1 x Clear CMOS jumper\n- 1 x System panel\n- 1 x Đầu cắm loa','- 1 x PS/2 chuột, bàn phím\n- 1 x D-Sub\n- 1 x HDMI\n- 1 x RJ45\n- 4 x USB 3.2 Gen 1 Type-A\n- 2 x USB 2.0\n- 3 x Audio jack','mATX (226 x 211 mm)'),('MAIN00002','H610M-HDVM.2','- Intel Core 12th\n- Socket LGA1700','Intel H610','2 x DDR4 up to 3200 MHz (Maximum 64GB)','- 1 x PCIe 4.0 x16\n- 1 x PCIe 3.0 x1\n- 1 x M.2 2230 WiFi','- 1 x Ultra M.2 2260/ 2280 PCIe Gen3 x4/ SATA 3\n- 4 x SATA 3 6 Gb/s\n- Support Raid 0, 1, 5, 10.','LAN: Gigabit LAN 10/100/1000 Mb/s','Realtek ALC897 Audio Codec','Fan and Cooling:\n- 1 x CPU Fan Connector (4-pin)\n- 1 x CPU/Water Pump Fan Connector (4-pin)\n- 2 x Chassis/Water Pump Fan Connectors (4-pin)\nPower:\n- 1 x 24 pin ATX Power Connector\n- 1 x 8 pin 12V Power Connector\nStorage:\n- 1 x M.2\n- 4 x SATA 3 6Gbps\nUSB:\n- 2 x USB 2.0 Headers\n- 1 x USB 3.2 Gen1 Headers\nMiscellaneous:\n- 1 x COM Port Header\n- 1 x SPI TPM Header\n- 1 x Chassis Intrusion and Speaker Header\n- 1 x Front Panel Audio Connector','- 2 x Antenna Mounting Points\n- 1 x PS/2 bàn phím và chuột\n- 1 x HDMI\n- 1 x DisplayPort 1.4\n- 1 x D-Sub Port\n- 2 x USB 3.2 Gen1 Type-A Port\n- 2 x USB 2.0\n- 1 x LAN 2.5G\n- HD Audio jack','mATX (244 x 201 mm)'),('MAIN00003','PRO-B660M-A-DDR4','- Intel Core 12th\n- Socket LGA1700','B660','4 x DDR4 Up to 4800+ MHz (Maximum 128GB)','- 1 x PCIe 4.0 x16 (x16 mode)\n- 1 x PCIe 3.0 x4\n- 1 x PCIe 3.0 x1','- 1 x M.2 2242/ 2260/ 2280 PCIe 4.0 x4\n- 1 x M.2 2242/ 2260/ 2280 PCIe 4.0 x4/ SATA\n- 4 x SATA III 6Gbps\n- Support Raid 0, 1, 5, 10','LAN: Intel 2.5Gb Ethernet','Realtek 7.1 Surround','Fan and Cooling:\n- 1 x 4-pin CPU Fan header\n- 1 x 4-pin water-pump fan\n- 2 x 4-pin system Fan\nPower:\n- 1 x 24-pin Main Power\n- 1 x 8-pin +12V Power\n- 1 x 4-pin +12V Power\nStorage:\n- 2 x M.2 slot\n- 4 x SATA 6Gb/s\nUSB:\n- 1 x USB 3.2 Gen 1 Type-C\n- 1 x USB 3.2 Gen 1 Type-A\n- 2 x USB 2.0 header\nMiscellaneous:\n- 1 x 4-pin RGB LED connector\n- 2 x 3-pin RAINBOW LED connectors\n- 4 x EZ Debug LED\n- 1 x Front panel audio connector\n- 2 x System panel connectors\n- 1 x Chassis Intrusion connector\n- 1 x Clear CMOS jumper\n- 1 x TPM module connector\n- 1 x Tuning controller connector\n- 1 x TBT connector (Supports RTD3)\n- 1 x Serial port','- 1 x PS/2 Keyboard / Mouse\n- 2 x USB 3.2 Gen 2 Type-A\n- 2 x USB 3.2 Gen 1 Type-A \n- 2 x USB 2.0\n- 2 x DisplayPort\n- 2 x HDMI\n- 1 x LAN 2.5G\n- 3 x Audio jack','mATX (244 x 244 mm)');
/*!40000 ALTER TABLE `mainboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `idproduct` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_code` varchar(100) DEFAULT NULL,
  `product_image01` varchar(100) DEFAULT NULL,
  `product_image02` varchar(100) DEFAULT NULL,
  `product_image03` varchar(100) DEFAULT NULL,
  `product_image04` varchar(100) DEFAULT NULL,
  `product_old_price` varchar(100) DEFAULT NULL,
  `product_present_price` varchar(100) DEFAULT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `product_warranty` varchar(100) DEFAULT NULL,
  `product_brand` varchar(100) DEFAULT NULL,
  `product_description` longtext,
  PRIMARY KEY (`idproduct`),
  UNIQUE KEY `product_code_UNIQUE` (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'CPU Intel Core i3-10105F','CPU00001','images/cpu1.png','images/cpu2.png','images/cpu3.png',NULL,'2990000','2150000','cpu','36 tháng','Intel','CPU Intel Core i3-10105F với 4 nhân 8 luồng giúp nâng cao hiệu năng xử lý đa nguồn, giải phóng sức mạnh để tối đa hóa hiệu suất của máy tính.'),(2,'CPU AMD Ryzen 5 5500','CPU00002','images/cpu4.png','images/cpu5.png',NULL,NULL,'4400000','3700000','cpu','36 tháng','AMD','Ryzen 5 5500 cung cấp sức mạnh cho hệ thống máy tính của bạn để đáp ứng các tựa Games đòi hỏi khắt khe về hiệu suất, mang đến cho bạn một trải nghiệm nhập vai cực tốt và chinh phục mọi tác vụ đa luồng như 3D và kết xuất video cũng như lập trình phần mềm.'),(3,'CPU AMD Ryzen 3 4350G MPK','CPU00003','images/cpu6.png','images/cpu7.png','images/cpu8.png',NULL,'3790000','3050000','cpu','36 tháng','AMD','CPU AMD Ryzen 3 Pro 4350G MPK với 4 nhân 8 luồng giúp nâng cao hiệu năng xử lý đa nguồn, giải phóng sức mạnh để tối đa hóa hiệu suất của máy tính.'),(4,'CPU Intel Core i5-12400F','CPU00004','images/cpu9.png','images/cpu10.png','images/cpu11.png',NULL,'6390000','4690000','cpu','36 tháng','Intel','CPU Intel Core i5-12400F thiết kế 6 nhân 12 luồng với xung nhịp lên đến 4.4GHz tạo nên khả năng đa nhiệm với tốc độ xử lý vượt bật các trò chơi cao cấp và các ứng dụng đòi hỏi khắt khe nhất.'),(5,'CPU AMD Ryzen 5 7600X','CPU00005','images/cpu12.png',NULL,NULL,NULL,'9690000','8200000','cpu','36 tháng','AMD','Được thiết kế với kiến trúc \"Zen 4\" là thiết kế thế hệ mới với tiến trình 5nm FinFET. Được trang bị những cải tiến về thiết kế từ đầu đến cuối, Zen 4 của Ryzen 5 7600X mang đến hiệu suất cực cao, giúp tiết kiệm năng lượng và giảm độ trễ, đó là cốt lõi mà bộ vi xử lý muốn mang đến để bạn có được trải nghiệm chơi game hoàn hảo nhất.'),(6,'CPU AMD Ryzen 7 5800X','CPU00006','images/cpu13.png','images/cpu14.png',NULL,NULL,'9500000','8200000','cpu','36 tháng','AMD','Với khả năng tính toán mạnh mẽ của tám nhân Zen 3 và đồ họa tích hợp nhanh nhất thế giới, CPU AMD Ryzen 7 5800X sẽ đáp ứng mọi yêu cầu về xử lý đồ họa như Games, thiết kế kiến trúc, lập trình, giả lập hoặc nghiên cứu khoa học. Được sản xuất theo quy trình công nghệ 7nm tiên tiến, Ryzen 7 5800X đạt tần số cao, mang lại hiệu quả tiết kiệm điện năng.'),(7,'CPU Intel Core i7-12700','CPU00007','images/cpu15.png','images/cpu16.png','images/cpu17.png',NULL,'10490000','9050000','cpu','36 tháng','Intel','CPU Intel Core i7-12700 thiết kế kết hợp Performance-cores và Efficient-cores tạo nên khả năng đa nhiệm với tốc độ xử lý vượt bật các trò chơi cao cấp và các ứng dụng đòi hỏi khắt khe nhất.'),(8,'Mainboard PC ASUS PRIME A320M-K','MAIN00001','images/main1.png','images/main2.png','images/main3.png',NULL,'1550000','1250000','mainboard','3 năm','Asus','Dòng bo mạch chủ PRIME A320 được thiết kế với 5X Protection III hàng đầu trong ngành, sử dụng các thành phần tốt nhất, thiết kế mạch tuyệt vời và các tiêu chuẩn chính xác để đảm bảo chất lượng và độ bền lâu dài cho bo mạch chủ của bạn. Điều đó có nghĩa là sự bảo vệ và ổn định đặc biệt cho công trình của bạn - nhờ vào kinh nghiệm hàng chục năm kỹ thuật của thương hiệu bo mạch chủ hàng đầu thế giới.'),(9,'Mainboard PC ASRock H610M-HDV/M.2','MAIN00002','images/main4.png','images/main5.png','images/main6.png',NULL,'2690000','1990000','mainboard','3 năm','ASRock','Bo mạch chủ ASRock H610M-HDV/M.2 được thiết kế và thử nghiệm với các tiêu chuẩn khắc khe để mang lại hiệu suất vững chắc và ổn định. Được thiết kế từ các thành phần cao cấp, nhằm đảm bảo việc xây dựng dễ dàng hơn, khả năng tương thích tốt nhất và tính thẩm mỹ bổ sung từ các thành phần đến vỏ máy.'),(10,'Mainboard PC MSI PRO B660M-A DDR4','MAIN00003','images/main7.png','images/main8.png','images/main9.png',NULL,'4890000','3390000','mainboard','3 năm','MSI','Bo mạch chủ PRO Series giúp người dùng làm việc thông minh hơn bằng cách mang lại trải nghiệm hiệu quả và năng suất ổn định, với linh kiện lắp ráp chất lượng cao, bo mạch chủ PRO Series không chỉ cung cấp quy trình làm việc chuyên nghiệp được tối ưu hóa mà còn bảo vệ để ít gặp sự cố cùng kéo dài tuổi thọ.'),(11,'VGA Asus TUF Gaming GeForce RTX 3060 V2 OC Edition 12GB GDDR6 TUF-RTX3060-O12G-V2-GAMING','VGA00001','images/vga1.png','images/vga2.png','images/vga3.png',NULL,'21000000','9790000','vga','3 năm','Asus','TUF GAMING GeForce RTX 3060 đã được rút gọn và tích hợp lại để cung cấp sức mạnh và khả năng làm mát mạnh mẽ hơn. Bên dưới là một tấm tản nhiệt dày giúp giữ nhiệt trong tầm kiểm soát. Được chế tạo bằng cách sử dụng công nghệ Auto-Extreme và trang bị một lỗ thông hơi ở mặt sau làm cho TUF trở nên hiệu quả hơn.'),(12,'VGA ASRock Intel Arc A380 Challenger ITX 6GB OC GDDR6 A380-CLI-6GO','VGA00002','images/vga4.png','images/vga5.png','images/vga6.png',NULL,'6250000','4490000','vga','3 năm','ASRock','VGA ASRock Intel Arc A380 Challenger ITX 6GB OC GDDR6 được xây dựng trên tiến trình 6nm của TSMC với kiến trúc đồ họa Xe HPG hỗ trợ xung nhịp đến 2.45GHz và khả năng Ray Tracing mạnh mẽ để nâng cao trải nghiệm chơi game và sáng tạo của bạn.'),(13,'VGA MSI GeForce RTX 3090 Ti GAMING X TRIO 24GB GDDR6X RTX-3090-Ti-GAMING-X-TRIO-24G','VGA00003','images/vga7.png','images/vga8.png','images/vga9.png',NULL,'45000000','41700000','vga','3 năm','MSI','VGA RTX 3090 Ti GAMING X TRIO 24G mang lại hiệu suất, hiệu quả tiếng ồn thấp và tính thẩm mỹ cao mà các game thủ chuyên nghiệp đã công nhận và tin tưởng. Bạn có thể thưởng thức tất cả các trò chơi yêu thích của mình một cách mạnh mẽ nhưng luôn hoạt động mát mẻ và không gây tiếng ồn.'),(14,'Nguồn máy tính Antec ATOM V550 550W ATOMV550','CP00001','images/cp1.png','images/cp2.png','images/cp3.png',NULL,'790000','590000','computer_power','3 năm','Antec','ATOM V550 được chế tạo và thử nghiệm theo các tiêu chuẩn nghiêm ngặt để lắp đặt không gặp sự cố và vận hành trơn tru.'),(15,'Nguồn máy tính Deepcool PF450 450W 80 Plus R-PF450D-HA0B-EU','CP00002','images/cp4.png','images/cp5.png','images/cp6.png',NULL,'1050000','750000','computer_power','3 năm','Deepcool','Nguồn máy tính Deepcool PF450 đạt chứng nhận 80 Plus tiêu chuẩn 230V EU, đảm bảo hiệu suất lên đến 85% và tỏa nhiệt ít hơn cùng tiêu tốn năng lượng thấp hơn trong điều kiện tải thông thường là 50%.'),(16,'Nguồn máy tính Corsair CV450 450W 80 Plus Bronze CP-9020209-NA','CP00003','images/cp7.png','images/cp8.png','images/cp9.png',NULL,'1490000','950000','computer_power','3 năm','Corsair','Giống như tất cả các bộ nguồn CORSAIR, CV Series thực hiện đúng những gì nó nói: cung cấp nguồn điện liên tục ở mức công suất tối đa, bất kể bạn chọn biến thể công suất nào.'),(17,'Nguồn máy tính MSI MAG A650BN 650W 80 Plus Bronze MAG-A650BN','CP00004','images/cp10.png','images/cp11.png','images/cp12.png',NULL,'1690000','1350000','computer_power','5 năm','MSI','Nguồn máy tính MSI MAG A650BN đạt chứng nhận hiệu suất được 80 PLUS Bronze và thiết kế quạt thông minh cho phép giảm thiểu hoặc không phát hiện ra tiếng ồn của quạt trong quá trình hoạt động thường xuyên.'),(18,'Fan Case XIGMATEK X20F RGB Fixed 120mm Black EN45457','RAD00001','images/rad1.png','images/rad2.png',NULL,NULL,'150000','90000','radiator','6 tháng','XIGMATEK','Fan Case XIGMATEK X20F giúp hệ thống máy tính của bạn tản nhiệt cực tốt đồng thời tăng thêm vẻ đẹp với hệ thống chiếu sáng led RGB nhiều màu sắc. Hệ thống Led RGB Fixed cố định màu sắc, không cần Driver điều khiển, bạn chỉ việc cắm quạt vào chân 4pin trên main là đã có thể sử dụng.'),(19,'Tản nhiệt khí ID-Cooling SE-214-XT ID-CPU-SE-214-XT (Hỗ trợ socket 1700)','RAD00002','images/rad3.png','images/rad4.png','images/rad5.png','images/rad6.png','499000','350000','radiator','2 năm','ID-Cooling','ID Cooling SE-214-XT là bộ tản nhiệt CPU hiệu suất với 4 ống đồng dẫn nhiệt chuyên dụng được thiết kế quạt hỗ trợ PWM cùng hiệu ứng đèn nền RGB giúp nó trở thành một trong những bộ tản nhiệt tốt nhất và là giải pháp tuyệt vời cho bộ máy của bạn'),(20,'Tản nhiệt nước AIO Corsair H55 RGB CW-9060052-WW','RAD00003','images/rad7.png','images/rad8.png','images/rad9.png',NULL,'2490000','1650000','radiator','3 năm','Corsair','Làm mát và chiếu sáng kết hợp trong một tạo cho bạn sắc màu ấn tượng. H55 RGP với quạt 120mm mang đến cho máy bạn luồng khí mát mẻ cùng đèn nền RGB sống động'),(21,'Ram PC Kingston 4GB 2666MHz DDR4 KVR26N19S6/4','RAM00001','images/ram1.png','images/ram2.png',NULL,NULL,'580000','460000','ram','3 năm','Kingston (USA)','Ram PC Kingston DDR4 4GB Bus 2666MHz 1.2v phá vỡ mọi giới hạn tốc độ của DDR4 khỏi tình trạng bị thắt cổ chai. Cải thiện hiệu suất máy tính, tiết kiệm năng lượng hơn và dung lượng lớn hơn rất nhiều, hỗ trợ tất cả các dòng vi xử lý thế hệ mới nhất.'),(22,'Ram Laptop Corsair Vengeance DDR4 4GB 2400MHz 1.2v CMSX4GX4M1A2400C16','RAM00002','images/ram3.png','images/ram4.png','images/ram5.png',NULL,'670000','480000','ram','3 năm','Corsair','Bộ nâng cấp Ram Corsair Vengeance dành cho Laptop là sản phẩm cao cấp được thiết kế cho Notebook và Laptop. Ram Corsair Vengeace được làm từ các chip nhớ DRAM hiệu năng cao đã được chọn lọc và đáng tin cậy. Ram Corsair 8GB Bus 2400 Vengeance với độ trễ thấp mang lại một tốc độ đáp ứng gần như tức thì cho mọi ứng dụng của bạn.'),(23,'Ram Laptop Crucial DDR4 4GB 2666MHz 1.2v CT4G4SFS8266','RAM00003','images/ram6.png',NULL,NULL,NULL,'630000','480000','ram','3 năm','Crucial (USA)','Ram Laptop Crucial DDR4 4GB Bus 2666 phá vỡ mọi giới hạn tốc độ của DDR3 khi bị thắt cổ chai. Cải thiện hiệu suất máy tính, tiết kiệm năng lượng hơn và dung lượng lớn hơn rất nhiều, hỗ trợ tất cả các dòng vi xử lý thế hệ mới nhất - Xung bus cực cao lên đến 2666 MT/s. - Khả năng tăng băng thông lên đến 30%. - Giảm tiêu thụ năng lượng lên đến 40% và kéo dài tuổi thọ pin. - Tăng tốc độ truy cập để cải thiện thông lượng dữ liệu tuần tự. - Tối ưu hóa cho các bộ xử lý và các nền tảng thế hệ mới nhất. - Dung lượng module lên đến 32GB. - Thời hạn bảo hành lên đến 36 tháng.'),(24,'Ram Laptop G.Skill Ripjaws DDR3L 4GB 1600MHz 1.35v F3-1600C11S-4GRSL','RAM00004','images/ram7.png','images/ram8.png',NULL,NULL,'650000','500000','ram','3 năm','G.Skill','Hãy cảm nhận tốc độ turbo với G.SKILL Ripjaws DDR3L SO-DIMM! Được thiết kế cho các dòng máy Laptop Gaming và các máy tính với kích thước nhỏ, Ram Laptop G.SKILL Ripjaws DDR3L SO-DIMM luôn đáp ứng tất cả các nhu cầu chơi game, lập trình, chỉnh sửa đa phương tiện hay chỉ lướt web, bạn sẽ cảm thấy tốc độ được cải thiện ngay lập tức khi dùng Ram Laptop G.SKILL Ripjaws DDR3L SO-DIMM, đây là giải pháp nâng cấp hệ thống cực kỳ lý tưởng, cung cấp độ truyền dữ liệu nhanh hơn và tiết kiệm năng lượng hơn.'),(25,'Ram PC Server Transcend 8GB 2666MHz DDR4 ECC-DIMM 1Rx8 CL19 TS1GLH72V6BL','RAM00005','images/ram9.png',NULL,NULL,NULL,'1250000','750000','ram','3 năm','Transcend','Các hệ thống máy chủ hiện nay sử dụng các ứng dụng ngày càng đòi hỏi hiệu năng mạnh hơn và do đó đòi hỏi bộ nhớ chất lượng cao hơn. Ram PC Server Transcend DDR4 ECC Long-DIMM là giải pháp nâng cấp hệ thống cực tốt cho hệ thống máy chủ từ các hệ thống điện toán đám mây, ảo hóa đến HPC và các hệ thống DataCenter, các máy chủ này cần sử dụng nhiều bộ nhớ đòi hỏi dung lượng và mức hiệu suất cao hơn so với công nghệ DDR3.\nRam PC Server Transcend DDR4 ECC Long-DIMM với hiệu suất nhanh gấp đôi, dung lượng gấp đôi, tiết kiệm năng lượng hơn 40% so với DDR3!'),(26,'SSD MSI SPATIUM S270 2.5-Inch SATA III 120GB SPATIUM-S270-120GB','SSD00001','images/ssd1.png','images/ssd2.png','images/ssd3.png',NULL,'550000','350000','ssd_harddrive','3 năm','MSI','Ổ cứng SSD MSI SPATIUM S270 2.5-Inch SATA III đạt hiệu suất đọc ghi đáng kinh ngạc, giúp bạn hoàn thành công việc hàng ngày của bạn nhanh chóng với tốc độ đọc lên đến 500MB/s và ghi 450Mb/s.'),(27,'SSD Lexar NS100 2.5-Inch SATA III 128GB LNS100-128RB','SSD00002','images/ssd4.png','images/ssd5.png','images/ssd6.png','images/ssd7.png','590000','380000','ssd_harddrive','3 năm','Lexar','Cải thiện hiệu năng hệ thống máy tính của bạn với ổ cứng SSD Lexar® NS100 2.5 inche SATA III (6Gb/s) sẽ giúp máy tính của bạn khởi động nhanh hơn, thời gian tải ứng dụng và chuyển dữ liệu nhanh hơn, tối ưu hóa hiệu năng tổng thể của máy tính với tốc độ đọc lên tới 520MB/s, tiết kiệm cho bạn rất nhiều thời gian. SSD Lexar NS100 hoạt động mát mẻ, yên tĩnh và ít tiêu thụ điện năng hơn ổ cứng HDD rất nhiều.'),(28,'SSD Kingston A400 2.5-Inch SATA III 240GB SA400S37/240G','SSD00003','images/ssd8.png','images/ssd9.png','images/ssd10.png','images/ssd11.png','890000','590000','ssd_harddrive','3 năm','Kingston (USA)','Ổ cứng SSD Kingston A400 Series của Kingston giúp cải thiện tối đa hiệu năng của hệ thống hiện tại với thời gian khởi động, load các chương trình và dữ liệu được giảm tối đa. Bộ điều khiển Controller mới nhất cho tốc độ đọc và ghi lên đến 500MB/s và 450MB/s (bản 480GB), nhanh hơn gấp 10 lần so với ổ cứng HDD truyền thống, đáp ứng tất cả các nhu cầu của bạn. Ổ cứng SSD Kingston A400 hoạt động bằng bộ nhớ Flash, không có các bộ phận chuyển động cơ quay giúp tăng độ bền, hoạt động mát mẻ và không hề tạo ra bất kì tiếng động nào. Và đặc biệt là khả năng chống Sock cực tốt, rất lý tưởng cho máy tính xách tay và các thiết bị máy tính di động khác. Ổ cứng SSD Kingston A400 có nhiều dung lượng từ 120GB-480GB để cung cấp cho bạn tất cả không gian cần thiết cho các ứng dụng, video, hình ảnh và các tài liệu quan trọng khác. Ổ cứng SSD Kingston A400 được thiết kế để sử dụng trong máy tính để bàn và máy tính xách tay phổ thông, không dành cho các hệ thống Server.'),(29,'SSD Crucial BX500 3D NAND 2.5-Inch SATA III 240GB CT240BX500SSD1','SSD00004','images/ssd12.png','images/ssd13.png','images/ssd14.png',NULL,'950000','650000','ssd_harddrive','3 năm','Crucial (Micron USA)','Ổ cứng SSD Crucial BX500 3D NAND Sata III với công nghệ tiên tiến bậc nhất giúp tăng tốc độ, độ bền, và hiệu năng tổng thể hệ thống của bạn. Máy tính của bạn sẽ khởi động và load các chương trình cực nặng chỉ trong vài giây khi được trang bị công nghệ 3D flash NAND mới nhất với sự thành công đã được chứng minh của những dòng SSD BX-series trước đó. Ổ cứng SSD Crucial BX500 3D NAND Sata III không chỉ làm tăng hiệu năng hệ thống mà còn giúp bạn lưu trữ tất cả mọi dữ liệu quan trọng. Micron - Chất lượng bậc nhất thế giới.'),(30,'SSD Samsung 870 Evo 250GB 2.5-Inch SATA III MZ-77E250BW','SSD00005','images/ssd15.png','images/ssd16.png','images/ssd17.png','images/ssd18.png','1490000','990000','ssd_harddrive','5 năm','Samsung','Mẫu mới nhất của dòng SSD bán chạy nhất thế giới cuối cùng cũng đã ra mắt. SSD Samsung 870 EVO được thiết kế và sản xuất hoàn toàn dựa trên những công nghệ SSD tiên tiến nhất của Samsung, mang đến hiệu suất, độ tin cậy và khả năng tương thích cực kỳ cao, đáp ứng mọi nhu cầu của bất kỳ đối tượng người dùng nào.'),(31,'SSD Gigabyte Aorus 2TB PCIe Gen4 x4 NVMe M.2 GP-ASM2NE6200TTTD','SSD00006','images/ssd19.png','images/ssd20.png','images/ssd21.png','images/ssd22.png','6690000','4440000','ssd_harddrive','3 năm','Gigabyte','Được trang bị chuẩn giao tiếp M.2 PCIe Gen4 x4 mới nhất, ổ cứng Gigabyte Aorus PCIe Gen4 x4 NVMe M.2 mang lại tốc độ cực nhanh lên đến 5000MB/s đọc tuần tự và 4400MB/s ghi tuần tự. Ngoài ra, bộ tản nhiệt giữ cho SSD luôn trong điều kiện hoạt động tốt nhất và được trang trí thêm vẻ ngoài màu vàng Gold cực kỳ nổi bật và sang trọng.'),(32,'SSD Western Digital Blue SN570 PCIe Gen3 x4 NVMe M.2 250GB WDS250G3B0C','SSD00007','images/ssd23.png','images/ssd24.png','images/ssd25.png',NULL,'1390000','950000','ssd_harddrive','5 năm','Western Digital','Với tốc độ lên đến 3500 MB/s, ổ cứng SSD Western Digital Blue SN570 PCIe Gen3 x4 NVMe M.2 đươc trang bị những công nghệ và nền tảng mới nhất kèm theo công nghệ 3D-NAND 96-Layer mang đến tốc độ gấp 4 lần so với SSD SATA III để máy tính của bạn có thể khởi động nhanh hơn, làm việc hiệu quả hơn và sử dụng pin lâu hơn. Hãy để ổ cứng SSD WD SN570 giúp bạn làm nhiều việc hơn, nhanh hơn và tiết kiệm thật nhiều thời gian.'),(33,'HDD WD Blue 1TB 3.5 inch SATA III 64MB Cache 7200RPM WD10EZEX','HDD00001','images/hdd1.png','images/hdd2.png','images/hdd3.png','images/hdd4.png','1150000','900000','hdd_harddrive','2 năm','Western Digital','Tăng cường khả năng lưu trữ cho PC của bạn với ổ Western Blue, thương hiệu được thiết kế hoàn hảo dành cho PC với các ứng dụng văn phòng và web.'),(34,'HDD Seagate BarraCuda 1TB 3.5 inch SATA III 64MB Cache 7200RPM ST1000DM010','HDD00002','images/hdd5.png','images/hdd6.png','images/hdd7.png','images/hdd8.png','1200000','920000','hdd_harddrive','2 năm','Seagate (USA)','Dòng ổ cứng HDD BarraCuda của Seagate luôn dẫn đầu trong ngành công nghiệp lưu trữ cho máy tính để bàn và máy tính Laptop. Với dung lượng lên đến 8TB đối với chuẩn 3.5\", dòng sản phẩm BarraCuda là một lựa chọn tuyệt vời cho việc nâng cấp máy tính của bạn. BarraCuda kết hợp công nghệ lưu trữ hàng đầu cho hiệu năng và thời gian tải nhanh khi chơi game hoặc thực hiện tải công việc nặng nề. Ổ cứng HDD Seagate BarraCuda 3.5-Inch cũng được hỗ trợ bảo hành 2 năm tại Seagate Việt Nam.'),(35,'HDD WD Purple 2TB 3.5 inch SATA III 256MB Cache 5400RPM WD22PURZ','HDD00003','images/hdd9.png','images/hdd10.png','images/hdd11.png','images/hdd12.png','1750000','1550000','hdd_harddrive','3 năm','Western Digital','Được xây dựng cho các hệ thống bảo mật hoạt động 24/7 với độ phân giải cao. Tốc độ tải công việc được hỗ trợ lên tới 180 TB / năm 1 và hỗ trợ tới 64 camera, các ổ WD Purple được tối ưu hóa cho các hệ thống giám sát. Các ổ WD Purple 8TB, 10TB & 12TB được thiết kế để hỗ trợ phân tích Deep Learning trong các NVR có khả năng AI và có xếp hạng khối lượng công việc nâng cao lên tới 360TB / năm.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radiator`
--

DROP TABLE IF EXISTS `radiator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `radiator` (
  `code` varchar(100) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `radiator` varchar(100) DEFAULT NULL,
  `backlight` varchar(100) DEFAULT NULL,
  `pwm` varchar(100) DEFAULT NULL,
  `noise_levels` varchar(100) DEFAULT NULL,
  `fan_speed` varchar(100) DEFAULT NULL,
  `fan_number` varchar(100) DEFAULT NULL,
  `fan_size` varchar(100) DEFAULT NULL,
  `fan_bearing` varchar(100) DEFAULT NULL,
  `airflow` varchar(100) DEFAULT NULL,
  `heat_dissipation_material` longtext,
  `compatible_devices` longtext,
  `radiator_size` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radiator`
--

LOCK TABLES `radiator` WRITE;
/*!40000 ALTER TABLE `radiator` DISABLE KEYS */;
INSERT INTO `radiator` VALUES ('RAD00001','X20F',NULL,'RGB Fixed',NULL,'26 dBA','525 - 1250 RPM',NULL,'120mm x 25mm',NULL,NULL,NULL,NULL,NULL),('RAD00002','ID-CPU-SE-214-XT','Khí','RGB','Có','16-26.6dB','500±200~1500 RPM ±10%','1','500±200~1500 RPM ±10%','Hydro Bearing','64.8 CFM','- 4 Ống đồng\n- Lá nhôm','Intel LGA1700/ 1200/ 1151/ 1150/ 1155/ 1156 AMD AM4','124 x 72 x 150mm'),('RAD00003','CW-9060052-WW','All-In-One','A-RGB','Có',NULL,NULL,'1','120mm',NULL,NULL,'- Mặt tiếp xúc bằng đồng\n- Két nước bằng nhôm','Intel 115x/1200, Intel 2011/2066, AMD AM4',NULL);
/*!40000 ALTER TABLE `radiator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ram`
--

DROP TABLE IF EXISTS `ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ram` (
  `code` varchar(100) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `ram_standard` varchar(100) DEFAULT NULL,
  `bus_ram` varchar(100) DEFAULT NULL,
  `capacity` varchar(100) DEFAULT NULL,
  `voltage` varchar(100) DEFAULT NULL,
  `CAS_latency` varchar(100) DEFAULT NULL,
  `overclock` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ram`
--

LOCK TABLES `ram` WRITE;
/*!40000 ALTER TABLE `ram` DISABLE KEYS */;
INSERT INTO `ram` VALUES ('RAM00001','KVR26N19S6/4','DDR4','2666 MHz','4GB (1x4GB)','1.2v','CL19','None'),('RAM00002','CMSX4GX4M1A2400C16','DDR4','2400 MHz','4GB (1x4GB)','1.2v','','None'),('RAM00003','CT4G4SFS8266','DDR4 SoDIMM','2666 MHz','4GB (1x4GB)','1.2v','CL19','None'),('RAM00004','F3-1600C111S-4GRSL','DDR3L SODIMM (Hỗ trợ DDR3 1.5v 1600MHz)','1600 MHz','4GB (1x4GB)','1.35v','CL 11-11-11-28','Yes'),('RAM00005','TS1GLH72V6BL','DDR4 ECC Long-DIMM','DDR4 ECC Long-DIMM','8 GB (1x8GB)','1.2v','CL19','None');
/*!40000 ALTER TABLE `ram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssd_harddrive`
--

DROP TABLE IF EXISTS `ssd_harddrive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ssd_harddrive` (
  `code` varchar(100) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `communication_standards` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `capacity` varchar(100) DEFAULT NULL,
  `read_speed` varchar(100) DEFAULT NULL,
  `write_speed` varchar(100) DEFAULT NULL,
  `NAND_flash` varchar(100) DEFAULT NULL,
  `random_4k` varchar(100) DEFAULT NULL,
  `tbw` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssd_harddrive`
--

LOCK TABLES `ssd_harddrive` WRITE;
/*!40000 ALTER TABLE `ssd_harddrive` DISABLE KEYS */;
INSERT INTO `ssd_harddrive` VALUES ('SSD00001','SPATIUM-S270-120GB','Sata III 6Gbit/s','2.5-Inch','120 GB','500 MB/s','360 MB/s','3D NAND Flash','38K/ 72K IOPS','40 TB'),('SSD00002','LNS100-128RB','Sata III 6Gbit/s','2.5\", 6,8mm','128 GB','520 MB/s','450 MB/s','TLC','60.000 IOPs','64 TB'),('SSD00003','SA400S37/240G','Sata III 6 Gbps','2.5 inch, 6.8 mm','240 GB','500 MB/s','350 MB/s','TLC',NULL,'80 TB'),('SSD00004','BX500 CT240BX500SSD1','Sata III','2.5\"','240 GB','540 MB/s','500 MB/s','Micron 3D-NAND 64 Layer Technology','65.0000 IOPs','80 TB'),('SSD00005','MZ-77E250BW','Sata III 6Gbit/s','2.5\", 6,8mm','250 GB ','560 MB/s','530 MB/s',NULL,'98K IOPS Samsung 512Gbit 128-layer 3D TLC V-NAND','150 TB'),('SSD00006','GP-ASM2NE6200TTTD','PCIe Gen4 x4','M.2 2280','2 TB','5000 MB/s','4400 MB/s','3D TLC TOSHIBA BiCS4','750.000 IOPS','3600 TB '),('SSD00007','WDS250G3B0C','PCIe Gen3 x4','M.2 2280','250 GB','3300 MB/s','1200 MB/s','TLC','210.000 IOPS','150 TB ');
/*!40000 ALTER TABLE `ssd_harddrive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vga`
--

DROP TABLE IF EXISTS `vga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vga` (
  `code` varchar(100) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `graphic_engine` varchar(100) DEFAULT NULL,
  `opengl` varchar(100) DEFAULT NULL,
  `memmory` varchar(100) DEFAULT NULL,
  `bus_standard` varchar(100) DEFAULT NULL,
  `engine_clock` longtext,
  `cuda_core` varchar(100) DEFAULT NULL,
  `memmory_speed` varchar(100) DEFAULT NULL,
  `memmory_interface` varchar(100) DEFAULT NULL,
  `resolution` varchar(100) DEFAULT NULL,
  `max_interface_support` varchar(100) DEFAULT NULL,
  `interface` longtext,
  `recommended_psu` varchar(100) DEFAULT NULL,
  `design` varchar(100) DEFAULT NULL,
  `power_connection` varchar(100) DEFAULT NULL,
  `slot` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vga`
--

LOCK TABLES `vga` WRITE;
/*!40000 ALTER TABLE `vga` DISABLE KEYS */;
INSERT INTO `vga` VALUES ('VGA00001','TUF-RTX3060-O12G-V2-GAMING','NVIDIA GeForce RTX 3060','OpenGL 4.6','12GB GDDR6','PCI Express 4.0','- OC Mode - 1882 MHz (Boost Clock)\n- Gaming Mode - 1852 MHz (Boost Clock)','3584','15 Gbps','192-bit','Digital Max Resolution 7680 x 4320','4','- 3 x DisplayPort 1.4a\n- 2 x HDMI 2.1\n- Hỗ trợ HDCP (2.3)','650W','301 x 143 x 54mm','1 x 8-pin','2.7'),('VGA00002','A380-CLI-6GO','Intel Arc A380','OpenGL 4.6','6GB GDDR6','PCI Express 4.0','Base Clock - 2250 MHz','1024 (8 Xe-core)','15.5 Gbps','96-bit','Digital Max Resolution 7680 x 4320','4','- 3 x DisplayPort 2.0\n- 1 x HDMI 2.0b\n- Hỗ trợ HDCP','500W','190 x 124 x 39mm','1 x 8-pin, slot 2',NULL),('VGA00003','RTX-3090-Ti-GAMING-X-TRIO-24G','NVIDIA GeForce RTX 3090 Ti','OpenGL 4.6','24GB GDDR6X','PCI Express 4.0','Boost: 1920 MHz','10752','21 Gbps','384-bit','Digital Max Resolution 7680 x 4320','4','- 3 x DisplayPort 1.4a\n- 1 x HDMI 2.1 (4K 120Hz)\n- Hỗ trợ HDCP','850W','325 x 140 x 62 mm','1 x 16-pin',NULL);
/*!40000 ALTER TABLE `vga` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-21 21:46:16
