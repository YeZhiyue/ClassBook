DROP DATABASE IF EXISTS classConcatDB;
CREATE DATABASE IF NOT EXISTS classConcatDB;
USE classConcatDB;
DROP TABLE IF EXISTS user;
SELECT DATABASE();
CREATE TABLE user (
  id         INT(11)     NOT NULL AUTO_INCREMENT
  comment '用户与外键关联列',
  username   VARCHAR(32) unique default '...'
  COMMENT '用户名称',
  password   varchar(20) not null default '...'
  comment '用户密码',
  email      varchar(20) not null default '...'
  comment '用户邮箱',
  sex        varchar(1)  not null
  comment '用户性别',
  phone      varchar(20) not null default '...'
  comment '用户手机号',
  img        varchar(50) not null default '...'
  comment '用户头像',
  qq         varchar(20) default '...'
  comment '用户QQ',
  wchat      varchar(20) default '...'
  comment '用户微信',
  class      varchar(7)  not null default '...'
  comment '用户班级',
  birthday   datetime
  comment '用户生日',
  login_date DATETIME
  COMMENT '注册日期',
  hobby         varchar(20) default '...'
  comment '用户爱好',
  introduce         varchar(300) default '...'
  comment '用户个人介绍',
  PRIMARY KEY (id)
)
  ENGINE = INNODB
  DEFAULT CHARSET = utf8;

INSERT INTO user ()
VALUES
       (null,'叶之越','000000a','739253436@qq.com','男','1569201209','head_img_35.jpg','739153436','15669201209','物联网172','1998-12-28 17:47:08','2020-04-11 17:47:08','飞来飞去','上蹿下跳'),
       (null,'熊朝阳','000000a','739253436@qq.com','男','1569201209','head_img_1.jpg','739153436','15669201209','物联网172','1998-12-28 17:47:08','2020-04-11 17:47:08','飞来飞去','上蹿下跳'),
       (null,'金超超','000000a','739253436@qq.com','男','1569201209','head_img_2.jpg','739153436','15669201209','物联网172','1998-12-28 17:47:08','2020-04-11 17:47:08','飞来飞去','上蹿下跳');

SELECT *
FROM USER;

# DROP DATABASE IF EXISTS classConcatDB;
# CREATE DATABASE IF NOT EXISTS classConcatDB;
USE classConcatDB;
# 用户私信表
DROP TABLE IF EXISTS per_email;
SELECT DATABASE();
CREATE TABLE per_email (
  id         INT(11)     NOT NULL AUTO_INCREMENT
  comment '用于标号',
  user_from  int(11) not null
  comment '发送私信的人的id',
  user_to  int(11) not null
  comment '接收私信的人的id',
  date       datetime not null
  comment '发送私信的时间记录',
  content varchar(300) not null default '...'
  comment '私信内容，暂时设置在300字以内',
  PRIMARY KEY (id),
  constraint email_user_from_foreign foreign key (user_from) references user(id),
  constraint email_user_to_foreign foreign key (user_to) references user(id)
)
  ENGINE = INNODB
  DEFAULT CHARSET = utf8;

INSERT INTO per_email ()
VALUES
       (null, 1, 2, '1998-12-28 17:47:08', '我发送了一条私信给你！'),
       (null, 1, 3, '1998-12-28 17:47:08', '我发送了一条私信给你！'),
       (null, 3, 1, '1998-12-28 17:47:08', '我发送了一条私信给你！')
;

SELECT *
FROM per_email;

# DROP DATABASE IF EXISTS classConcatDB;
# CREATE DATABASE IF NOT EXISTS classConcatDB;
USE classConcatDB;
# 用户私信表
DROP TABLE IF EXISTS per_passage;
SELECT DATABASE();
CREATE TABLE per_passage (
  id         INT(11)     NOT NULL AUTO_INCREMENT
  comment '用于标号',
  edit_user  int(11) not null
  comment '进行信息编辑的人的id号，需要为其设置外键',
  date  datetime not null
  comment '接收私信的人的id',
  content varchar(300) not null default '...'
  comment '私信内容，暂时设置在300字以内',
  PRIMARY KEY (id),
  constraint per_passage_edit_user foreign key (edit_user) references user(id)
)
  ENGINE = INNODB
  DEFAULT CHARSET = utf8;

