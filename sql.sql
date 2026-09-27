DROP TABLE IF EXISTS `ordinary_users`;
CREATE TABLE `ordinary_users`(
	   `ordinary_users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '普通用户ID',
`user_name` varchar(64) comment '用户姓名',
`user_gender` varchar(64) comment '用户性别',
`user_age` varchar(64) comment '用户年龄',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ordinary_users_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '普通用户';

DROP TABLE IF EXISTS `scenic_spot_administrator`;
CREATE TABLE `scenic_spot_administrator`(
	   `scenic_spot_administrator_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '景点管理员ID',
`name_of_scenic_spot` varchar(64) comment '景点名称',
`scenic_spot_address` varchar(64) comment '景点地址',
`applicant` varchar(64) comment '申请人',
`relevant_certificates` varchar(255) comment '相关证件',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (scenic_spot_administrator_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '景点管理员';

DROP TABLE IF EXISTS `hotel_reservation`;
CREATE TABLE `hotel_reservation`(
	   `hotel_reservation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '酒店预定ID',
`hotel_name` varchar(64) NOT NULL UNIQUE comment '酒店名称',
`hotel_address` varchar(64) comment '酒店地址',
`contact_number` varchar(64) comment '联系电话',
`room_type` varchar(64) comment '房间类型',
`bed_type` varchar(64) comment '床位类型',
`number_of_rooms` int(11) DEFAULT 0 comment '房间数量',
`room_price` int(11) DEFAULT 0 comment '房间价格',
`room_picture` varchar(255) comment '房间图片',
`room_details` longtext comment '房间详情',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (hotel_reservation_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '酒店预定';
insert into `hotel_reservation` values (1,'酒店名称1','酒店地址1','联系电话1','房间类型1','床位类型1',5,5,'/api/upload/image_1642315548254.jpg','此处可上传文字、图片、视频、超链接、表格等内容区1','86','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `hotel_reservation` values (2,'酒店名称2','酒店地址2','联系电话2','房间类型2','床位类型2',10,10,'/api/upload/image_1642315548309.jpg','此处可上传文字、图片、视频、超链接、表格等内容区2','202','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `hotel_reservation` values (3,'酒店名称3','酒店地址3','联系电话3','房间类型3','床位类型3',15,15,'/api/upload/image_1642315548254.jpg','此处可上传文字、图片、视频、超链接、表格等内容区3','801','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `hotel_reservation` values (4,'酒店名称4','酒店地址4','联系电话4','房间类型4','床位类型4',20,20,'/api/upload/image_1642315548266.jpg','此处可上传文字、图片、视频、超链接、表格等内容区4','996','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `hotel_reservation` values (5,'酒店名称5','酒店地址5','联系电话5','房间类型5','床位类型5',25,25,'/api/upload/image_1642315548254.jpg','此处可上传文字、图片、视频、超链接、表格等内容区5','871','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `hotel_reservation` values (6,'酒店名称6','酒店地址6','联系电话6','房间类型6','床位类型6',30,30,'/api/upload/image_1642315548254.jpg','此处可上传文字、图片、视频、超链接、表格等内容区6','728','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `hotel_reservation` values (7,'酒店名称7','酒店地址7','联系电话7','房间类型7','床位类型7',35,35,'/api/upload/image_1642315548309.jpg','此处可上传文字、图片、视频、超链接、表格等内容区7','569','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `hotel_reservation` values (8,'酒店名称8','酒店地址8','联系电话8','房间类型8','床位类型8',40,40,'/api/upload/image_1642315548285.jpg','此处可上传文字、图片、视频、超链接、表格等内容区8','499','0','2022-05-08 20:43:56','2022-05-08 20:43:56');

DROP TABLE IF EXISTS `room_reservation`;
CREATE TABLE `room_reservation`(
	   `room_reservation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房间预定ID',
`hotel_name` varchar(64) comment '酒店名称',
`hotel_address` varchar(64) comment '酒店地址',
`contact_number` varchar(64) comment '联系电话',
`room_type` varchar(64) comment '房间类型',
`bed_type` varchar(64) comment '床位类型',
`number_of_rooms` varchar(64) comment '房间数量',
`room_price` varchar(64) comment '房间价格',
`room_picture` varchar(255) comment '房间图片',
`scheduled_user` int(11) DEFAULT 0 comment '预定用户',
`user_name` varchar(64) comment '用户姓名',
`subscriber_telephone` varchar(64) comment '用户电话',
`scheduled_quantity` int(11) DEFAULT 0 comment '预定数量',
`payment_amount` varchar(64) comment '支付金额',
`scheduled_time` datetime comment '预定时间',
`check_in_status` varchar(64) comment '入住状态',
`reservation_remarks` text comment '预定备注',
`pay_state` varchar(16) DEFAULT '未支付' NOT NULL comment '支付状态',
`pay_type` varchar(16) DEFAULT '' comment '支付类型: 微信、支付宝、网银',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (room_reservation_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '房间预定';
insert into `room_reservation` values (1,'酒店名称1','酒店地址1','联系电话1','房间类型1','床位类型1','房间数量1','房间价格1','点此播放',0,'用户姓名1','用户电话1',5,'支付金额1','2022-5-8 20:43:56','入住状态1','预定备注1','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_reservation` values (2,'酒店名称2','酒店地址2','联系电话2','房间类型2','床位类型2','房间数量2','房间价格2','点此播放',0,'用户姓名2','用户电话2',10,'支付金额2','2022-5-8 20:43:56','入住状态2','预定备注2','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_reservation` values (3,'酒店名称3','酒店地址3','联系电话3','房间类型3','床位类型3','房间数量3','房间价格3','点此播放',0,'用户姓名3','用户电话3',15,'支付金额3','2022-5-8 20:43:56','入住状态3','预定备注3','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_reservation` values (4,'酒店名称4','酒店地址4','联系电话4','房间类型4','床位类型4','房间数量4','房间价格4','点此播放',0,'用户姓名4','用户电话4',20,'支付金额4','2022-5-8 20:43:56','入住状态4','预定备注4','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_reservation` values (5,'酒店名称5','酒店地址5','联系电话5','房间类型5','床位类型5','房间数量5','房间价格5','点此播放',0,'用户姓名5','用户电话5',25,'支付金额5','2022-5-8 20:43:56','入住状态5','预定备注5','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_reservation` values (6,'酒店名称6','酒店地址6','联系电话6','房间类型6','床位类型6','房间数量6','房间价格6','点此播放',0,'用户姓名6','用户电话6',30,'支付金额6','2022-5-8 20:43:56','入住状态6','预定备注6','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_reservation` values (7,'酒店名称7','酒店地址7','联系电话7','房间类型7','床位类型7','房间数量7','房间价格7','点此播放',0,'用户姓名7','用户电话7',35,'支付金额7','2022-5-8 20:43:56','入住状态7','预定备注7','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_reservation` values (8,'酒店名称8','酒店地址8','联系电话8','房间类型8','床位类型8','房间数量8','房间价格8','点此播放',0,'用户姓名8','用户电话8',40,'支付金额8','2022-5-8 20:43:56','入住状态8','预定备注8','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');

DROP TABLE IF EXISTS `room_cancellation`;
CREATE TABLE `room_cancellation`(
	   `room_cancellation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房间取消ID',
`hotel_name` varchar(64) comment '酒店名称',
`hotel_address` varchar(64) comment '酒店地址',
`contact_number` varchar(64) comment '联系电话',
`room_type` varchar(64) comment '房间类型',
`bed_type` varchar(64) comment '床位类型',
`room_price` varchar(64) comment '房间价格',
`room_picture` varchar(255) comment '房间图片',
`scheduled_user` int(11) DEFAULT 0 comment '预定用户',
`user_name` varchar(64) comment '用户姓名',
`subscriber_telephone` varchar(64) comment '用户电话',
`scheduled_quantity` varchar(64) comment '预定数量',
`payment_amount` varchar(64) comment '支付金额',
`scheduled_time` datetime comment '预定时间',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (room_cancellation_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '房间取消';
insert into `room_cancellation` values (1,'酒店名称1','酒店地址1','联系电话1','房间类型1','床位类型1','房间价格1','点此播放',0,'用户姓名1','用户电话1','预定数量1','支付金额1','2022-5-8 20:43:56','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_cancellation` values (2,'酒店名称2','酒店地址2','联系电话2','房间类型2','床位类型2','房间价格2','点此播放',0,'用户姓名2','用户电话2','预定数量2','支付金额2','2022-5-8 20:43:56','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_cancellation` values (3,'酒店名称3','酒店地址3','联系电话3','房间类型3','床位类型3','房间价格3','点此播放',0,'用户姓名3','用户电话3','预定数量3','支付金额3','2022-5-8 20:43:56','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_cancellation` values (4,'酒店名称4','酒店地址4','联系电话4','房间类型4','床位类型4','房间价格4','点此播放',0,'用户姓名4','用户电话4','预定数量4','支付金额4','2022-5-8 20:43:56','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_cancellation` values (5,'酒店名称5','酒店地址5','联系电话5','房间类型5','床位类型5','房间价格5','点此播放',0,'用户姓名5','用户电话5','预定数量5','支付金额5','2022-5-8 20:43:56','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_cancellation` values (6,'酒店名称6','酒店地址6','联系电话6','房间类型6','床位类型6','房间价格6','点此播放',0,'用户姓名6','用户电话6','预定数量6','支付金额6','2022-5-8 20:43:56','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_cancellation` values (7,'酒店名称7','酒店地址7','联系电话7','房间类型7','床位类型7','房间价格7','点此播放',0,'用户姓名7','用户电话7','预定数量7','支付金额7','2022-5-8 20:43:56','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `room_cancellation` values (8,'酒店名称8','酒店地址8','联系电话8','房间类型8','床位类型8','房间价格8','点此播放',0,'用户姓名8','用户电话8','预定数量8','支付金额8','2022-5-8 20:43:56','0','2022-05-08 20:43:56','2022-05-08 20:43:56');

DROP TABLE IF EXISTS `scenic_spot_ticket_purchase`;
CREATE TABLE `scenic_spot_ticket_purchase`(
	   `scenic_spot_ticket_purchase_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '景点购票ID',
`name_of_scenic_spot` varchar(64) comment '景点名称',
`scenic_spot_type` varchar(64) comment '景点类型',
`scenic_spot_address` varchar(64) comment '景点地址',
`ticket_price` int(11) DEFAULT 0 comment '门票价格',
`working_personnel` int(11) DEFAULT 0 comment '工作人员',
`opening_hours` varchar(64) comment '开放时间',
`scenic_spot_pictures` varchar(255) comment '景点图片',
`ticket_purchase_instructions` text comment '购票须知',
`introduction_to_scenic_spots` longtext comment '景点介绍',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (scenic_spot_ticket_purchase_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '景点购票';
insert into `scenic_spot_ticket_purchase` values (1,'景点名称1','景点类型1','景点地址1',5,0,'开放时间1','/api/upload/image_1615198958415.jpg','购票须知1','此处可上传文字、图片、视频、超链接、表格等内容区1','628','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `scenic_spot_ticket_purchase` values (2,'景点名称2','景点类型2','景点地址2',10,0,'开放时间2','/api/upload/image_1615206273491.jpg','购票须知2','此处可上传文字、图片、视频、超链接、表格等内容区2','841','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `scenic_spot_ticket_purchase` values (3,'景点名称3','景点类型3','景点地址3',15,0,'开放时间3','/api/upload/image_1615206273485.jpg','购票须知3','此处可上传文字、图片、视频、超链接、表格等内容区3','160','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `scenic_spot_ticket_purchase` values (4,'景点名称4','景点类型4','景点地址4',20,0,'开放时间4','/api/upload/image_1615198957689.jpg','购票须知4','此处可上传文字、图片、视频、超链接、表格等内容区4','826','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `scenic_spot_ticket_purchase` values (5,'景点名称5','景点类型5','景点地址5',25,0,'开放时间5','/api/upload/image_1615198952050.jpg','购票须知5','此处可上传文字、图片、视频、超链接、表格等内容区5','453','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `scenic_spot_ticket_purchase` values (6,'景点名称6','景点类型6','景点地址6',30,0,'开放时间6','/api/upload/image_1615198958415.jpg','购票须知6','此处可上传文字、图片、视频、超链接、表格等内容区6','22','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `scenic_spot_ticket_purchase` values (7,'景点名称7','景点类型7','景点地址7',35,0,'开放时间7','/api/upload/image_1615206273469.jpg','购票须知7','此处可上传文字、图片、视频、超链接、表格等内容区7','817','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `scenic_spot_ticket_purchase` values (8,'景点名称8','景点类型8','景点地址8',40,0,'开放时间8','/api/upload/image_1615198969403.jpg','购票须知8','此处可上传文字、图片、视频、超链接、表格等内容区8','323','0','2022-05-08 20:43:56','2022-05-08 20:43:56');

DROP TABLE IF EXISTS `ticket_information`;
CREATE TABLE `ticket_information`(
	   `ticket_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购票信息ID',
`name_of_scenic_spot` varchar(64) comment '景点名称',
`scenic_spot_type` varchar(64) comment '景点类型',
`scenic_spot_address` varchar(64) comment '景点地址',
`working_personnel` int(11) DEFAULT 0 comment '工作人员',
`ticket_price` varchar(64) comment '门票价格',
`opening_hours` varchar(64) comment '开放时间',
`scenic_spot_pictures` varchar(255) comment '景点图片',
`ticket_user` int(11) DEFAULT 0 comment '购票用户',
`user_name` varchar(64) comment '用户姓名',
`subscriber_telephone` varchar(64) comment '用户电话',
`ticket_quantity` int(11) DEFAULT 0 comment '购票数量',
`payment_amount` varchar(64) comment '支付金额',
`pay_state` varchar(16) DEFAULT '未支付' NOT NULL comment '支付状态',
`pay_type` varchar(16) DEFAULT '' comment '支付类型: 微信、支付宝、网银',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ticket_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '购票信息';
insert into `ticket_information` values (1,'景点名称1','景点类型1','景点地址1',0,'门票价格1','开放时间1','点此播放',0,'用户姓名1','用户电话1',5,'支付金额1','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_information` values (2,'景点名称2','景点类型2','景点地址2',0,'门票价格2','开放时间2','点此播放',0,'用户姓名2','用户电话2',10,'支付金额2','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_information` values (3,'景点名称3','景点类型3','景点地址3',0,'门票价格3','开放时间3','点此播放',0,'用户姓名3','用户电话3',15,'支付金额3','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_information` values (4,'景点名称4','景点类型4','景点地址4',0,'门票价格4','开放时间4','点此播放',0,'用户姓名4','用户电话4',20,'支付金额4','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_information` values (5,'景点名称5','景点类型5','景点地址5',0,'门票价格5','开放时间5','点此播放',0,'用户姓名5','用户电话5',25,'支付金额5','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_information` values (6,'景点名称6','景点类型6','景点地址6',0,'门票价格6','开放时间6','点此播放',0,'用户姓名6','用户电话6',30,'支付金额6','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_information` values (7,'景点名称7','景点类型7','景点地址7',0,'门票价格7','开放时间7','点此播放',0,'用户姓名7','用户电话7',35,'支付金额7','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_information` values (8,'景点名称8','景点类型8','景点地址8',0,'门票价格8','开放时间8','点此播放',0,'用户姓名8','用户电话8',40,'支付金额8','未支付','支付宝','0','2022-05-08 20:43:56','2022-05-08 20:43:56');

DROP TABLE IF EXISTS `ticket_cancellation`;
CREATE TABLE `ticket_cancellation`(
	   `ticket_cancellation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购票取消ID',
`name_of_scenic_spot` varchar(64) comment '景点名称',
`scenic_spot_type` varchar(64) comment '景点类型',
`scenic_spot_address` varchar(64) comment '景点地址',
`working_personnel` int(11) DEFAULT 0 comment '工作人员',
`ticket_price` varchar(64) comment '门票价格',
`opening_hours` varchar(64) comment '开放时间',
`scenic_spot_pictures` varchar(255) comment '景点图片',
`ticket_user` int(11) DEFAULT 0 comment '购票用户',
`user_name` varchar(64) comment '用户姓名',
`subscriber_telephone` varchar(64) comment '用户电话',
`ticket_quantity` int(11) DEFAULT 0 comment '购票数量',
`payment_amount` varchar(64) comment '支付金额',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ticket_cancellation_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '购票取消';
insert into `ticket_cancellation` values (1,'景点名称1','景点类型1','景点地址1',0,'门票价格1','开放时间1','点此播放',0,'用户姓名1','用户电话1',5,'支付金额1','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_cancellation` values (2,'景点名称2','景点类型2','景点地址2',0,'门票价格2','开放时间2','点此播放',0,'用户姓名2','用户电话2',10,'支付金额2','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_cancellation` values (3,'景点名称3','景点类型3','景点地址3',0,'门票价格3','开放时间3','点此播放',0,'用户姓名3','用户电话3',15,'支付金额3','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_cancellation` values (4,'景点名称4','景点类型4','景点地址4',0,'门票价格4','开放时间4','点此播放',0,'用户姓名4','用户电话4',20,'支付金额4','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_cancellation` values (5,'景点名称5','景点类型5','景点地址5',0,'门票价格5','开放时间5','点此播放',0,'用户姓名5','用户电话5',25,'支付金额5','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_cancellation` values (6,'景点名称6','景点类型6','景点地址6',0,'门票价格6','开放时间6','点此播放',0,'用户姓名6','用户电话6',30,'支付金额6','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_cancellation` values (7,'景点名称7','景点类型7','景点地址7',0,'门票价格7','开放时间7','点此播放',0,'用户姓名7','用户电话7',35,'支付金额7','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `ticket_cancellation` values (8,'景点名称8','景点类型8','景点地址8',0,'门票价格8','开放时间8','点此播放',0,'用户姓名8','用户电话8',40,'支付金额8','0','2022-05-08 20:43:56','2022-05-08 20:43:56');

DROP TABLE IF EXISTS `tourist_route`;
CREATE TABLE `tourist_route`(
	   `tourist_route_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '旅游路线ID',
`route_name` varchar(64) comment '路线名称',
`route_type` varchar(64) comment '路线类型',
`route_starting_point` varchar(64) comment '路线起点',
`route_end` varchar(64) comment '路线终点',
`cover_picture` varchar(255) comment '封面图',
`applicant` int(11) DEFAULT 0 comment '申请人',
`route_details` longtext comment '路线详情',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (tourist_route_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '旅游路线';
insert into `tourist_route` values (1,'路线名称1','路线类型1','路线起点1','路线终点1','/api/upload/image_1615198957318.jpg',0,'此处可上传文字、图片、视频、超链接、表格等内容区1','241','624','未审核','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `tourist_route` values (2,'路线名称2','路线类型2','路线起点2','路线终点2','/api/upload/image_1615206273492.jpg',0,'此处可上传文字、图片、视频、超链接、表格等内容区2','743','625','未审核','0','2022-05-08 20:43:56','2022-05-08 20:43:56');
insert into `tourist_route` values (3,'路线名称3','路线类型3','路线起点3','路线终点3','/api/upload/image_1615206273494.jpg',0,'此处可上传文字、图片、视频、超链接、表格等内容区3','292','382','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');
insert into `tourist_route` values (4,'路线名称4','路线类型4','路线起点4','路线终点4','/api/upload/image_1615206273485.jpg',0,'此处可上传文字、图片、视频、超链接、表格等内容区4','552','427','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');
insert into `tourist_route` values (5,'路线名称5','路线类型5','路线起点5','路线终点5','/api/upload/image_1615206273494.jpg',0,'此处可上传文字、图片、视频、超链接、表格等内容区5','733','874','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');
insert into `tourist_route` values (6,'路线名称6','路线类型6','路线起点6','路线终点6','/api/upload/image_1615206273491.jpg',0,'此处可上传文字、图片、视频、超链接、表格等内容区6','200','916','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');
insert into `tourist_route` values (7,'路线名称7','路线类型7','路线起点7','路线终点7','/api/upload/image_1615206273525.jpg',0,'此处可上传文字、图片、视频、超链接、表格等内容区7','453','296','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');
insert into `tourist_route` values (8,'路线名称8','路线类型8','路线起点8','路线终点8','/api/upload/image_1615206273491.jpg',0,'此处可上传文字、图片、视频、超链接、表格等内容区8','822','65','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');

DROP TABLE IF EXISTS `ticket_check_information`;
CREATE TABLE `ticket_check_information`(
	   `ticket_check_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '验票信息ID',
`name_of_scenic_spot` varchar(64) comment '景点名称',
`scenic_spot_type` varchar(64) comment '景点类型',
`scenic_spot_address` varchar(64) comment '景点地址',
`working_personnel` int(11) DEFAULT 0 comment '工作人员',
`ticket_user` int(11) DEFAULT 0 comment '购票用户',
`user_name` varchar(64) comment '用户姓名',
`subscriber_telephone` varchar(64) comment '用户电话',
`health_code` varchar(255) comment '健康码',
`travel_code` varchar(255) comment '行程码',
`ticket_checking_time` datetime comment '验票时间',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (ticket_check_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '验票信息';
insert into `ticket_check_information` values (1,'景点名称1','景点类型1','景点地址1',0,0,'用户姓名1','用户电话1','点此播放','点此播放','2022-5-8 20:43:57','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');
insert into `ticket_check_information` values (2,'景点名称2','景点类型2','景点地址2',0,0,'用户姓名2','用户电话2','点此播放','点此播放','2022-5-8 20:43:57','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');
insert into `ticket_check_information` values (3,'景点名称3','景点类型3','景点地址3',0,0,'用户姓名3','用户电话3','点此播放','点此播放','2022-5-8 20:43:57','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');
insert into `ticket_check_information` values (4,'景点名称4','景点类型4','景点地址4',0,0,'用户姓名4','用户电话4','点此播放','点此播放','2022-5-8 20:43:57','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');
insert into `ticket_check_information` values (5,'景点名称5','景点类型5','景点地址5',0,0,'用户姓名5','用户电话5','点此播放','点此播放','2022-5-8 20:43:57','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');
insert into `ticket_check_information` values (6,'景点名称6','景点类型6','景点地址6',0,0,'用户姓名6','用户电话6','点此播放','点此播放','2022-5-8 20:43:57','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');
insert into `ticket_check_information` values (7,'景点名称7','景点类型7','景点地址7',0,0,'用户姓名7','用户电话7','点此播放','点此播放','2022-5-8 20:43:57','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');
insert into `ticket_check_information` values (8,'景点名称8','景点类型8','景点地址8',0,0,'用户姓名8','用户电话8','点此播放','点此播放','2022-5-8 20:43:57','未审核','0','2022-05-08 20:43:57','2022-05-08 20:43:57');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` varchar(500) DEFAULT NULL COMMENT '添加字段：',
  `field_set` varchar(500) DEFAULT NULL COMMENT '修改字段：',
  `field_get` varchar(500) DEFAULT NULL COMMENT '查询字段：',
  `table_nav_name` varchar(255) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(255) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定制授权';
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏：';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告：';
insert into `notice` values ('1','公告标题1','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ");
insert into `notice` values ('2','公告标题2','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ");
insert into `notice` values ('3','公告标题3','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ");
insert into `notice` values ('4','公告标题4','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ");
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-05-19 07:32:09.000 ","2022-05-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-30 12:03:25.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-05-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `auth` values ('1','景点管理员','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','0','0','0','0','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('2','景点管理员','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','0','0','0','0','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('3','景点管理员','景点管理员','scenic_spot_administrator','景点管理员','/scenic_spot_administrator/table','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates',null,'0','{"examine":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('4','景点管理员','景点管理员','scenic_spot_administrator','景点管理员详情','/scenic_spot_administrator/view','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('5','景点管理员','酒店预定','hotel_reservation','酒店预定','/hotel_reservation/table','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{"can_show_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('6','景点管理员','酒店预定','hotel_reservation','酒店预定详情','/hotel_reservation/view','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('7','景点管理员','酒店预定','hotel_reservation','酒店预定','/hotel_reservation/list','top','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('8','景点管理员','酒店预定','hotel_reservation','酒店预定详情','/hotel_reservation/details','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('9','景点管理员','房间预定','room_reservation','房间预定','/room_reservation/table','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks',null,'0','{"pay":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('10','景点管理员','房间预定','room_reservation','房间预定详情','/room_reservation/view','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('11','景点管理员','房间预定','room_reservation','房间预定编辑','/room_reservation/edit','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('12','景点管理员','房间取消','room_cancellation','房间取消','/room_cancellation/table','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('13','景点管理员','房间取消','room_cancellation','房间取消详情','/room_cancellation/view','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('14','景点管理员','景点购票','scenic_spot_ticket_purchase','景点购票','/scenic_spot_ticket_purchase/table','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{"can_show_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('15','景点管理员','景点购票','scenic_spot_ticket_purchase','景点购票详情','/scenic_spot_ticket_purchase/view','','_blank','1','1','1','1','ticket_purchase_instructions,scenic_spot_pictures,introduction_to_scenic_spots,opening_hours,ticket_price,scenic_spot_type,scenic_spot_address,name_of_scenic_spot','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('16','景点管理员','景点购票','scenic_spot_ticket_purchase','景点购票','/scenic_spot_ticket_purchase/list','top','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('17','景点管理员','景点购票','scenic_spot_ticket_purchase','景点购票详情','/scenic_spot_ticket_purchase/details','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('18','景点管理员','购票信息','ticket_information','购票信息','/ticket_information/table','','_blank','0','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{"pay":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('19','景点管理员','购票信息','ticket_information','购票信息详情','/ticket_information/view','','_blank','0','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('20','景点管理员','购票信息','ticket_information','购票信息编辑','/ticket_information/edit','','_blank','0','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('21','景点管理员','购票取消','ticket_cancellation','购票取消','/ticket_cancellation/table','','_blank','0','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('22','景点管理员','购票取消','ticket_cancellation','购票取消详情','/ticket_cancellation/view','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('23','景点管理员','旅游路线','tourist_route','旅游路线','/tourist_route/table','','_blank','1','1','1','1','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{"examine":false,"can_show_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('24','景点管理员','旅游路线','tourist_route','旅游路线详情','/tourist_route/view','','_blank','1','1','1','1','route_end,cover_picture,route_details,route_starting_point,route_type,route_name','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('25','景点管理员','旅游路线','tourist_route','旅游路线','/tourist_route/list','top','_blank','0','0','0','0','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('26','景点管理员','旅游路线','tourist_route','旅游路线详情','/tourist_route/details','','_blank','0','0','0','0','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('27','景点管理员','验票信息','ticket_check_information','验票信息','/ticket_check_information/table','','_blank','0','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time',null,'0','{"examine":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('28','景点管理员','验票信息','ticket_check_information','验票信息详情','/ticket_check_information/view','','_blank','0','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('29','景点管理员','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('30','景点管理员','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('31','景点管理员','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('32','景点管理员','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('33','景点管理员','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('34','普通用户','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','0','0','0','0','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('35','普通用户','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','0','0','0','0','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('36','普通用户','景点管理员','scenic_spot_administrator','景点管理员','/scenic_spot_administrator/table','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates',null,'0','{"examine":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('37','普通用户','景点管理员','scenic_spot_administrator','景点管理员详情','/scenic_spot_administrator/view','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('38','普通用户','酒店预定','hotel_reservation','酒店预定','/hotel_reservation/table','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{"can_show_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('39','普通用户','酒店预定','hotel_reservation','酒店预定详情','/hotel_reservation/view','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('40','普通用户','酒店预定','hotel_reservation','酒店预定','/hotel_reservation/list','top','_blank','1','1','1','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('41','普通用户','酒店预定','hotel_reservation','酒店预定详情','/hotel_reservation/details','','_blank','1','1','1','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('42','普通用户','房间预定','room_reservation','房间预定','/room_reservation/table','','_blank','0','0','0','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks',null,'0','{"pay":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('43','普通用户','房间预定','room_reservation','房间预定详情','/room_reservation/view','','_blank','0','0','0','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('44','普通用户','房间预定','room_reservation','房间预定编辑','/room_reservation/edit','','_blank','1','1','1','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('45','普通用户','房间取消','room_cancellation','房间取消','/room_cancellation/table','','_blank','1','0','0','1','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('46','普通用户','房间取消','room_cancellation','房间取消详情','/room_cancellation/view','','_blank','1','0','0','1','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('47','普通用户','景点购票','scenic_spot_ticket_purchase','景点购票','/scenic_spot_ticket_purchase/table','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{"can_show_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('48','普通用户','景点购票','scenic_spot_ticket_purchase','景点购票详情','/scenic_spot_ticket_purchase/view','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('49','普通用户','景点购票','scenic_spot_ticket_purchase','景点购票','/scenic_spot_ticket_purchase/list','top','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('50','普通用户','景点购票','scenic_spot_ticket_purchase','景点购票详情','/scenic_spot_ticket_purchase/details','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('51','普通用户','购票信息','ticket_information','购票信息','/ticket_information/table','','_blank','0','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{"pay":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('52','普通用户','购票信息','ticket_information','购票信息详情','/ticket_information/view','','_blank','0','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('53','普通用户','购票信息','ticket_information','购票信息编辑','/ticket_information/edit','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('54','普通用户','购票取消','ticket_cancellation','购票取消','/ticket_cancellation/table','','_blank','1','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('55','普通用户','购票取消','ticket_cancellation','购票取消详情','/ticket_cancellation/view','','_blank','1','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('56','普通用户','旅游路线','tourist_route','旅游路线','/tourist_route/table','','_blank','0','0','0','0','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{"examine":false,"can_show_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('57','普通用户','旅游路线','tourist_route','旅游路线详情','/tourist_route/view','','_blank','0','0','0','0','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('58','普通用户','旅游路线','tourist_route','旅游路线','/tourist_route/list','top','_blank','1','1','1','1','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('59','普通用户','旅游路线','tourist_route','旅游路线详情','/tourist_route/details','','_blank','1','1','1','1','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('60','普通用户','验票信息','ticket_check_information','验票信息','/ticket_check_information/table','','_blank','1','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time',null,'0','{"examine":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('61','普通用户','验票信息','ticket_check_information','验票信息详情','/ticket_check_information/view','','_blank','1','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('62','普通用户','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('63','普通用户','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('64','普通用户','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('65','普通用户','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('66','普通用户','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('67','管理员','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','1','1','1','1','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('68','管理员','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','1','1','1','1','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('69','管理员','景点管理员','scenic_spot_administrator','景点管理员','/scenic_spot_administrator/table','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates',null,'0','{"examine":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('70','管理员','景点管理员','scenic_spot_administrator','景点管理员详情','/scenic_spot_administrator/view','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('71','管理员','酒店预定','hotel_reservation','酒店预定','/hotel_reservation/table','','_blank','1','1','1','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{"can_show_comment":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('72','管理员','酒店预定','hotel_reservation','酒店预定详情','/hotel_reservation/view','','_blank','1','1','1','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('73','管理员','酒店预定','hotel_reservation','酒店预定','/hotel_reservation/list','top','_blank','1','1','1','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('74','管理员','酒店预定','hotel_reservation','酒店预定详情','/hotel_reservation/details','','_blank','1','1','1','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('75','管理员','房间预定','room_reservation','房间预定','/room_reservation/table','','_blank','1','1','1','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks',null,'0','{"pay":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('76','管理员','房间预定','room_reservation','房间预定详情','/room_reservation/view','','_blank','1','1','1','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('77','管理员','房间预定','room_reservation','房间预定编辑','/room_reservation/edit','','_blank','1','1','1','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('78','管理员','房间取消','room_cancellation','房间取消','/room_cancellation/table','','_blank','1','1','1','1','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('79','管理员','房间取消','room_cancellation','房间取消详情','/room_cancellation/view','','_blank','1','1','1','1','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('80','管理员','景点购票','scenic_spot_ticket_purchase','景点购票','/scenic_spot_ticket_purchase/table','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{"can_show_comment":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('81','管理员','景点购票','scenic_spot_ticket_purchase','景点购票详情','/scenic_spot_ticket_purchase/view','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('82','管理员','景点购票','scenic_spot_ticket_purchase','景点购票','/scenic_spot_ticket_purchase/list','top','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('83','管理员','景点购票','scenic_spot_ticket_purchase','景点购票详情','/scenic_spot_ticket_purchase/details','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('84','管理员','购票信息','ticket_information','购票信息','/ticket_information/table','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{"pay":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('85','管理员','购票信息','ticket_information','购票信息详情','/ticket_information/view','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('86','管理员','购票信息','ticket_information','购票信息编辑','/ticket_information/edit','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('87','管理员','购票取消','ticket_cancellation','购票取消','/ticket_cancellation/table','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('88','管理员','购票取消','ticket_cancellation','购票取消详情','/ticket_cancellation/view','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('89','管理员','旅游路线','tourist_route','旅游路线','/tourist_route/table','','_blank','1','1','1','1','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{"examine":true,"can_show_comment":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('90','管理员','旅游路线','tourist_route','旅游路线详情','/tourist_route/view','','_blank','1','1','1','1','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('91','管理员','旅游路线','tourist_route','旅游路线','/tourist_route/list','top','_blank','1','1','1','1','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('92','管理员','旅游路线','tourist_route','旅游路线详情','/tourist_route/details','','_blank','1','1','1','1','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('93','管理员','验票信息','ticket_check_information','验票信息','/ticket_check_information/table','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time',null,'0','{"examine":true}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('94','管理员','验票信息','ticket_check_information','验票信息详情','/ticket_check_information/view','','_blank','1','1','1','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('95','管理员','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('96','管理员','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('97','管理员','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('98','管理员','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('99','管理员','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('100','游客','普通用户','ordinary_users','普通用户','/ordinary_users/table','','_blank','1','0','0','0','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('101','游客','普通用户','ordinary_users','普通用户详情','/ordinary_users/view','','_blank','1','0','0','0','user_name,user_gender,user_age','user_name,user_gender,user_age','user_name,user_gender,user_age',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('102','游客','景点管理员','scenic_spot_administrator','景点管理员','/scenic_spot_administrator/table','','_blank','1','0','0','0','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates',null,'0','{"examine":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('103','游客','景点管理员','scenic_spot_administrator','景点管理员详情','/scenic_spot_administrator/view','','_blank','1','0','0','0','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates','name_of_scenic_spot,scenic_spot_address,applicant,relevant_certificates',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('104','游客','酒店预定','hotel_reservation','酒店预定','/hotel_reservation/table','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{"can_show_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('105','游客','酒店预定','hotel_reservation','酒店预定详情','/hotel_reservation/view','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('106','游客','酒店预定','hotel_reservation','酒店预定','/hotel_reservation/list','top','_blank','0','0','0','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('107','游客','酒店预定','hotel_reservation','酒店预定详情','/hotel_reservation/details','','_blank','0','0','0','1','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,room_details',null,'0','{"can_show_comment":true,"can_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('108','游客','房间预定','room_reservation','房间预定','/room_reservation/table','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks',null,'0','{"pay":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('109','游客','房间预定','room_reservation','房间预定详情','/room_reservation/view','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('110','游客','房间预定','room_reservation','房间预定编辑','/room_reservation/edit','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks','hotel_name,hotel_address,contact_number,room_type,bed_type,number_of_rooms,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time,check_in_status,reservation_remarks',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('111','游客','房间取消','room_cancellation','房间取消','/room_cancellation/table','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('112','游客','房间取消','room_cancellation','房间取消详情','/room_cancellation/view','','_blank','0','0','0','0','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time','hotel_name,hotel_address,contact_number,room_type,bed_type,room_price,room_picture,scheduled_user,user_name,subscriber_telephone,scheduled_quantity,payment_amount,scheduled_time',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('113','游客','景点购票','scenic_spot_ticket_purchase','景点购票','/scenic_spot_ticket_purchase/table','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{"can_show_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('114','游客','景点购票','scenic_spot_ticket_purchase','景点购票详情','/scenic_spot_ticket_purchase/view','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('115','游客','景点购票','scenic_spot_ticket_purchase','景点购票','/scenic_spot_ticket_purchase/list','top','_blank','0','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('116','游客','景点购票','scenic_spot_ticket_purchase','景点购票详情','/scenic_spot_ticket_purchase/details','','_blank','0','0','0','1','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,ticket_price,working_personnel,opening_hours,scenic_spot_pictures,ticket_purchase_instructions,introduction_to_scenic_spots',null,'0','{"can_show_comment":true,"can_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('117','游客','购票信息','ticket_information','购票信息','/ticket_information/table','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{"pay":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('118','游客','购票信息','ticket_information','购票信息详情','/ticket_information/view','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('119','游客','购票信息','ticket_information','购票信息编辑','/ticket_information/edit','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('120','游客','购票取消','ticket_cancellation','购票取消','/ticket_cancellation/table','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('121','游客','购票取消','ticket_cancellation','购票取消详情','/ticket_cancellation/view','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_price,opening_hours,scenic_spot_pictures,ticket_user,user_name,subscriber_telephone,ticket_quantity,payment_amount',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('122','游客','旅游路线','tourist_route','旅游路线','/tourist_route/table','','_blank','0','0','0','0','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{"examine":false,"can_show_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('123','游客','旅游路线','tourist_route','旅游路线详情','/tourist_route/view','','_blank','0','0','0','0','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('124','游客','旅游路线','tourist_route','旅游路线','/tourist_route/list','top','_blank','0','0','0','1','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('125','游客','旅游路线','tourist_route','旅游路线详情','/tourist_route/details','','_blank','0','0','0','1','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details','route_name,route_type,route_starting_point,route_end,cover_picture,applicant,route_details',null,'0','{"can_show_comment":true,"can_comment":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('126','游客','验票信息','ticket_check_information','验票信息','/ticket_check_information/table','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time',null,'0','{"examine":false}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('127','游客','验票信息','ticket_check_information','验票信息详情','/ticket_check_information/view','','_blank','0','0','0','0','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time','name_of_scenic_spot,scenic_spot_type,scenic_spot_address,working_personnel,ticket_user,user_name,subscriber_telephone,health_code,travel_code,ticket_checking_time',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('128','游客','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('129','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('130','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('131','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `auth` values ('132','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `user_group` values ('1','100','景点管理员',null,'scenic_spot_administrator','scenic_spot_administrator_id','0','1',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `user_group` values ('2','100','普通用户',null,'ordinary_users','ordinary_users_id','0','3',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `user_group` values ('3','100','管理员',null,'','','0',null,"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `user_group` values ('4','100','游客',null,'','','0','0',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/image_1615198875648.jpg','81',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/image_1615198875774.jpg','32',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/image_1615206244747.jpg','797',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `slides` values ('4','轮播图4','内容4','/article/details?article=4','/api/upload/image_1615198875774.jpg','386',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `slides` values ('5','轮播图5','内容5','/article/details?article=5','/api/upload/image_1615198876392.jpg','476',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
insert into `slides` values ('6','轮播图6','内容6','/article/details?article=6','/api/upload/image_1615198875661.jpg','710',"2022-05-08 12:43:57.000 ","2022-05-08 12:43:57.000 ");
