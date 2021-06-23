drop table if exists user_dynamic;
CREATE TABLE `user_dynamic` (
  `dynamic_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `oid` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
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
  `rpid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `oid` bigint(20) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `m_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  `like_num` int(11) DEFAULT NULL,
  `json_text` text CHARACTER SET utf8,
  PRIMARY KEY (`rpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