INSERT INTO per_passage ()
VALUES
       (null, 1, '2020-4-11 17:47:08', '我在班级写了一条留言板1！'),
       (null, 1, '2020-4-11 17:47:08', '我在班级写了一条留言板2！'),
       (null, 1, '2020-4-11 17:47:08', '我在班级写了一条留言板3！')
;

SELECT *
FROM per_passage;


# DROP DATABASE IF EXISTS classConcatDB;
# CREATE DATABASE IF NOT EXISTS classConcatDB;
USE classConcatDB;
# 用户私信表
DROP TABLE IF EXISTS img;
SELECT DATABASE();
CREATE TABLE img (
  id       INT(11)     NOT NULL AUTO_INCREMENT
  comment '用于标号',
  img_name varchar(40) not null
  comment '图片文件名',
  img_type varchar(15) not null
  comment '图片文件用途',
  is_use   varchar(6)  not null
  comment '图片是否可用',
  PRIMARY KEY (id)
  #   constraint email_foreign foreign key
)
  ENGINE = INNODB
  DEFAULT CHARSET = utf8;

INSERT INTO img ()
VALUES (null, 'head_img_0.jpg', '头像', 'true'),
       (null, 'head_img_1.jpg', '头像', 'true'),
       (null, 'head_img_10.jpg', '头像', 'true'),
       (null, 'head_img_11.jpg', '头像', 'true'),
       (null, 'head_img_12.jpg', '头像', 'true'),
       (null, 'head_img_13.jpg', '头像', 'true'),
       (null, 'head_img_14.jpg', '头像', 'true'),
       (null, 'head_img_15.jpg', '头像', 'true'),
       (null, 'head_img_16.jpg', '头像', 'true'),
       (null, 'head_img_17.jpg', '头像', 'true'),
       (null, 'head_img_18.jpg', '头像', 'true'),
       (null, 'head_img_2.jpg', '头像', 'true'),
       (null, 'head_img_3.jpg', '头像', 'true'),
       (null, 'head_img_4.jpg', '头像', 'true'),
       (null, 'head_img_5.jpg', '头像', 'true'),
       (null, 'head_img_6.jpg', '头像', 'true'),
       (null, 'head_img_7.jpg', '头像', 'true'),
       (null, 'head_img_8.jpg', '头像', 'true'),
       (null, 'head_img_9.jpg', '头像', 'true');

SELECT *
FROM img;


use classconcatdb;

