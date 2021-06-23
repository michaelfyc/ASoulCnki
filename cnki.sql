drop table if exists user_dynamic;
CREATE TABLE `user_dynamic` (
  `dynamic_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '动态唯一id',
  `type_id` int(11) DEFAULT NULL COMMENT '动态类型, 用于获取评论',
  `oid` bigint(20) DEFAULT NULL COMMENT '动态对象id，用于获取评论',
  `status` int(11) DEFAULT NULL COMMENT '评论爬取状态，0: 未爬取， 1: 至少爬取完成过一次',
  PRIMARY KEY (`dynamic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table if exists kv;
CREATE TABLE `kv_store` (
  `field_name` varchar(255) NOT NULL,
  `field_value` text,
  PRIMARY KEY (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table if exists reply;
CREATE TABLE `reply` (
  `rpid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '回复id',
  `type_id` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL COMMENT '成员id',
  `oid` bigint(20) DEFAULT NULL COMMENT '原稿件id',
  `ctime` int(11) DEFAULT NULL COMMENT '创建时间',
  `m_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '昵称',
  `content` text CHARACTER SET utf8mb4 COMMENT '评论内容',
  `like_num` int(11) DEFAULT NULL,
  `json_text` text CHARACTER SET utf8mb4 COMMENT '爬虫原始数据',
  PRIMARY KEY (`rpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
