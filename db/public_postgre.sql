/*
Navicat PGSQL Data Transfer

Source Server         : Postgres
Source Server Version : 90303
Source Host           : localhost:5432
Source Database       : jobsearch
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90303
File Encoding         : 65001

Date: 2017-08-29 12:13:39
*/


-- ----------------------------
-- Table structure for aplicationjobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."aplicationjobs";
CREATE TABLE "public"."aplicationjobs" (
"id" int4 NOT NULL,
"job_id" int4,
"employee_id" int4,
"description" text COLLATE "default",
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of aplicationjobs
-- ----------------------------

-- ----------------------------
-- Table structure for ar_internal_metadata
-- ----------------------------
DROP TABLE IF EXISTS "public"."ar_internal_metadata";
CREATE TABLE "public"."ar_internal_metadata" (
"key" varchar COLLATE "default" NOT NULL,
"value" varchar COLLATE "default",
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ar_internal_metadata
-- ----------------------------
INSERT INTO "public"."ar_internal_metadata" VALUES ('environment', 'development', '2017-07-18 20:09:34.287202', '2017-07-18 20:09:34.287202');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS "public"."articles";
CREATE TABLE "public"."articles" (
"id" int4 NOT NULL,
"title" varchar COLLATE "default",
"text" text COLLATE "default",
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL,
"image_file_name" varchar COLLATE "default",
"image_content_type" varchar COLLATE "default",
"image_file_size" int4,
"image_updated_at" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO "public"."articles" VALUES ('74', 'Doloremque quae iure', 'Enim aut eum. Dolorum quis aliquid. Enim alias voluptate neque minus maxime sunt aperiam. Voluptas molestiae deserunt. Dicta delectus cupiditate similique nulla autem.', '2017-07-26 17:21:47.349775', '2017-08-23 17:27:53.32889', 'g1.jpg', 'image/jpeg', '33093', '2017-08-23 17:27:53.151763');
INSERT INTO "public"."articles" VALUES ('75', 'Iusto voluptas eaque', 'Ut amet voluptate vel omnis. Consectetur temporibus voluptatem iste eos aut dolorem in. Ut aut et nam et.', '2017-07-26 17:21:47.450756', '2017-08-23 17:30:45.133469', 'g9.jpg', 'image/jpeg', '35439', '2017-08-23 17:30:44.96335');
INSERT INTO "public"."articles" VALUES ('76', 'Beatae blanditiis et', 'Vero ea dolorum. Qui cupiditate eos. Odit et debitis quos facilis perferendis.', '2017-07-26 17:21:47.528494', '2017-08-23 17:31:20.271909', 'g3.jpg', 'image/jpeg', '21342', '2017-08-23 17:31:20.112205');
INSERT INTO "public"."articles" VALUES ('77', 'Nemo quidem quos', 'Soluta ut omnis error dolorum. Sunt delectus tenetur occaecati expedita debitis molestiae quasi. Voluptatem pariatur vel ipsa aspernatur enim sit sint. Excepturi tenetur soluta corrupti autem dolorum. In perspiciatis et alias velit ab qui voluptates.', '2017-07-26 17:21:47.630793', '2017-08-23 17:48:04.45217', 'thumb2.png', 'image/png', '26805', '2017-08-23 17:48:04.298313');
INSERT INTO "public"."articles" VALUES ('78', 'Quia minima aut', 'Non voluptas dolor corrupti rerum. Doloremque consequatur optio quia nostrum cum. Velit et unde facilis impedit.', '2017-07-26 17:21:47.75276', '2017-08-23 17:31:44.829641', 'g6.jpg', 'image/jpeg', '36589', '2017-08-23 17:31:44.671287');
INSERT INTO "public"."articles" VALUES ('79', 'Quis dignissimos omnis', 'Quidem est aperiam nisi suscipit inventore quae dolorem. Voluptas aperiam sit quia. Cumque nobis aut quaerat. Maxime qui amet laborum aliquid voluptatem. Voluptatem iusto iste natus illum.', '2017-07-26 17:21:47.881378', '2017-08-23 17:25:59.132261', 'img1.jpg', 'image/jpeg', '165473', '2017-08-23 17:25:55.423062');
INSERT INTO "public"."articles" VALUES ('80', 'Est est deserunt', 'Et rerum dolore ea quibusdam rerum. Perferendis est explicabo deleniti quod. Ut quia dolore. Sint reiciendis quaerat.', '2017-07-26 17:21:47.984214', '2017-08-23 17:25:32.160599', '984.jpg', 'image/jpeg', '35136', '2017-08-23 17:25:28.680785');
INSERT INTO "public"."articles" VALUES ('81', 'Et impedit est', 'Ab optio qui fugit. Ipsum non in labore magni perferendis veritatis. Incidunt provident ipsam non repellendus est et. Vero quia distinctio est id voluptate officiis.', '2017-07-26 17:21:48.106656', '2017-08-23 17:25:25.578585', 'job-search-icon-white-web-mobile-47565980.jpg', 'image/jpeg', '79201', '2017-08-23 17:25:19.940574');
INSERT INTO "public"."articles" VALUES ('82', 'A nulla quis', 'Sed eum dolorem magnam tenetur ut corrupti. Et in ducimus pariatur ipsa et explicabo. Quia molestias ut quae dolor dicta consequuntur.', '2017-07-26 17:21:48.216722', '2017-08-23 17:24:25.025294', 'depositphotos_133254732-stock-illustration-job-search-icon-set.jpg', 'image/jpeg', '13793', '2017-08-23 17:24:24.624559');
INSERT INTO "public"."articles" VALUES ('83', 'Quam nam non', 'Provident est et sint deserunt voluptate. Facere eos et dolorem at maxime velit. Incidunt tempora ut eligendi sint et esse. Debitis odio temporibus similique aut corrupti neque. Fugit dignissimos ut non qui dolorem aliquid.', '2017-07-26 17:21:48.358372', '2017-08-23 01:42:04.610133', 'icon-5.png', 'image/png', '1077', '2017-08-23 01:42:04.033988');

-- ----------------------------
-- Table structure for authorizations
-- ----------------------------
DROP TABLE IF EXISTS "public"."authorizations";
CREATE TABLE "public"."authorizations" (
"id" int4 NOT NULL,
"provider" varchar COLLATE "default",
"uid" varchar COLLATE "default",
"user_id" int4,
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of authorizations
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."categories";
CREATE TABLE "public"."categories" (
"id" int4 NOT NULL,
"category" varchar COLLATE "default",
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL,
"description" varchar COLLATE "default",
"image" bytea,
"image_file_name" varchar COLLATE "default",
"image_content_type" varchar COLLATE "default",
"image_file_size" int4,
"image_updated_at" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO "public"."categories" VALUES ('66', 'Finances/Economics', '2017-07-26 17:21:44.802351', '2017-08-23 01:47:25.666559', null, null, 'icon-7.png', 'image/png', '1709', '2017-08-23 01:47:25.520004');
INSERT INTO "public"."categories" VALUES ('67', 'Sale/Markting', '2017-07-26 17:21:44.901484', '2017-08-23 17:34:21.891726', 'Buy or sell', null, 'thumb1.png', 'image/png', '24619', '2017-08-23 17:34:21.738811');
INSERT INTO "public"."categories" VALUES ('68', 'Education/Training', '2017-07-26 17:21:45.010464', '2017-08-23 17:35:16.298649', 'Estudiar y Entrenar', null, 'blog3.jpg', 'image/jpeg', '133268', '2017-08-23 17:35:16.034137');
INSERT INTO "public"."categories" VALUES ('69', 'Technologies', '2017-07-26 17:21:45.100436', '2017-08-23 01:49:06.438953', null, null, 'icon-5.png', 'image/png', '1077', '2017-08-23 01:49:06.296945');
INSERT INTO "public"."categories" VALUES ('70', 'Art/Design', '2017-07-26 17:21:45.200215', '2017-08-23 17:32:57.964613', 'Pintura y Arte', null, 'icon-2.png', 'image/png', '1484', '2017-08-23 17:32:57.807038');
INSERT INTO "public"."categories" VALUES ('71', 'Healthcare', '2017-07-26 17:21:45.289627', '2017-08-23 17:29:15.828573', 'Medicos y emfermeros', null, 'blog2.jpg', 'image/jpeg', '50196', '2017-08-23 17:29:15.671483');
INSERT INTO "public"."categories" VALUES ('72', 'Science', '2017-07-26 17:21:45.38986', '2017-08-23 14:51:29.495276', '', null, 'icon-6.png', 'image/png', '1494', '2017-08-23 14:51:29.17935');
INSERT INTO "public"."categories" VALUES ('73', 'Food Services', '2017-07-26 17:21:45.47765', '2017-08-23 01:50:45.686364', 'Cocineros,meseros,panaderos etc', null, 'icon-8.png', 'image/png', '1936', '2017-08-23 01:49:55.463081');
INSERT INTO "public"."categories" VALUES ('78', 'Transporte', '2017-08-23 01:21:04.552242', '2017-08-23 01:51:11.03303', 'Choferes,taxistas', null, 'icon-3.png', 'image/png', '1719', '2017-08-23 01:47:55.316426');
INSERT INTO "public"."categories" VALUES ('79', 'Modas/Ropas', '2017-08-23 01:44:27.759327', '2017-08-23 01:44:27.759327', null, null, 'icon-4.png', 'image/png', '1305', '2017-08-23 01:44:27.622556');

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS "public"."companies";
CREATE TABLE "public"."companies" (
"id" int4 NOT NULL,
"company" varchar COLLATE "default",
"fullname" varchar COLLATE "default",
"picture" varchar COLLATE "default",
"description" text COLLATE "default",
"country" varchar COLLATE "default",
"contact" varchar COLLATE "default",
"email" varchar COLLATE "default",
"username" varchar COLLATE "default",
"password" varchar COLLATE "default",
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL,
"image_file_name" varchar COLLATE "default",
"image_content_type" varchar COLLATE "default",
"image_file_size" int4,
"image_updated_at" timestamp(6),
"m_country_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO "public"."companies" VALUES ('26', 'Marquardt, Gerhold and Hagenes', 'matrix synergistic niches', 'Mr. Ryder Orn', 'Accusamus laudantium nam blanditiis unde eos voluptas. Accusamus vitae odit nisi aut est. Voluptate libero ducimus quaerat totam consequatur necessitatibus. Exercitationem alias temporibus.', 'MEXICO', '(214) 754-8541 x52426', 'gretchen@beer.co', 'nicolas_mills', '1b68TbMtRiG5E', '2017-07-26 17:21:48.69526', '2017-08-23 23:26:41.387468', 'img-5.jpg', 'image/jpeg', '13515', '2017-08-23 23:26:41.24245', '44');
INSERT INTO "public"."companies" VALUES ('27', 'Friesen-Ratke', 'embrace efficient metrics', 'Marvin Grimes I', 'Deserunt esse nostrum et illo. Mollitia temporibus laboriosam et assumenda sed. Ea facere dignissimos explicabo esse cum et saepe. Iure et eum dignissimos.', 'MEXICO', '663-744-8213 x59306', 'boyd_kohler@hermangrady.biz', 'gudrun_mueller', 'Sc9mQpMbIt83Rt4', '2017-07-26 17:21:49.029897', '2017-08-23 23:22:06.20479', 'img1.png', 'image/png', '20224', '2017-08-23 23:22:06.056045', '44');
INSERT INTO "public"."companies" VALUES ('28', 'Quigley LLC', 'incubate integrated action-items', 'Susana Hessel', 'At repellat illo et. Suscipit consequatur ut iure sapiente hic ratione. Sed possimus et. Vitae suscipit sunt fugiat et accusantium qui et. Perferendis quibusdam vitae voluptates mollitia consectetur.', 'MEXICO', '1-486-934-2729 x5948', 'darryl.swift@zulauf.biz', 'rene_crona', 'Ho7rXs2z06SaQfX3', '2017-07-26 17:21:49.140007', '2017-08-23 23:24:50.243609', 'g10.jpg', 'image/jpeg', '42992', '2017-08-23 23:24:50.088927', '9');
INSERT INTO "public"."companies" VALUES ('29', 'Lang LLC', 'transform innovative infrastructures', 'Misty Cormier', 'Rem voluptatem aliquid sed tempore et quam. A beatae reprehenderit aperiam. Voluptas accusamus est aut et.', 'MEXICO', '1-875-540-2365 x982', 'mario@littelkuphal.net', 'elwin', 'XnT3Tp918cLq00', '2017-07-26 17:21:49.268887', '2017-08-23 23:27:09.852731', 'recent-job-detail.jpg', 'image/jpeg', '44871', '2017-08-23 23:27:09.697268', '184');
INSERT INTO "public"."companies" VALUES ('30', 'Feest LLC', 'harness sexy niches', 'Zackary Boehm', 'Sunt ipsum quis sed vero aut. Maiores assumenda suscipit repudiandae accusantium ullam dolorum et. Veritatis nesciunt soluta cum. Ex sequi autem ea.', 'MEXICO', '603.156.5640', 'domenico.huel@heidenreich.info', 'minnie_schneider', '5mEvZl6wNoBbInVs', '2017-07-26 17:21:49.372243', '2017-08-23 23:21:27.644462', 'img-3.jpg', 'image/jpeg', '17263', '2017-08-23 23:21:27.435129', '44');
INSERT INTO "public"."companies" VALUES ('31', 'O''Connell Group', 'engineer synergistic web services', 'Mrs. Faye Schowalter', 'Molestiae et aut cumque. Maiores quasi harum distinctio. Ut laudantium id numquam reprehenderit.', 'MEXICO', '442.285.8516 x6735', 'ardith@satterfield.co', 'orrin_renner', 'X6GoHwL7G3Sk', '2017-07-26 17:21:49.511847', '2017-08-23 23:25:31.106119', 'img-2.png', 'image/png', '15245', '2017-08-23 23:25:30.958169', '70');
INSERT INTO "public"."companies" VALUES ('32', 'Erdman-Hettinger', 'productize best-of-breed action-items', 'Edmond Doyle Jr.', 'Aliquid magni et earum. Cupiditate totam harum iusto omnis enim. Qui nisi illum hic beatae. Voluptatem autem dolores molestiae. Harum earum molestiae molestias.', '', '325-920-2021', 'rashad.yost@vandervort.biz', 'yesenia.gutmann', 'TrJwEoVaE51xJ', '2017-07-26 17:21:49.613501', '2017-08-23 20:18:42.221669', 'img2.png', 'image/png', '23009', '2017-08-23 20:18:42.078599', '44');
INSERT INTO "public"."companies" VALUES ('33', 'Hintz Inc', 'integrate user-centric e-commerce', 'Ron Ziemann', 'Aut quos repudiandae nihil ea numquam hic fugit. Magnam corrupti expedita amet. Ea soluta mollitia inventore repellendus voluptas dolor eaque. Possimus voluptate saepe quae qui animi.', 'MEXICO', '174-856-0145 x159', 'kacie_stamm@toy.com', 'adelle', 'S8VeUnD74', '2017-07-26 17:21:49.712796', '2017-08-23 23:22:54.035751', '1_foto_1.jpg', 'image/jpeg', '49446', '2017-08-23 23:22:53.885553', '184');
INSERT INTO "public"."companies" VALUES ('34', 'Weissnat-Kerluke', 'mesh world-class communities', 'Nasir Koch', 'Itaque quia nesciunt neque. In unde voluptas ut. Sequi quidem voluptatem et. Rem veritatis ut dolor dolore tenetur.', 'Australia', '(591) 783-1894 x592', 'nettie@dickens.biz', 'percival.orn', 'JoT508MtE682GoP', '2017-07-26 17:21:49.838893', '2017-08-23 20:21:55.151633', 'ecosignature_app.png', 'image/png', '157675', '2017-08-23 20:21:34.508481', '44');
INSERT INTO "public"."companies" VALUES ('35', 'Murphy, Harvey and Miller', 'integrate clicks-and-mortar markets', 'Tia Feil', 'Voluptas ut nobis. Consequatur saepe deleniti ad. Aut voluptatem ut similique possimus harum. Blanditiis molestias laboriosam qui. Molestiae omnis hic officiis temporibus.', '', '1-312-988-1815', 'zion.spencer@leffler.io', 'cletus_friesen', '8hMwCqS161J', '2017-07-26 17:21:49.938472', '2017-08-23 23:26:10.307536', 'img-4.png', 'image/png', '5151', '2017-08-23 23:26:10.160613', '14');
INSERT INTO "public"."companies" VALUES ('36', 'SOLPROB COMPANY', 'Solprob Company Cuba', 'sdgsdgsdg', 'daffs safasf', 'CUBA', 'quesada@irstrat.com', 'yadierq87@gmail.com', 'admin_solprob', 'fasfasf', '2017-08-09 02:45:30.331334', '2017-08-23 23:23:51.257858', 'blog1.jpg', 'image/jpeg', '67917', '2017-08-23 23:23:51.095728', '44');
INSERT INTO "public"."companies" VALUES ('37', 'SOLPROB COMPANY II', 'Solprob Company S.A.', 'sdgds dsdg', 'gsd gegdfsd', '', 'yadierq87@gmail.com', 'gsdgdg', 'admin_solprob', 'sdgdg', '2017-08-09 03:55:31.475785', '2017-08-23 20:20:14.974326', 'gamar.jpg', 'image/jpeg', '76480', '2017-08-23 20:20:14.818415', '44');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS "public"."employees";
CREATE TABLE "public"."employees" (
"id" int4 NOT NULL,
"fullname" varchar COLLATE "default",
"picture" varchar COLLATE "default",
"description" text COLLATE "default",
"contact" varchar COLLATE "default",
"email" varchar COLLATE "default",
"sex" varchar COLLATE "default",
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL,
"curriculum" text COLLATE "default",
"username" varchar COLLATE "default",
"password" varchar COLLATE "default",
"country" varchar COLLATE "default",
"image_file_name" varchar COLLATE "default",
"image_content_type" varchar COLLATE "default",
"image_file_size" int4,
"image_updated_at" timestamp(6),
"m_country_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO "public"."employees" VALUES ('2', 'Miss Reinhold Buckridge', 'Administration', 'Nostrum non mollitia animi veniam ut praesentium. Architecto aspernatur et voluptate dolorum minus dolor ullam. Autem eveniet non eos.', '624.320.4857 x375', 'cierra@kshlerin.biz', 'Male', '2017-07-29 21:35:19.791785', '2017-07-29 21:35:19.791785', 'Recusandae non modi aut quia repudiandae quam libero. Iusto quod error hic sit molestiae voluptas. Qui neque odio libero impedit architecto. Rem nisi quisquam impedit quia saepe harum voluptates.', 'jadon_hyatt', 'N1P81vTuDl6m', null, null, null, null, null, null);
INSERT INTO "public"."employees" VALUES ('3', 'Arnold Johns', 'Construction', 'Ab vel necessitatibus officia minus et. Enim voluptatem et nihil iure. Ut libero voluptas eaque voluptatum ex exercitationem. Tempora qui magni autem voluptatem.', '913.849.4284 x736', 'jayde@altenwerthrath.biz', 'Male', '2017-07-29 21:35:19.898456', '2017-07-29 21:35:19.898456', 'Quaerat nemo dicta animi quis tenetur. Omnis vero dolor delectus tempora tempore. Odio et repellendus et et ea doloribus. Exercitationem expedita voluptatem temporibus quibusdam assumenda. Molestias eius in nobis.', 'gabriella', 'PsIr9oKyJg', null, null, null, null, null, null);
INSERT INTO "public"."employees" VALUES ('4', 'Weston Casper V', 'Accounting', 'Nihil harum deleniti vel dolorem. Laudantium ipsa id quidem sequi tempore soluta. Voluptas et necessitatibus consequatur animi perspiciatis modi fugit.', '447.570.6134', 'jordy_kuhn@oconnellbecker.co', 'Male', '2017-07-29 21:35:20.01318', '2017-07-29 21:35:20.01318', 'Ut enim soluta corporis natus omnis. Eius ut et qui earum. Fugiat id vel placeat dolore. Ipsam nihil unde eius nostrum id. Occaecati consectetur sit neque officiis optio quia atque.', 'aliyah.bashirian', 'A503EmOf6', null, null, null, null, null, null);
INSERT INTO "public"."employees" VALUES ('5', 'Roma Gibson', 'Mining', 'Quisquam est eos quidem. Et totam sapiente dolores at provident inventore. Distinctio eos officiis quia saepe.', '(623) 518-7225 x325', 'anderson@lefflertowne.biz', 'Male', '2017-07-29 21:35:20.124059', '2017-07-29 21:35:20.124059', 'Aut quod voluptatum commodi hic. Ut sint quos corporis praesentium rerum. Veniam distinctio placeat eum repellendus. Quo quis voluptatem at ipsam dolores ut consequatur.', 'tania', 'UuE4MgDhFz', null, null, null, null, null, null);
INSERT INTO "public"."employees" VALUES ('6', 'Geovany Wehner', 'Real-Estate', 'Praesentium quis perferendis sequi. Rerum sed sed blanditiis et modi vero. Autem neque aliquam quia et rem illum. Aut qui accusamus cumque ducimus. Eos expedita fugit quia reprehenderit voluptatem inventore.', '(771) 558-5215 x79992', 'hettie.ritchie@hickle.net', 'Male', '2017-07-29 21:35:20.245643', '2017-07-29 21:35:20.245643', 'Eum dolorem quibusdam. Quae qui illo est tenetur et quod ut. Illum ut expedita iure voluptatem. In dolorem dicta praesentium quo quos explicabo. Vero omnis dolor voluptatem sequi esse repudiandae voluptate.', 'norval', 'VqY10d8sE5Rz', null, null, null, null, null, null);
INSERT INTO "public"."employees" VALUES ('7', 'Dr. Elmira Bartell', 'Mining', 'Ut vel ut maxime non inventore modi voluptas. Sint aut ratione tempora. Voluptatem eos beatae ipsam dolorem eveniet doloribus. Voluptate laborum accusantium quia consequuntur dicta molestiae debitis. Eum autem vitae nesciunt accusamus consectetur.', '156.387.5231 x501', 'constance@kreiger.com', 'Male', '2017-07-29 21:35:20.390137', '2017-07-29 21:35:20.390137', 'Et maxime voluptatum voluptas. Voluptatem neque inventore dolorum blanditiis quibusdam natus. Cum dolores expedita quidem. Facilis laboriosam voluptatem voluptas assumenda. Aut amet ut vitae numquam placeat non iste.', 'nedra.mayer', 'PnKi1vAiLd60I', null, null, null, null, null, null);
INSERT INTO "public"."employees" VALUES ('8', 'Breana West', 'IT', 'Autem aliquam magni non quo perspiciatis minima. Suscipit ullam qui. Nobis doloremque consequatur deleniti non voluptates optio. Animi eligendi repudiandae quisquam maiores in. Non et id ipsa consequatur fugit.', '(398) 237-3854 x70255', 'golden.blanda@altenwerthborer.org', 'Male', '2017-07-29 21:35:20.59529', '2017-07-29 21:35:20.59529', 'Quo sed molestiae. Fugiat placeat consequatur aspernatur deleniti labore libero possimus. Magnam incidunt hic. Eius est dicta.', 'allen', 'SvZjD5N2T05', null, null, null, null, null, null);
INSERT INTO "public"."employees" VALUES ('9', 'Wilhelmine Kuhn MD', 'Marketing', 'Recusandae reiciendis expedita eos et repudiandae est. Modi mollitia pariatur consequatur doloremque sapiente. Fugiat molestias veniam. Alias eius qui maxime sit. Consequatur perferendis sunt fugit.', '(730) 788-2241 x68400', 'lawrence@altenwerthschuppe.name', 'Male', '2017-07-29 21:35:20.777574', '2017-07-29 21:35:20.777574', 'Dolor impedit ea molestiae aut at est. Ut quis adipisci. Officiis sint asperiores aut consequatur.', 'joanny_sanford', 'Qi7pS2StTdKkAuU9', null, null, null, null, null, null);
INSERT INTO "public"."employees" VALUES ('10', 'Roosevelt McGlynn', 'Mining', 'Similique fugiat dolorem sequi porro enim. Sunt exercitationem iusto ut sit harum. Minus vel veritatis iste aut eum optio voluptatem.', '(732) 542-5702 x11263', 'rosalind@walsh.net', 'Male', '2017-07-29 21:35:20.90064', '2017-07-29 21:35:20.90064', 'Unde id quia et est ut error non. Nemo dolorem quia omnis consequatur est aperiam a. Id perspiciatis saepe mollitia et ex voluptas et. Quam eveniet aut ab dolor tempora. Animi laboriosam tempora delectus ipsa.', 'dexter', 'Pu6d12ImWlI', null, null, null, null, null, null);
INSERT INTO "public"."employees" VALUES ('14', 'La CHina web', null, 'orem ipsum dolor sit amet, consectetur adipisicing elit. Labore praesentium asperiores ad vitae', '54545457', 'china@medium.cu', 'FEMALE', '2017-08-23 21:53:58.756099', '2017-08-23 21:53:58.756099', 'orem ipsum dolor sit amet, consectetur adipisicing elit. Labore praesentium asperiores ad vitae', 'chinesse', 'qwerty45', 'Belize', 't6.jpg', 'image/jpeg', '10206', '2017-08-23 21:53:58.580252', null);

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."jobs";
CREATE TABLE "public"."jobs" (
"id" int4 NOT NULL,
"title" varchar COLLATE "default",
"country" varchar COLLATE "default",
"company_id" int4,
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL,
"active" bool,
"description" text COLLATE "default",
"publicate_at" date,
"job_stat" varchar COLLATE "default",
"category_id" int4,
"image_file_name" varchar COLLATE "default",
"image_content_type" varchar COLLATE "default",
"image_file_size" int4,
"image_updated_at" timestamp(6),
"m_country_id" int4,
"picture" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO "public"."jobs" VALUES ('8', 'Central Real-Estate Analyst', 'CUBA', '32', '2017-07-26 20:00:07.008005', '2017-07-26 20:00:07.008005', 't', 'Consequuntur amet maxime. Aperiam hic praesentium veritatis in. Odit accusantium earum quas dolorum incidunt ratione cumque. Et magnam aut praesentium.', '2017-07-26', 'Leadership', '73', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('10', 'Marketing Producer', 'CUBA', '32', '2017-07-26 20:02:44.239124', '2017-07-26 20:02:44.239124', 't', 'Unde sunt consequatur. Error voluptatem placeat consectetur excepturi illum. Eius ipsa ullam. Ut accusantium ut occaecati rerum. Optio minus et.', '2017-07-26', 'Problem solving', '72', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('11', 'Community-Services Associate', 'CUBA', '32', '2017-07-26 20:03:38.361886', '2017-07-26 20:03:38.361886', 't', 'Dolore omnis autem quasi. Cum odio fuga aut et voluptate. Dolorem explicabo rerum dolorum autem eos vero et. Quis neque omnis eos.', '2017-07-26', 'Work under pressure', '73', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('12', 'Consulting Director', 'CUBA', '32', '2017-07-26 20:04:21.109373', '2017-07-26 20:04:21.109373', 't', 'Non eum dicta quisquam quidem ab et et. Aperiam reprehenderit voluptatem. Qui ab et iusto et voluptate.', '2017-07-26', 'Communication', '73', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('13', 'Chief Construction Technician', 'CUBA', '32', '2017-07-26 20:05:27.548517', '2017-07-26 20:05:27.548517', 't', 'Totam provident ratione quae consequatur reiciendis. Explicabo dolores cupiditate dolorem quis fugit. Perferendis quia laudantium natus. Neque dolor expedita voluptatem sit maxime dolorem sint. Ad et repellendus expedita.', '2017-07-26', 'Leadership', '73', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('14', 'Product Designer', 'CUBA', '37', '2017-07-26 20:05:27.65052', '2017-07-26 20:05:27.65052', 't', 'Architecto delectus vero fugit eligendi molestiae. Et voluptas numquam blanditiis et placeat. Ducimus voluptas incidunt veritatis ut sit necessitatibus autem. Esse ducimus sunt ipsum dolorum sed non. Atque quia eveniet in nostrum soluta.', '2017-07-26', 'Communication', '73', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('15', 'International Retail Developer', 'CUBA', '32', '2017-07-26 20:05:27.749154', '2017-07-26 20:05:27.749154', 't', 'Nemo rem perferendis. Voluptatem rem velit sit praesentium suscipit. Consequatur animi et qui quod quia. Culpa modi eaque repellendus quibusdam ea. Ut ea et ratione placeat.', '2017-07-26', 'Networking skills', '68', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('16', 'Internal Community-Services Engineer', 'CUBA', '37', '2017-07-26 20:05:27.883215', '2017-07-26 20:05:27.883215', 't', 'Pariatur qui nemo et similique. Hic consequatur quidem ipsum ullam. Rerum quaerat id. Quo nihil exercitationem. Unde et eos.', '2017-07-26', 'Self-motivated', '72', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('17', 'Sales Manager', 'CUBA', '34', '2017-07-26 20:05:28.015206', '2017-07-26 20:05:28.015206', 't', 'Assumenda magnam minima rerum dolorem voluptas exercitationem. Sed quo deserunt. Aut dolorum harum quis et.', '2017-07-26', 'Technical savvy', '73', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('18', 'District Hospitality Producer', 'CUBA', '32', '2017-07-26 20:05:28.126462', '2017-07-26 20:05:28.126462', 't', 'Iusto accusamus ducimus sit. Architecto et delectus facilis fugit iure recusandae. Recusandae impedit aliquid itaque assumenda.', '2017-07-26', 'Technical savvy', '78', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('19', 'Technology Orchestrator', 'CUBA', '32', '2017-07-26 20:05:28.27049', '2017-07-26 20:05:28.27049', 't', 'Qui id est. Tenetur eos dignissimos quia qui soluta possimus unde. Quod fuga reiciendis cumque impedit nostrum a quo. Illum quaerat praesentium. Quae possimus est eos.', '2017-07-26', 'Problem solving', '73', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('20', 'Consulting Developer', 'CUBA', '37', '2017-07-26 20:05:28.37063', '2017-07-26 20:05:28.37063', 't', 'Sed quaerat dolorem ut quibusdam. Sapiente sequi provident quo veritatis. Ducimus porro reprehenderit natus optio.', '2017-07-26', 'Leadership', '73', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('21', 'Senior Education Architect', 'CUBA', '32', '2017-07-26 20:05:28.470853', '2017-07-26 20:05:28.470853', 't', 'Explicabo quas aperiam quis earum culpa rerum. Minus aperiam quam provident aliquam tempora perspiciatis. Est non sit exercitationem aut ut. Nobis ad magni inventore rem corrupti itaque. Veniam suscipit ducimus veritatis est tenetur ipsum.', '2017-07-26', 'Communication', '78', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('22', 'Global Specialist', 'CUBA', '34', '2017-07-26 20:05:28.580871', '2017-07-26 20:05:28.580871', 't', 'Repudiandae velit vel. Qui in quos facere magni ut qui velit. Minus eligendi explicabo. Adipisci est eos.', '2017-07-26', 'Work under pressure', '73', null, null, null, null, '44', null);
INSERT INTO "public"."jobs" VALUES ('23', 'Trabajo en algeria', null, '35', '2017-08-23 21:50:20.370213', '2017-08-23 21:50:20.370213', 't', 'orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore sed do eiusmod tempor incididunt ut labore', null, null, '67', 'ban4.jpg', 'image/jpeg', '61146', '2017-08-23 21:50:19.993914', '17', null);

-- ----------------------------
-- Table structure for m_countries
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_countries";
CREATE TABLE "public"."m_countries" (
"id" int4 NOT NULL,
"ncountry" varchar COLLATE "default",
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of m_countries
-- ----------------------------
INSERT INTO "public"."m_countries" VALUES ('1', 'Afghanistan', '2017-08-09 03:39:19.318953', '2017-08-09 03:39:19.318953');
INSERT INTO "public"."m_countries" VALUES ('2', 'Albania', '2017-08-09 03:39:19.478152', '2017-08-09 03:39:19.478152');
INSERT INTO "public"."m_countries" VALUES ('3', 'Algeria', '2017-08-09 03:39:19.566582', '2017-08-09 03:39:19.566582');
INSERT INTO "public"."m_countries" VALUES ('4', 'Andorra', '2017-08-09 03:39:19.65483', '2017-08-09 03:39:19.65483');
INSERT INTO "public"."m_countries" VALUES ('5', 'Angola', '2017-08-09 03:39:19.730798', '2017-08-09 03:39:19.730798');
INSERT INTO "public"."m_countries" VALUES ('6', 'Antigua and Barbuda', '2017-08-09 03:39:19.842574', '2017-08-09 03:39:19.842574');
INSERT INTO "public"."m_countries" VALUES ('7', 'Argentina', '2017-08-09 03:39:20.021782', '2017-08-09 03:39:20.021782');
INSERT INTO "public"."m_countries" VALUES ('8', 'Armenia', '2017-08-09 03:39:20.132599', '2017-08-09 03:39:20.132599');
INSERT INTO "public"."m_countries" VALUES ('9', 'Australia', '2017-08-09 03:39:20.219839', '2017-08-09 03:39:20.219839');
INSERT INTO "public"."m_countries" VALUES ('10', 'Austria', '2017-08-09 03:39:20.299223', '2017-08-09 03:39:20.299223');
INSERT INTO "public"."m_countries" VALUES ('11', 'Azerbaijan', '2017-08-09 03:40:18.679172', '2017-08-09 03:40:18.679172');
INSERT INTO "public"."m_countries" VALUES ('12', 'Bahamas', '2017-08-09 03:40:18.778405', '2017-08-09 03:40:18.778405');
INSERT INTO "public"."m_countries" VALUES ('13', 'Bahrain', '2017-08-09 03:40:18.908769', '2017-08-09 03:40:18.908769');
INSERT INTO "public"."m_countries" VALUES ('14', 'Bangladesh', '2017-08-09 03:40:19.030392', '2017-08-09 03:40:19.030392');
INSERT INTO "public"."m_countries" VALUES ('15', 'Barbados', '2017-08-09 03:40:19.120371', '2017-08-09 03:40:19.120371');
INSERT INTO "public"."m_countries" VALUES ('16', 'Belarus', '2017-08-09 03:40:19.222893', '2017-08-09 03:40:19.222893');
INSERT INTO "public"."m_countries" VALUES ('17', 'Belgium', '2017-08-09 03:40:19.363797', '2017-08-09 03:40:19.363797');
INSERT INTO "public"."m_countries" VALUES ('18', 'Belize', '2017-08-09 03:40:19.47228', '2017-08-09 03:40:19.47228');
INSERT INTO "public"."m_countries" VALUES ('19', 'Benin', '2017-08-09 03:40:19.563284', '2017-08-09 03:40:19.563284');
INSERT INTO "public"."m_countries" VALUES ('20', 'Bhutan', '2017-08-09 03:40:19.662957', '2017-08-09 03:40:19.662957');
INSERT INTO "public"."m_countries" VALUES ('21', 'Bolivia', '2017-08-09 03:40:19.774812', '2017-08-09 03:40:19.774812');
INSERT INTO "public"."m_countries" VALUES ('22', 'Bosnia and Herzegovina', '2017-08-09 03:40:19.873705', '2017-08-09 03:40:19.873705');
INSERT INTO "public"."m_countries" VALUES ('23', 'Botswana', '2017-08-09 03:40:20.012621', '2017-08-09 03:40:20.012621');
INSERT INTO "public"."m_countries" VALUES ('24', 'Brazil', '2017-08-09 03:40:20.133246', '2017-08-09 03:40:20.133246');
INSERT INTO "public"."m_countries" VALUES ('25', 'Brunei', '2017-08-09 03:40:20.250393', '2017-08-09 03:40:20.250393');
INSERT INTO "public"."m_countries" VALUES ('26', 'Bulgaria', '2017-08-09 03:40:20.404269', '2017-08-09 03:40:20.404269');
INSERT INTO "public"."m_countries" VALUES ('27', 'Burkina Faso', '2017-08-09 03:40:20.526635', '2017-08-09 03:40:20.526635');
INSERT INTO "public"."m_countries" VALUES ('28', 'Burundi', '2017-08-09 03:40:20.634711', '2017-08-09 03:40:20.634711');
INSERT INTO "public"."m_countries" VALUES ('29', 'Cambodia', '2017-08-09 03:40:20.755776', '2017-08-09 03:40:20.755776');
INSERT INTO "public"."m_countries" VALUES ('30', 'Cameroon', '2017-08-09 03:40:20.838577', '2017-08-09 03:40:20.838577');
INSERT INTO "public"."m_countries" VALUES ('31', 'Canada', '2017-08-09 03:40:20.94448', '2017-08-09 03:40:20.94448');
INSERT INTO "public"."m_countries" VALUES ('32', 'Cape Verde', '2017-08-09 03:40:21.066076', '2017-08-09 03:40:21.066076');
INSERT INTO "public"."m_countries" VALUES ('33', 'Central African Republic', '2017-08-09 03:40:21.188385', '2017-08-09 03:40:21.188385');
INSERT INTO "public"."m_countries" VALUES ('34', 'Chad', '2017-08-09 03:40:21.304333', '2017-08-09 03:40:21.304333');
INSERT INTO "public"."m_countries" VALUES ('35', 'Chile', '2017-08-09 03:40:21.570323', '2017-08-09 03:40:21.570323');
INSERT INTO "public"."m_countries" VALUES ('36', 'China', '2017-08-09 03:40:21.671438', '2017-08-09 03:40:21.671438');
INSERT INTO "public"."m_countries" VALUES ('37', 'Colombia', '2017-08-09 03:40:21.782297', '2017-08-09 03:40:21.782297');
INSERT INTO "public"."m_countries" VALUES ('38', 'Comoros', '2017-08-09 03:40:21.88321', '2017-08-09 03:40:21.88321');
INSERT INTO "public"."m_countries" VALUES ('39', 'Congo (Brazzaville)', '2017-08-09 03:40:21.981079', '2017-08-09 03:40:21.981079');
INSERT INTO "public"."m_countries" VALUES ('40', 'Congo', '2017-08-09 03:40:22.092884', '2017-08-09 03:40:22.092884');
INSERT INTO "public"."m_countries" VALUES ('41', 'Costa Rica', '2017-08-09 03:40:22.187673', '2017-08-09 03:40:22.187673');
INSERT INTO "public"."m_countries" VALUES ('42', 'Cote d''Ivoire', '2017-08-09 03:40:22.270743', '2017-08-09 03:40:22.270743');
INSERT INTO "public"."m_countries" VALUES ('43', 'Croatia', '2017-08-09 03:40:22.380346', '2017-08-09 03:40:22.380346');
INSERT INTO "public"."m_countries" VALUES ('44', 'Cuba', '2017-08-09 03:40:22.501124', '2017-08-09 03:40:22.501124');
INSERT INTO "public"."m_countries" VALUES ('45', 'Cyprus', '2017-08-09 03:40:22.591115', '2017-08-09 03:40:22.591115');
INSERT INTO "public"."m_countries" VALUES ('46', 'Czech Republic', '2017-08-09 03:40:22.792715', '2017-08-09 03:40:22.792715');
INSERT INTO "public"."m_countries" VALUES ('47', 'Denmark', '2017-08-09 03:40:22.889491', '2017-08-09 03:40:22.889491');
INSERT INTO "public"."m_countries" VALUES ('48', 'Djibouti', '2017-08-09 03:40:23.008113', '2017-08-09 03:40:23.008113');
INSERT INTO "public"."m_countries" VALUES ('49', 'Dominica', '2017-08-09 03:40:23.129241', '2017-08-09 03:40:23.129241');
INSERT INTO "public"."m_countries" VALUES ('50', 'Dominican Republic', '2017-08-09 03:40:23.251656', '2017-08-09 03:40:23.251656');
INSERT INTO "public"."m_countries" VALUES ('51', 'East Timor (Timor Timur)', '2017-08-09 03:40:23.372772', '2017-08-09 03:40:23.372772');
INSERT INTO "public"."m_countries" VALUES ('52', 'Ecuador', '2017-08-09 03:40:23.495413', '2017-08-09 03:40:23.495413');
INSERT INTO "public"."m_countries" VALUES ('53', 'Egypt', '2017-08-09 03:40:23.616837', '2017-08-09 03:40:23.616837');
INSERT INTO "public"."m_countries" VALUES ('54', 'El Salvador', '2017-08-09 03:40:23.739866', '2017-08-09 03:40:23.739866');
INSERT INTO "public"."m_countries" VALUES ('55', 'Equatorial Guinea', '2017-08-09 03:40:23.861895', '2017-08-09 03:40:23.861895');
INSERT INTO "public"."m_countries" VALUES ('56', 'Eritrea', '2017-08-09 03:40:23.971192', '2017-08-09 03:40:23.971192');
INSERT INTO "public"."m_countries" VALUES ('57', 'Estonia', '2017-08-09 03:40:24.11693', '2017-08-09 03:40:24.11693');
INSERT INTO "public"."m_countries" VALUES ('58', 'Ethiopia', '2017-08-09 03:40:24.238987', '2017-08-09 03:40:24.238987');
INSERT INTO "public"."m_countries" VALUES ('59', 'Fiji', '2017-08-09 03:40:24.349423', '2017-08-09 03:40:24.349423');
INSERT INTO "public"."m_countries" VALUES ('60', 'Finland', '2017-08-09 03:40:24.461098', '2017-08-09 03:40:24.461098');
INSERT INTO "public"."m_countries" VALUES ('61', 'France', '2017-08-09 03:40:24.593537', '2017-08-09 03:40:24.593537');
INSERT INTO "public"."m_countries" VALUES ('62', 'Gabon', '2017-08-09 03:40:24.705515', '2017-08-09 03:40:24.705515');
INSERT INTO "public"."m_countries" VALUES ('63', 'Gambia, The', '2017-08-09 03:40:24.827622', '2017-08-09 03:40:24.827622');
INSERT INTO "public"."m_countries" VALUES ('64', 'Georgia', '2017-08-09 03:40:24.949098', '2017-08-09 03:40:24.949098');
INSERT INTO "public"."m_countries" VALUES ('65', 'Germany', '2017-08-09 03:40:25.042713', '2017-08-09 03:40:25.042713');
INSERT INTO "public"."m_countries" VALUES ('66', 'Ghana', '2017-08-09 03:40:25.141213', '2017-08-09 03:40:25.141213');
INSERT INTO "public"."m_countries" VALUES ('67', 'Greece', '2017-08-09 03:40:25.244577', '2017-08-09 03:40:25.244577');
INSERT INTO "public"."m_countries" VALUES ('68', 'Grenada', '2017-08-09 03:40:25.377573', '2017-08-09 03:40:25.377573');
INSERT INTO "public"."m_countries" VALUES ('69', 'Guatemala', '2017-08-09 03:40:25.510163', '2017-08-09 03:40:25.510163');
INSERT INTO "public"."m_countries" VALUES ('70', 'Guinea', '2017-08-09 03:40:25.620112', '2017-08-09 03:40:25.620112');
INSERT INTO "public"."m_countries" VALUES ('71', 'Guinea-Bissau', '2017-08-09 03:40:25.720199', '2017-08-09 03:40:25.720199');
INSERT INTO "public"."m_countries" VALUES ('72', 'Guyana', '2017-08-09 03:40:25.81026', '2017-08-09 03:40:25.81026');
INSERT INTO "public"."m_countries" VALUES ('73', 'Haiti', '2017-08-09 03:40:25.906526', '2017-08-09 03:40:25.906526');
INSERT INTO "public"."m_countries" VALUES ('74', 'Honduras', '2017-08-09 03:40:26.030539', '2017-08-09 03:40:26.030539');
INSERT INTO "public"."m_countries" VALUES ('75', 'Hungary', '2017-08-09 03:40:26.142094', '2017-08-09 03:40:26.142094');
INSERT INTO "public"."m_countries" VALUES ('76', 'Iceland', '2017-08-09 03:40:26.242636', '2017-08-09 03:40:26.242636');
INSERT INTO "public"."m_countries" VALUES ('77', 'India', '2017-08-09 03:40:26.345829', '2017-08-09 03:40:26.345829');
INSERT INTO "public"."m_countries" VALUES ('78', 'Indonesia', '2017-08-09 03:40:26.457561', '2017-08-09 03:40:26.457561');
INSERT INTO "public"."m_countries" VALUES ('79', 'Iran', '2017-08-09 03:40:26.601901', '2017-08-09 03:40:26.601901');
INSERT INTO "public"."m_countries" VALUES ('80', 'Iraq', '2017-08-09 03:40:26.711004', '2017-08-09 03:40:26.711004');
INSERT INTO "public"."m_countries" VALUES ('81', 'Ireland', '2017-08-09 03:40:26.855642', '2017-08-09 03:40:26.855642');
INSERT INTO "public"."m_countries" VALUES ('82', 'Israel', '2017-08-09 03:40:26.975704', '2017-08-09 03:40:26.975704');
INSERT INTO "public"."m_countries" VALUES ('83', 'Italy', '2017-08-09 03:40:27.152809', '2017-08-09 03:40:27.152809');
INSERT INTO "public"."m_countries" VALUES ('84', 'Jamaica', '2017-08-09 03:40:27.275576', '2017-08-09 03:40:27.275576');
INSERT INTO "public"."m_countries" VALUES ('85', 'Japan', '2017-08-09 03:40:27.408558', '2017-08-09 03:40:27.408558');
INSERT INTO "public"."m_countries" VALUES ('86', 'Jordan', '2017-08-09 03:40:27.529339', '2017-08-09 03:40:27.529339');
INSERT INTO "public"."m_countries" VALUES ('87', 'Kazakhstan', '2017-08-09 03:40:27.697577', '2017-08-09 03:40:27.697577');
INSERT INTO "public"."m_countries" VALUES ('88', 'Kenya', '2017-08-09 03:40:27.819117', '2017-08-09 03:40:27.819117');
INSERT INTO "public"."m_countries" VALUES ('89', 'Kiribati', '2017-08-09 03:40:27.916006', '2017-08-09 03:40:27.916006');
INSERT INTO "public"."m_countries" VALUES ('90', 'Korea, North', '2017-08-09 03:40:28.019044', '2017-08-09 03:40:28.019044');
INSERT INTO "public"."m_countries" VALUES ('91', 'Korea, South', '2017-08-09 03:40:28.149772', '2017-08-09 03:40:28.149772');
INSERT INTO "public"."m_countries" VALUES ('92', 'Kuwait', '2017-08-09 03:40:28.248602', '2017-08-09 03:40:28.248602');
INSERT INTO "public"."m_countries" VALUES ('93', 'Kyrgyzstan', '2017-08-09 03:40:28.362696', '2017-08-09 03:40:28.362696');
INSERT INTO "public"."m_countries" VALUES ('94', 'Laos', '2017-08-09 03:40:28.469833', '2017-08-09 03:40:28.469833');
INSERT INTO "public"."m_countries" VALUES ('95', 'Latvia', '2017-08-09 03:40:28.617671', '2017-08-09 03:40:28.617671');
INSERT INTO "public"."m_countries" VALUES ('96', 'Lebanon', '2017-08-09 03:40:28.70334', '2017-08-09 03:40:28.70334');
INSERT INTO "public"."m_countries" VALUES ('97', 'Lesotho', '2017-08-09 03:40:28.803741', '2017-08-09 03:40:28.803741');
INSERT INTO "public"."m_countries" VALUES ('98', 'Liberia', '2017-08-09 03:40:28.928488', '2017-08-09 03:40:28.928488');
INSERT INTO "public"."m_countries" VALUES ('99', 'Libya', '2017-08-09 03:40:29.028549', '2017-08-09 03:40:29.028549');
INSERT INTO "public"."m_countries" VALUES ('100', 'Liechtenstein', '2017-08-09 03:40:29.135377', '2017-08-09 03:40:29.135377');
INSERT INTO "public"."m_countries" VALUES ('101', 'Lithuania', '2017-08-09 03:40:29.251858', '2017-08-09 03:40:29.251858');
INSERT INTO "public"."m_countries" VALUES ('102', 'Luxembourg', '2017-08-09 03:40:29.360821', '2017-08-09 03:40:29.360821');
INSERT INTO "public"."m_countries" VALUES ('103', 'Macedonia', '2017-08-09 03:40:29.518115', '2017-08-09 03:40:29.518115');
INSERT INTO "public"."m_countries" VALUES ('104', 'Madagascar', '2017-08-09 03:40:29.637507', '2017-08-09 03:40:29.637507');
INSERT INTO "public"."m_countries" VALUES ('105', 'Malawi', '2017-08-09 03:40:29.723613', '2017-08-09 03:40:29.723613');
INSERT INTO "public"."m_countries" VALUES ('106', 'Malaysia', '2017-08-09 03:40:29.837591', '2017-08-09 03:40:29.837591');
INSERT INTO "public"."m_countries" VALUES ('107', 'Maldives', '2017-08-09 03:40:29.923045', '2017-08-09 03:40:29.923045');
INSERT INTO "public"."m_countries" VALUES ('108', 'Mali', '2017-08-09 03:40:30.036263', '2017-08-09 03:40:30.036263');
INSERT INTO "public"."m_countries" VALUES ('109', 'Malta', '2017-08-09 03:40:30.122754', '2017-08-09 03:40:30.122754');
INSERT INTO "public"."m_countries" VALUES ('110', 'Marshall Islands', '2017-08-09 03:40:30.225781', '2017-08-09 03:40:30.225781');
INSERT INTO "public"."m_countries" VALUES ('111', 'Mauritania', '2017-08-09 03:40:30.322758', '2017-08-09 03:40:30.322758');
INSERT INTO "public"."m_countries" VALUES ('112', 'Mauritius', '2017-08-09 03:40:30.426131', '2017-08-09 03:40:30.426131');
INSERT INTO "public"."m_countries" VALUES ('113', 'Mexico', '2017-08-09 03:40:30.564281', '2017-08-09 03:40:30.564281');
INSERT INTO "public"."m_countries" VALUES ('114', 'Micronesia', '2017-08-09 03:40:30.669822', '2017-08-09 03:40:30.669822');
INSERT INTO "public"."m_countries" VALUES ('115', 'Moldova', '2017-08-09 03:40:30.755305', '2017-08-09 03:40:30.755305');
INSERT INTO "public"."m_countries" VALUES ('116', 'Monaco', '2017-08-09 03:40:30.924929', '2017-08-09 03:40:30.924929');
INSERT INTO "public"."m_countries" VALUES ('117', 'Mongolia', '2017-08-09 03:40:31.113042', '2017-08-09 03:40:31.113042');
INSERT INTO "public"."m_countries" VALUES ('118', 'Morocco', '2017-08-09 03:40:31.234976', '2017-08-09 03:40:31.234976');
INSERT INTO "public"."m_countries" VALUES ('119', 'Mozambique', '2017-08-09 03:40:31.345544', '2017-08-09 03:40:31.345544');
INSERT INTO "public"."m_countries" VALUES ('120', 'Myanmar', '2017-08-09 03:40:31.466303', '2017-08-09 03:40:31.466303');
INSERT INTO "public"."m_countries" VALUES ('121', 'Namibia', '2017-08-09 03:40:31.553948', '2017-08-09 03:40:31.553948');
INSERT INTO "public"."m_countries" VALUES ('122', 'Nauru', '2017-08-09 03:40:31.655446', '2017-08-09 03:40:31.655446');
INSERT INTO "public"."m_countries" VALUES ('123', 'Nepa', '2017-08-09 03:40:31.756303', '2017-08-09 03:40:31.756303');
INSERT INTO "public"."m_countries" VALUES ('124', 'Netherlands', '2017-08-09 03:40:31.867002', '2017-08-09 03:40:31.867002');
INSERT INTO "public"."m_countries" VALUES ('125', 'New Zealand', '2017-08-09 03:40:31.988669', '2017-08-09 03:40:31.988669');
INSERT INTO "public"."m_countries" VALUES ('126', 'Nicaragua', '2017-08-09 03:40:32.075014', '2017-08-09 03:40:32.075014');
INSERT INTO "public"."m_countries" VALUES ('127', 'Niger', '2017-08-09 03:40:32.189143', '2017-08-09 03:40:32.189143');
INSERT INTO "public"."m_countries" VALUES ('128', 'Nigeria', '2017-08-09 03:40:32.524991', '2017-08-09 03:40:32.524991');
INSERT INTO "public"."m_countries" VALUES ('129', 'Norway', '2017-08-09 03:40:32.671959', '2017-08-09 03:40:32.671959');
INSERT INTO "public"."m_countries" VALUES ('130', 'Oman', '2017-08-09 03:40:32.934763', '2017-08-09 03:40:32.934763');
INSERT INTO "public"."m_countries" VALUES ('131', 'Pakistan', '2017-08-09 03:40:33.080175', '2017-08-09 03:40:33.080175');
INSERT INTO "public"."m_countries" VALUES ('132', 'Palau', '2017-08-09 03:40:33.175118', '2017-08-09 03:40:33.175118');
INSERT INTO "public"."m_countries" VALUES ('133', 'Panama', '2017-08-09 03:40:33.288161', '2017-08-09 03:40:33.288161');
INSERT INTO "public"."m_countries" VALUES ('134', 'Papua New Guinea', '2017-08-09 03:40:33.412442', '2017-08-09 03:40:33.412442');
INSERT INTO "public"."m_countries" VALUES ('135', 'Paraguay', '2017-08-09 03:40:33.54189', '2017-08-09 03:40:33.54189');
INSERT INTO "public"."m_countries" VALUES ('136', 'Peru', '2017-08-09 03:40:33.675673', '2017-08-09 03:40:33.675673');
INSERT INTO "public"."m_countries" VALUES ('137', 'Philippines', '2017-08-09 03:40:33.786311', '2017-08-09 03:40:33.786311');
INSERT INTO "public"."m_countries" VALUES ('138', 'Poland', '2017-08-09 03:40:33.889596', '2017-08-09 03:40:33.889596');
INSERT INTO "public"."m_countries" VALUES ('139', 'Portugal', '2017-08-09 03:40:33.986564', '2017-08-09 03:40:33.986564');
INSERT INTO "public"."m_countries" VALUES ('140', 'Qatar', '2017-08-09 03:40:34.097323', '2017-08-09 03:40:34.097323');
INSERT INTO "public"."m_countries" VALUES ('141', 'Romania', '2017-08-09 03:40:34.231861', '2017-08-09 03:40:34.231861');
INSERT INTO "public"."m_countries" VALUES ('142', 'Russia', '2017-08-09 03:40:34.352591', '2017-08-09 03:40:34.352591');
INSERT INTO "public"."m_countries" VALUES ('143', 'Rwanda', '2017-08-09 03:40:34.474896', '2017-08-09 03:40:34.474896');
INSERT INTO "public"."m_countries" VALUES ('144', 'Saint Kitts and Nevis', '2017-08-09 03:40:34.629876', '2017-08-09 03:40:34.629876');
INSERT INTO "public"."m_countries" VALUES ('145', 'Saint Lucia', '2017-08-09 03:40:34.743222', '2017-08-09 03:40:34.743222');
INSERT INTO "public"."m_countries" VALUES ('146', 'Saint Vincent', '2017-08-09 03:40:34.877593', '2017-08-09 03:40:34.877593');
INSERT INTO "public"."m_countries" VALUES ('147', 'Samoa', '2017-08-09 03:40:35.029584', '2017-08-09 03:40:35.029584');
INSERT INTO "public"."m_countries" VALUES ('148', 'San Marino', '2017-08-09 03:40:35.154458', '2017-08-09 03:40:35.154458');
INSERT INTO "public"."m_countries" VALUES ('149', 'Sao Tome and Principe', '2017-08-09 03:40:35.286267', '2017-08-09 03:40:35.286267');
INSERT INTO "public"."m_countries" VALUES ('150', 'Saudi Arabia', '2017-08-09 03:40:35.408051', '2017-08-09 03:40:35.408051');
INSERT INTO "public"."m_countries" VALUES ('151', 'Senegal', '2017-08-09 03:40:35.519095', '2017-08-09 03:40:35.519095');
INSERT INTO "public"."m_countries" VALUES ('152', 'Serbia and Montenegro', '2017-08-09 03:40:35.641758', '2017-08-09 03:40:35.641758');
INSERT INTO "public"."m_countries" VALUES ('153', 'Seychelles', '2017-08-09 03:40:35.785448', '2017-08-09 03:40:35.785448');
INSERT INTO "public"."m_countries" VALUES ('154', 'Sierra Leone', '2017-08-09 03:40:35.90434', '2017-08-09 03:40:35.90434');
INSERT INTO "public"."m_countries" VALUES ('155', 'Singapore', '2017-08-09 03:40:36.06973', '2017-08-09 03:40:36.06973');
INSERT INTO "public"."m_countries" VALUES ('156', 'Slovakia', '2017-08-09 03:40:36.173526', '2017-08-09 03:40:36.173526');
INSERT INTO "public"."m_countries" VALUES ('157', 'Slovenia', '2017-08-09 03:40:36.306742', '2017-08-09 03:40:36.306742');
INSERT INTO "public"."m_countries" VALUES ('158', 'Solomon Islands', '2017-08-09 03:40:36.425727', '2017-08-09 03:40:36.425727');
INSERT INTO "public"."m_countries" VALUES ('159', 'Somalia', '2017-08-09 03:40:36.534943', '2017-08-09 03:40:36.534943');
INSERT INTO "public"."m_countries" VALUES ('160', 'South Africa', '2017-08-09 03:40:36.669163', '2017-08-09 03:40:36.669163');
INSERT INTO "public"."m_countries" VALUES ('161', 'Spain', '2017-08-09 03:40:36.76958', '2017-08-09 03:40:36.76958');
INSERT INTO "public"."m_countries" VALUES ('162', 'Sri Lanka', '2017-08-09 03:40:36.869119', '2017-08-09 03:40:36.869119');
INSERT INTO "public"."m_countries" VALUES ('163', 'Sudan', '2017-08-09 03:40:36.970742', '2017-08-09 03:40:36.970742');
INSERT INTO "public"."m_countries" VALUES ('164', 'Suriname', '2017-08-09 03:40:37.07058', '2017-08-09 03:40:37.07058');
INSERT INTO "public"."m_countries" VALUES ('165', 'Swaziland', '2017-08-09 03:40:37.181709', '2017-08-09 03:40:37.181709');
INSERT INTO "public"."m_countries" VALUES ('166', 'Sweden', '2017-08-09 03:40:37.278342', '2017-08-09 03:40:37.278342');
INSERT INTO "public"."m_countries" VALUES ('167', 'Switzerland', '2017-08-09 03:40:37.378163', '2017-08-09 03:40:37.378163');
INSERT INTO "public"."m_countries" VALUES ('168', 'Syria', '2017-08-09 03:40:37.481653', '2017-08-09 03:40:37.481653');
INSERT INTO "public"."m_countries" VALUES ('169', 'Taiwan', '2017-08-09 03:40:37.567883', '2017-08-09 03:40:37.567883');
INSERT INTO "public"."m_countries" VALUES ('170', 'Tajikistan', '2017-08-09 03:40:37.703169', '2017-08-09 03:40:37.703169');
INSERT INTO "public"."m_countries" VALUES ('171', 'Tanzania', '2017-08-09 03:40:37.879583', '2017-08-09 03:40:37.879583');
INSERT INTO "public"."m_countries" VALUES ('172', 'Thailand', '2017-08-09 03:40:37.976978', '2017-08-09 03:40:37.976978');
INSERT INTO "public"."m_countries" VALUES ('173', 'Togo', '2017-08-09 03:40:38.087493', '2017-08-09 03:40:38.087493');
INSERT INTO "public"."m_countries" VALUES ('174', 'Tonga', '2017-08-09 03:40:38.197374', '2017-08-09 03:40:38.197374');
INSERT INTO "public"."m_countries" VALUES ('175', 'Trinidad and Tobago', '2017-08-09 03:40:38.329261', '2017-08-09 03:40:38.329261');
INSERT INTO "public"."m_countries" VALUES ('176', 'Tunisia', '2017-08-09 03:40:38.431947', '2017-08-09 03:40:38.431947');
INSERT INTO "public"."m_countries" VALUES ('177', 'Turkey', '2017-08-09 03:40:38.520248', '2017-08-09 03:40:38.520248');
INSERT INTO "public"."m_countries" VALUES ('178', 'Turkmenistan', '2017-08-09 03:40:38.638103', '2017-08-09 03:40:38.638103');
INSERT INTO "public"."m_countries" VALUES ('179', 'Tuvalu', '2017-08-09 03:40:38.73462', '2017-08-09 03:40:38.73462');
INSERT INTO "public"."m_countries" VALUES ('180', 'Uganda', '2017-08-09 03:40:38.858084', '2017-08-09 03:40:38.858084');
INSERT INTO "public"."m_countries" VALUES ('181', 'Ukraine', '2017-08-09 03:40:38.990309', '2017-08-09 03:40:38.990309');
INSERT INTO "public"."m_countries" VALUES ('182', 'United Arab Emirates', '2017-08-09 03:40:39.121101', '2017-08-09 03:40:39.121101');
INSERT INTO "public"."m_countries" VALUES ('183', 'United Kingdom', '2017-08-09 03:40:39.234427', '2017-08-09 03:40:39.234427');
INSERT INTO "public"."m_countries" VALUES ('184', 'United States', '2017-08-09 03:40:39.344797', '2017-08-09 03:40:39.344797');
INSERT INTO "public"."m_countries" VALUES ('185', 'Uruguay', '2017-08-09 03:40:39.466449', '2017-08-09 03:40:39.466449');
INSERT INTO "public"."m_countries" VALUES ('186', 'Uzbekistan', '2017-08-09 03:40:39.577336', '2017-08-09 03:40:39.577336');
INSERT INTO "public"."m_countries" VALUES ('187', 'Vanuatu', '2017-08-09 03:40:39.696998', '2017-08-09 03:40:39.696998');
INSERT INTO "public"."m_countries" VALUES ('188', 'Vatican City', '2017-08-09 03:40:39.821495', '2017-08-09 03:40:39.821495');
INSERT INTO "public"."m_countries" VALUES ('189', 'Venezuela', '2017-08-09 03:40:39.944177', '2017-08-09 03:40:39.944177');
INSERT INTO "public"."m_countries" VALUES ('190', 'Vietnam', '2017-08-09 03:40:40.054209', '2017-08-09 03:40:40.054209');
INSERT INTO "public"."m_countries" VALUES ('191', 'Yemen', '2017-08-09 03:40:40.165077', '2017-08-09 03:40:40.165077');
INSERT INTO "public"."m_countries" VALUES ('192', 'Zambia', '2017-08-09 03:40:40.250546', '2017-08-09 03:40:40.250546');
INSERT INTO "public"."m_countries" VALUES ('193', 'Zimbabwe', '2017-08-09 03:40:40.398227', '2017-08-09 03:40:40.398227');

-- ----------------------------
-- Table structure for messageemployees
-- ----------------------------
DROP TABLE IF EXISTS "public"."messageemployees";
CREATE TABLE "public"."messageemployees" (
"id" int4 NOT NULL,
"employee_id" int4,
"company_id" int4,
"mail" text COLLATE "default",
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of messageemployees
-- ----------------------------

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."schema_migrations";
CREATE TABLE "public"."schema_migrations" (
"version" text COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
INSERT INTO "public"."schema_migrations" VALUES ('20170718200156');
INSERT INTO "public"."schema_migrations" VALUES ('20170718205149');
INSERT INTO "public"."schema_migrations" VALUES ('20170719142230');
INSERT INTO "public"."schema_migrations" VALUES ('20170719142304');
INSERT INTO "public"."schema_migrations" VALUES ('20170719142318');
INSERT INTO "public"."schema_migrations" VALUES ('20170719142828');
INSERT INTO "public"."schema_migrations" VALUES ('20170719142842');
INSERT INTO "public"."schema_migrations" VALUES ('20170720144643');
INSERT INTO "public"."schema_migrations" VALUES ('20170720174415');
INSERT INTO "public"."schema_migrations" VALUES ('20170720174450');
INSERT INTO "public"."schema_migrations" VALUES ('20170720180107');
INSERT INTO "public"."schema_migrations" VALUES ('20170720180701');
INSERT INTO "public"."schema_migrations" VALUES ('20170720183155');
INSERT INTO "public"."schema_migrations" VALUES ('20170720183639');
INSERT INTO "public"."schema_migrations" VALUES ('20170720183825');
INSERT INTO "public"."schema_migrations" VALUES ('20170726152946');
INSERT INTO "public"."schema_migrations" VALUES ('20170726212609');
INSERT INTO "public"."schema_migrations" VALUES ('20170802175133');
INSERT INTO "public"."schema_migrations" VALUES ('20170803143053');
INSERT INTO "public"."schema_migrations" VALUES ('20170809031934');
INSERT INTO "public"."schema_migrations" VALUES ('20170809202149');
INSERT INTO "public"."schema_migrations" VALUES ('20170809202219');
INSERT INTO "public"."schema_migrations" VALUES ('20170809202235');
INSERT INTO "public"."schema_migrations" VALUES ('20170809202257');
INSERT INTO "public"."schema_migrations" VALUES ('20170811014508');
INSERT INTO "public"."schema_migrations" VALUES ('20170811022137');
INSERT INTO "public"."schema_migrations" VALUES ('20170815011406');
INSERT INTO "public"."schema_migrations" VALUES ('20170815034200');
INSERT INTO "public"."schema_migrations" VALUES ('20170815035828');
INSERT INTO "public"."schema_migrations" VALUES ('20170823010626');
INSERT INTO "public"."schema_migrations" VALUES ('20170823011536');
INSERT INTO "public"."schema_migrations" VALUES ('20170823014027');
INSERT INTO "public"."schema_migrations" VALUES ('20170823202933');
INSERT INTO "public"."schema_migrations" VALUES ('20170823204554');
INSERT INTO "public"."schema_migrations" VALUES ('20170823210549');

-- ----------------------------
-- Table structure for userfacebooks
-- ----------------------------
DROP TABLE IF EXISTS "public"."userfacebooks";
CREATE TABLE "public"."userfacebooks" (
"id" int4 NOT NULL,
"provider" varchar COLLATE "default",
"uid" varchar COLLATE "default",
"name" varchar COLLATE "default",
"oauth_token" varchar COLLATE "default",
"oauth_expires_at" timestamp(6),
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of userfacebooks
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
"id" int4 NOT NULL,
"email" varchar COLLATE "default" DEFAULT ''::character varying NOT NULL,
"encrypted_password" varchar COLLATE "default" DEFAULT ''::character varying NOT NULL,
"reset_password_token" varchar COLLATE "default",
"reset_password_sent_at" timestamp(6),
"remember_created_at" timestamp(6),
"sign_in_count" int4 DEFAULT 0 NOT NULL,
"current_sign_in_at" timestamp(6),
"last_sign_in_at" timestamp(6),
"current_sign_in_ip" varchar COLLATE "default",
"last_sign_in_ip" varchar COLLATE "default",
"created_at" timestamp(6) NOT NULL,
"updated_at" timestamp(6) NOT NULL,
"role" varchar COLLATE "default" DEFAULT 'guess'::character varying,
"provider" varchar COLLATE "default",
"uid" varchar COLLATE "default",
"name" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES ('1', 'yadierq87@gmail.com', '$2a$11$G11gZgOw.HOPa5MKepLZaO9gye/wNtfcv6CXcQbg82cFCbtHVkmpG', null, null, null, '3', '2017-08-09 01:29:15.41206', '2017-08-03 15:12:46.368883', '::1', '::1', '2017-08-02 18:07:06.302648', '2017-08-11 02:08:04.766835', 'admin', null, null, null);
INSERT INTO "public"."users" VALUES ('2', 'german@uci.cu', '', null, null, null, '0', null, null, null, null, '2017-08-16 17:38:59.425787', '2017-08-16 17:38:59.425787', 'guess', null, null, 'german');