insert into user value
                       (null,'王三','000000a','739251000@qq.com','男','1569201001','head_img_0.jpg','739100236','15669210039','物联网171','1930-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'王四','000000a','739251004@qq.com','男','1569201005','head_img_1.jpg','739100636','15669210079','物联网172','1931-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'王五','000000a','739251008@qq.com','男','1569201009','head_img_2.jpg','739101036','15669210119','物联网173','1932-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'王六','000000a','739251012@qq.com','男','1569201013','head_img_3.jpg','739101436','15669210159','物联网174','1933-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'王七','000000a','739251016@qq.com','男','1569201017','head_img_4.jpg','739101836','15669210199','物联网171','1934-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'李三','000000a','739251020@qq.com','男','1569201021','head_img_5.jpg','739102236','15669210239','物联网172','1935-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'李四','000000a','739251024@qq.com','男','1569201025','head_img_6.jpg','739102636','15669210279','物联网173','1936-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'李五','000000a','739251028@qq.com','男','1569201029','head_img_7.jpg','739103036','15669210319','物联网174','1937-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'李六','000000a','739251032@qq.com','男','1569201033','head_img_8.jpg','739103436','15669210359','物联网171','1938-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'李七','000000a','739251036@qq.com','男','1569201037','head_img_9.jpg','739103836','15669210399','物联网172','1939-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'张三','000000a','739251040@qq.com','男','1569201041','head_img_10.jpg','739104236','15669210439','物联网173','1940-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'张四','000000a','739251044@qq.com','男','1569201045','head_img_11.jpg','739104636','15669210479','物联网174','1941-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'张五','000000a','739251048@qq.com','男','1569201049','head_img_12.jpg','739105036','15669210519','物联网171','1942-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'张六','000000a','739251052@qq.com','男','1569201053','head_img_13.jpg','739105436','15669210559','物联网172','1943-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'张七','000000a','739251056@qq.com','男','1569201057','head_img_14.jpg','739105836','15669210599','物联网173','1944-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'刘三','000000a','739251060@qq.com','男','1569201061','head_img_15.jpg','739106236','15669210639','物联网174','1945-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'刘四','000000a','739251064@qq.com','男','1569201065','head_img_16.jpg','739106636','15669210679','物联网171','1946-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'刘五','000000a','739251068@qq.com','男','1569201069','head_img_17.jpg','739107036','15669210719','物联网172','1947-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'刘六','000000a','739251072@qq.com','男','1569201073','head_img_18.jpg','739107436','15669210759','物联网173','1948-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'刘七','000000a','739251076@qq.com','男','1569201077','head_img_19.jpg','739107836','15669210799','物联网174','1949-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'陈三','000000a','739251080@qq.com','男','1569201081','head_img_20.jpg','739108236','15669210839','物联网171','1950-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'陈四','000000a','739251084@qq.com','男','1569201085','head_img_21.jpg','739108636','15669210879','物联网172','1951-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'陈五','000000a','739251088@qq.com','男','1569201089','head_img_22.jpg','739109036','15669210919','物联网173','1952-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'陈六','000000a','739251092@qq.com','男','1569201093','head_img_23.jpg','739109436','15669210959','物联网174','1953-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'陈七','000000a','739251096@qq.com','男','1569201097','head_img_24.jpg','739109836','15669210999','物联网171','1954-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'杨三','000000a','739251100@qq.com','男','1569201101','head_img_25.jpg','739110236','15669211039','物联网172','1955-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'杨四','000000a','739251104@qq.com','男','1569201105','head_img_26.jpg','739110636','15669211079','物联网173','1956-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'杨五','000000a','739251108@qq.com','男','1569201109','head_img_27.jpg','739111036','15669211119','物联网174','1957-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'杨六','000000a','739251112@qq.com','男','1569201113','head_img_28.jpg','739111436','15669211159','物联网171','1958-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'杨七','000000a','739251116@qq.com','男','1569201117','head_img_29.jpg','739111836','15669211199','物联网172','1959-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'黄三','000000a','739251120@qq.com','男','1569201121','head_img_30.jpg','739112236','15669211239','物联网173','1960-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'黄四','000000a','739251124@qq.com','男','1569201125','head_img_31.jpg','739112636','15669211279','物联网174','1961-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'黄五','000000a','739251128@qq.com','男','1569201129','head_img_32.jpg','739113036','15669211319','物联网171','1962-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'黄六','000000a','739251132@qq.com','男','1569201133','head_img_33.jpg','739113436','15669211359','物联网172','1963-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'黄七','000000a','739251136@qq.com','男','1569201137','head_img_34.jpg','739113836','15669211399','物联网173','1964-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'赵三','000000a','739251140@qq.com','男','1569201141','head_img_35.jpg','739114236','15669211439','物联网174','1965-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'赵四','000000a','739251144@qq.com','男','1569201145','head_img_36.jpg','739114636','15669211479','物联网171','1966-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'赵五','000000a','739251148@qq.com','男','1569201149','head_img_37.jpg','739115036','15669211519','物联网172','1967-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'赵六','000000a','739251152@qq.com','男','1569201153','head_img_38.jpg','739115436','15669211559','物联网173','1968-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'赵七','000000a','739251156@qq.com','男','1569201157','head_img_39.jpg','739115836','15669211599','物联网174','1969-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'吴三','000000a','739251160@qq.com','男','1569201161','head_img_40.jpg','739116236','15669211639','物联网171','1970-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'吴四','000000a','739251164@qq.com','男','1569201165','head_img_41.jpg','739116636','15669211679','物联网172','1971-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'吴五','000000a','739251168@qq.com','男','1569201169','head_img_42.jpg','739117036','15669211719','物联网173','1972-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'吴六','000000a','739251172@qq.com','男','1569201173','head_img_43.jpg','739117436','15669211759','物联网174','1973-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'吴七','000000a','739251176@qq.com','男','1569201177','head_img_44.jpg','739117836','15669211799','物联网171','1974-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'周三','000000a','739251180@qq.com','男','1569201181','head_img_45.jpg','739118236','15669211839','物联网172','1975-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'周四','000000a','739251184@qq.com','男','1569201185','head_img_46.jpg','739118636','15669211879','物联网173','1976-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'周五','000000a','739251188@qq.com','男','1569201189','head_img_47.jpg','739119036','15669211919','物联网174','1977-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'周六','000000a','739251192@qq.com','男','1569201193','head_img_48.jpg','739119436','15669211959','物联网171','1978-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'周七','000000a','739251196@qq.com','男','1569201197','head_img_49.jpg','739119836','15669211999','物联网172','1979-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'徐三','000000a','739251200@qq.com','男','1569201201','head_img_50.jpg','739120236','15669212039','物联网173','1980-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'徐四','000000a','739251204@qq.com','男','1569201205','head_img_51.jpg','739120636','15669212079','物联网174','1981-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'徐五','000000a','739251208@qq.com','男','1569201209','head_img_52.jpg','739121036','15669212119','物联网171','1982-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'徐六','000000a','739251212@qq.com','男','1569201213','head_img_53.jpg','739121436','15669212159','物联网172','1983-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'徐七','000000a','739251216@qq.com','男','1569201217','head_img_54.jpg','739121836','15669212199','物联网173','1984-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'孙三','000000a','739251220@qq.com','男','1569201221','head_img_55.jpg','739122236','15669212239','物联网174','1985-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'孙四','000000a','739251224@qq.com','男','1569201225','head_img_56.jpg','739122636','15669212279','物联网171','1986-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'孙五','000000a','739251228@qq.com','男','1569201229','head_img_57.jpg','739123036','15669212319','物联网172','1987-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'孙六','000000a','739251232@qq.com','男','1569201233','head_img_58.jpg','739123436','15669212359','物联网173','1988-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'孙七','000000a','739251236@qq.com','女','1569201237','head_img_59.jpg','739123836','15669212399','物联网174','1989-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'叶三','000000a','739251240@qq.com','女','1569201241','head_img_60.jpg','739124236','15669212439','物联网171','1990-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'叶四','000000a','739251244@qq.com','女','1569201245','head_img_61.jpg','739124636','15669212479','物联网172','1991-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'叶五','000000a','739251248@qq.com','女','1569201249','head_img_62.jpg','739125036','15669212519','物联网173','1992-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'叶六','000000a','739251252@qq.com','女','1569201253','head_img_63.jpg','739125436','15669212559','物联网174','1993-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'叶七','000000a','739251256@qq.com','女','1569201257','head_img_64.jpg','739125836','15669212599','物联网171','1994-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'熊三','000000a','739251260@qq.com','女','1569201261','head_img_65.jpg','739126236','15669212639','物联网172','1995-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'熊四','000000a','739251264@qq.com','女','1569201265','head_img_66.jpg','739126636','15669212679','物联网173','1996-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'熊五','000000a','739251268@qq.com','男','1569201269','head_img_67.jpg','739127036','15669212719','物联网174','1997-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'熊六','000000a','739251272@qq.com','男','1569201273','head_img_68.jpg','739127436','15669212759','物联网171','1998-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳'),
                       (null,'熊七','000000a','739251276@qq.com','男','1569201277','head_img_69.jpg','739127836','15669212799','物联网172','1999-12-28 17:47:08','2020-04-14 17:47:08','飞来飞去','上蹿下跳');


select * from user;



insert into img value
                      (null, 'head_img_1.jpg', '头像', 'true'),
                      (null, 'head_img_2.jpg', '头像', 'true'),
                      (null, 'head_img_3.jpg', '头像', 'true'),
                      (null, 'head_img_4.jpg', '头像', 'true'),
                      (null, 'head_img_5.jpg', '头像', 'true'),
                      (null, 'head_img_6.jpg', '头像', 'true'),
                      (null, 'head_img_7.jpg', '头像', 'true'),
                      (null, 'head_img_8.jpg', '头像', 'true'),
                      (null, 'head_img_9.jpg', '头像', 'true'),
                      (null, 'head_img_10.jpg', '头像', 'true'),
                      (null, 'head_img_11.jpg', '头像', 'true'),
                      (null, 'head_img_12.jpg', '头像', 'true'),
                      (null, 'head_img_13.jpg', '头像', 'true'),
                      (null, 'head_img_14.jpg', '头像', 'true'),
                      (null, 'head_img_15.jpg', '头像', 'true'),
                      (null, 'head_img_16.jpg', '头像', 'true'),
                      (null, 'head_img_17.jpg', '头像', 'true'),
                      (null, 'head_img_18.jpg', '头像', 'true'),
                      (null, 'head_img_19.jpg', '头像', 'true'),
                      (null, 'head_img_20.jpg', '头像', 'true'),
                      (null, 'head_img_21.jpg', '头像', 'true'),
                      (null, 'head_img_22.jpg', '头像', 'true'),
                      (null, 'head_img_23.jpg', '头像', 'true'),
                      (null, 'head_img_24.jpg', '头像', 'true'),
                      (null, 'head_img_25.jpg', '头像', 'true'),
                      (null, 'head_img_26.jpg', '头像', 'true'),
                      (null, 'head_img_27.jpg', '头像', 'true'),
                      (null, 'head_img_28.jpg', '头像', 'true'),
                      (null, 'head_img_29.jpg', '头像', 'true'),
                      (null, 'head_img_30.jpg', '头像', 'true'),
                      (null, 'head_img_31.jpg', '头像', 'true'),
                      (null, 'head_img_32.jpg', '头像', 'true'),
                      (null, 'head_img_33.jpg', '头像', 'true'),
                      (null, 'head_img_34.jpg', '头像', 'true'),
                      (null, 'head_img_35.jpg', '头像', 'true'),
                      (null, 'head_img_36.jpg', '头像', 'true'),
                      (null, 'head_img_37.jpg', '头像', 'true'),
                      (null, 'head_img_38.jpg', '头像', 'true'),
                      (null, 'head_img_39.jpg', '头像', 'true'),
                      (null, 'head_img_40.jpg', '头像', 'true'),
                      (null, 'head_img_41.jpg', '头像', 'true'),
                      (null, 'head_img_42.jpg', '头像', 'true'),
                      (null, 'head_img_43.jpg', '头像', 'true'),
                      (null, 'head_img_44.jpg', '头像', 'true'),
                      (null, 'head_img_45.jpg', '头像', 'true'),
                      (null, 'head_img_46.jpg', '头像', 'true'),
                      (null, 'head_img_47.jpg', '头像', 'true'),
                      (null, 'head_img_48.jpg', '头像', 'true'),
                      (null, 'head_img_49.jpg', '头像', 'true'),
                      (null, 'head_img_50.jpg', '头像', 'true'),
                      (null, 'head_img_51.jpg', '头像', 'true'),
                      (null, 'head_img_52.jpg', '头像', 'true'),
                      (null, 'head_img_53.jpg', '头像', 'true'),
                      (null, 'head_img_54.jpg', '头像', 'true'),
                      (null, 'head_img_55.jpg', '头像', 'true'),
                      (null, 'head_img_56.jpg', '头像', 'true'),
                      (null, 'head_img_57.jpg', '头像', 'true'),
                      (null, 'head_img_58.jpg', '头像', 'true'),
                      (null, 'head_img_59.jpg', '头像', 'true'),
                      (null, 'head_img_60.jpg', '头像', 'true'),
                      (null, 'head_img_61.jpg', '头像', 'true'),
                      (null, 'head_img_62.jpg', '头像', 'true'),
                      (null, 'head_img_63.jpg', '头像', 'true'),
                      (null, 'head_img_64.jpg', '头像', 'true'),
                      (null, 'head_img_65.jpg', '头像', 'true'),
                      (null, 'head_img_66.jpg', '头像', 'true'),
                      (null, 'head_img_67.jpg', '头像', 'true'),
                      (null, 'head_img_68.jpg', '头像', 'true'),
                      (null, 'head_img_69.jpg', '头像', 'true'),
                      (null, 'head_img_70.jpg', '头像', 'true');

select * from img;




insert into per_email value
                            (null, 1, 1, '1930-12-28 17:47:08', '李四发送了一条私信给你！'),
                            (null, 1, 2, '1931-12-28 17:47:08', '李五发送了一条私信给你！'),
                            (null, 1, 3, '1932-12-28 17:47:08', '李六发送了一条私信给你！'),
                            (null, 1, 4, '1933-12-28 17:47:08', '李七发送了一条私信给你！'),
                            (null, 1, 5, '1934-12-28 17:47:08', '李黄发送了一条私信给你！'),
                            (null, 2, 1, '1935-12-28 17:47:08', '张四发送了一条私信给你！'),
                            (null, 2, 2, '1936-12-28 17:47:08', '张五发送了一条私信给你！'),
                            (null, 2, 3, '1937-12-28 17:47:08', '张六发送了一条私信给你！'),
                            (null, 2, 4, '1938-12-28 17:47:08', '张七发送了一条私信给你！'),
                            (null, 2, 5, '1939-12-28 17:47:08', '张黄发送了一条私信给你！'),
                            (null, 3, 1, '1940-12-28 17:47:08', '刘四发送了一条私信给你！'),
                            (null, 3, 2, '1941-12-28 17:47:08', '刘五发送了一条私信给你！'),
                            (null, 3, 3, '1942-12-28 17:47:08', '刘六发送了一条私信给你！'),
                            (null, 3, 4, '1943-12-28 17:47:08', '刘七发送了一条私信给你！'),
                            (null, 3, 5, '1944-12-28 17:47:08', '刘黄发送了一条私信给你！'),
                            (null, 4, 1, '1945-12-28 17:47:08', '陈四发送了一条私信给你！'),
                            (null, 4, 2, '1946-12-28 17:47:08', '陈五发送了一条私信给你！'),
                            (null, 4, 3, '1947-12-28 17:47:08', '陈六发送了一条私信给你！'),
                            (null, 4, 4, '1948-12-28 17:47:08', '陈七发送了一条私信给你！'),
                            (null, 4, 5, '1949-12-28 17:47:08', '陈黄发送了一条私信给你！'),
                            (null, 5, 1, '1950-12-28 17:47:08', '杨四发送了一条私信给你！'),
                            (null, 5, 2, '1951-12-28 17:47:08', '杨五发送了一条私信给你！'),
                            (null, 5, 3, '1952-12-28 17:47:08', '杨六发送了一条私信给你！'),
                            (null, 5, 4, '1953-12-28 17:47:08', '杨七发送了一条私信给你！'),
                            (null, 5, 5, '1954-12-28 17:47:08', '杨黄发送了一条私信给你！');

select * from per_email;



insert into per_passage
value
      (null, 1, '2020-4-01 17:47:08', '李四班级写了一条留言板1！'),
      (null, 1, '2020-4-02 17:47:08', '李五班级写了一条留言板1！'),
      (null, 1, '2020-4-03 17:47:08', '李六班级写了一条留言板1！'),
      (null, 1, '2020-4-04 17:47:08', '李七班级写了一条留言板1！'),
      (null, 1, '2020-4-05 17:47:08', '李黄班级写了一条留言板1！'),
      (null, 2, '2020-4-01 17:47:08', '张四班级写了一条留言板1！'),
      (null, 2, '2020-4-02 17:47:08', '张五班级写了一条留言板1！'),
      (null, 2, '2020-4-03 17:47:08', '张六班级写了一条留言板1！'),
      (null, 2, '2020-4-04 17:47:08', '张七班级写了一条留言板1！'),
      (null, 2, '2020-4-05 17:47:08', '张黄班级写了一条留言板1！'),
      (null, 3, '2020-4-01 17:47:08', '刘四班级写了一条留言板1！'),
      (null, 3, '2020-4-02 17:47:08', '刘五班级写了一条留言板1！'),
      (null, 3, '2020-4-03 17:47:08', '刘六班级写了一条留言板1！'),
      (null, 3, '2020-4-04 17:47:08', '刘七班级写了一条留言板1！'),
      (null, 3, '2020-4-05 17:47:08', '刘黄班级写了一条留言板1！'),
      (null, 4, '2020-4-01 17:47:08', '陈四班级写了一条留言板1！'),
      (null, 4, '2020-4-02 17:47:08', '陈五班级写了一条留言板1！'),
      (null, 4, '2020-4-03 17:47:08', '陈六班级写了一条留言板1！'),
      (null, 4, '2020-4-04 17:47:08', '陈七班级写了一条留言板1！'),
      (null, 4, '2020-4-05 17:47:08', '陈黄班级写了一条留言板1！'),
      (null, 5, '2020-4-01 17:47:08', '杨四班级写了一条留言板1！'),
      (null, 5, '2020-4-02 17:47:08', '杨五班级写了一条留言板1！'),
      (null, 5, '2020-4-03 17:47:08', '杨六班级写了一条留言板1！'),
      (null, 5, '2020-4-04 17:47:08', '杨七班级写了一条留言板1！'),
      (null, 5, '2020-4-05 17:47:08', '杨黄班级写了一条留言板1！');

select * from per_passage;




