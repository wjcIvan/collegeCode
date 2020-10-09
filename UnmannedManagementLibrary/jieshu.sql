
DROP DATABASE jieshu;
CREATE DATABASE jieshu;
USE jieshu;
-- 用户表
DROP TABLE IF EXISTS users;
CREATE TABLE  users(
uid INT PRIMARY KEY AUTO_INCREMENT,
USER VARCHAR(11),
pswd VARCHAR(20),
sex VARCHAR(10),
NAME VARCHAR(10),
icon TEXT,
credit INT -- 信用值
);
SELECT * FROM users;




-- 书架表
DROP TABLE IF EXISTS shujia;
CREATE TABLE  shujia(
sid INT PRIMARY KEY AUTO_INCREMENT,-- 书架id
NAME VARCHAR(100), -- 书架名称
loc VARCHAR(100)-- 所在区域
);
INSERT INTO shujia(NAME,loc) VALUES('中小学教辅类书架','1-1');
INSERT INTO shujia(NAME,loc) VALUES('亲子/家教类书架','2-1');
INSERT INTO shujia(NAME,loc) VALUES('哲学/宗教类书架','3-1');
INSERT INTO shujia(NAME,loc) VALUES('外语类书架','4-1');
INSERT INTO shujia(NAME,loc) VALUES('小说类书架','5-1');
INSERT INTO shujia(NAME,loc) VALUES('心理学类书架','6-1');
INSERT INTO shujia(NAME,loc) VALUES('成功/励志类书架','7-1');
INSERT INTO shujia(NAME,loc) VALUES('文学类书架','8-1');
INSERT INTO shujia(NAME,loc) VALUES('童书类书架','9-1');
INSERT INTO shujia(NAME,loc) VALUES('育儿/早教类书架','10-1');
SELECT * FROM shujia;


-- 书本表
DROP TABLE IF EXISTS book;
CREATE TABLE  book(
bid INT PRIMARY KEY AUTO_INCREMENT, -- ID
sid INT, -- 原本所属书架 
nowsid INT, -- 当前所在书架
bname VARCHAR(110), -- 书名
author VARCHAR(20), -- 作者
sumary VARCHAR(100),  -- 介绍
isbn VARCHAR(50), -- isbn
img TEXT, -- 封面图片
statu INT  -- 状态 0.可借  1.已被借
);

INSERT  INTO `book`(`bid`,`sid`,`nowsid`,`bname`,`author`,`sumary`,`isbn`,`img`,`statu`) VALUES (1,1,1,'克雷洛夫寓言 统编语文教科书三年级（下）指定阅读  快乐读书吧丛书  16800多名读者热评！','克雷洛夫','人民邮电出版社','9787115309419','http://img3m5.ddimg.cn/67/18/23197945-1_u_4.jpg',0),(2,1,1,'克雷洛夫寓言 统编语文教科书三年级（下）指定阅读  快乐读书吧丛书  16800多名读者热评！','克雷洛夫','人民邮电出版社','9787115309419','http://img3m5.ddimg.cn/67/18/23197945-1_u_4.jpg',0),(3,1,1,'格林童话 快乐读书吧 统编语文教科书三年级（上）必读书目 30000多名读者热评！','格林兄弟','商务印书馆','9787100089623','http://img3m7.ddimg.cn/46/16/22800637-1_u_9.jpg',0),(4,1,1,'十万个为什么 统编语文教科书四年级（下）指定阅读（中小学新课标必读名著）','伊林','南方出版社','9787550146662','http://img3m4.ddimg.cn/87/2/26509614-1_u_2.jpg',0),(5,1,1,'秘密花园（中小学新课标必读名著）6000多名读者热评！','弗朗西丝','南方出版社','9787550141803','http://img3m8.ddimg.cn/38/5/25217318-1_u_10.jpg',0),(6,1,1,'一千零一夜 快乐读书吧 统编语文教科书五年级（上）指定阅读 29000多名读者热评！','邵珠磊','人民邮电出版社','9787115308351','http://img3m4.ddimg.cn/70/15/23181514-1_u_12.jpg',0),(7,1,1,'水孩子（中小学新课标必读名著）17000多名读者热评！','金斯利','人民邮电出版社','9787115327000','http://img3m8.ddimg.cn/69/0/23327538-1_u_5.jpg',0),(8,1,1,'木偶奇遇记（中小学语文新课标必读名著）24000多名读者热评！','科洛迪','人民邮电出版社','9787115308382','http://img3m5.ddimg.cn/71/16/23181515-1_u_3.jpg',0),(9,1,1,'爱丽丝漫游仙境 快乐读书吧 统编语文教科书六年级（下）指定阅读 18000多名读者热评！','卡罗尔','人民邮电出版社','9787115331892','http://img3m7.ddimg.cn/57/24/23349207-1_u_6.jpg',0),(10,1,1,'小王子（中小学语文新课标必读名著）20000多名读者热评！','圣埃克苏佩里','人民邮电出版社','9787115308368','http://img3m5.ddimg.cn/42/5/23190495-1_u_3.jpg',0),(11,1,1,'小橘灯（中小学新课标必读名著）23000多名读者热评！','冰心','人民邮电出版社','9787115309433','http://img3m7.ddimg.cn/69/20/23197947-1_u_4.jpg',0),(12,1,1,'寄小读者（中小学新课标必读名著 ）77000多名读者热评！','冰心','人民邮电出版社','9787115308375','http://img3m8.ddimg.cn/74/19/23181518-1_u_4.jpg',0),(13,1,1,'稻草人 统编语文教科书三年级（上）指定阅读 快乐读书吧丛书  188000多名读者热评！','叶圣陶','商务印书馆','9787100092258','http://img3m7.ddimg.cn/49/15/22854397-1_u_20.jpg',0),(14,1,1,'伊索寓言 快乐读书吧 统编语文教科书三年级（下）指定阅读 80000多名读者热评！','伊索','商务印书馆','9787100089616','http://img3m8.ddimg.cn/47/17/22800638-1_u_10.jpg',0),(15,1,1,'小老鼠皮克历险记（中小学语文新课标必读名著）9600多名读者热评！','比安基','人民邮电出版社','9787115324726','http://img3m6.ddimg.cn/22/15/23298286-1_u_3.jpg',0),(16,1,1,'吹牛大王历险记（中小学新课标必读名著）41000多名读者热评！','毕尔格','人民邮电出版社','9787115309273','http://img3m4.ddimg.cn/66/17/23197944-1_u_3.jpg',0),(17,1,1,'宝葫芦的秘密（中小学新课标必读名著 ）76000多名读者热评！','张天翼','人民邮电出版社','9787115324757','http://img3m3.ddimg.cn/19/12/23298283-1_u_4.jpg',0),(18,1,1,'细菌世界历险记（中小学语文新课标必读名著 ）菌儿自传 高士其科普童话 41000多名读者热评！','高士其','人民邮电出版社','9787115434388','http://img3m7.ddimg.cn/77/15/24040247-1_u_5.jpg',0),(19,1,1,'森林报 冬（中小学语文新课标必读名著）18000多名读者热评！','比安基','人民邮电出版社','9787115350039','http://img3m4.ddimg.cn/9/2/23470434-1_u_5.jpg',0),(20,1,1,'爷爷的爷爷从哪里来（中小学语文新课标必读名著 ）18000多名读者热评！','贾兰坡','人民邮电出版社','9787115432964','http://img3m8.ddimg.cn/78/16/24040248-1_u_6.jpg',0),(21,1,1,'森林报 秋（中小学语文新课标必读名著）18000多名读者热评！','比安基','人民邮电出版社','9787115350022','http://img3m3.ddimg.cn/8/1/23470433-1_u_3.jpg',0),(22,1,1,'森林报 夏（中小学语文新课标必读名著）17000多名读者热评！','比安基','人民邮电出版社','9787115349835','http://img3m2.ddimg.cn/7/0/23470432-1_u_3.jpg',0),(23,1,1,'快乐读书吧 列那狐的故事 一千零一夜 中外民间故事  五年级上册 统编语文教科书指定阅读 （套装共3','季诺夫人','人民邮电出版社','25315337','http://img3m7.ddimg.cn/47/11/25315337-1_u_2.jpg',0),(24,1,1,'快乐读书吧 中国古代寓言故事 伊索寓言 克雷洛夫寓言故事 三年级下册 统编语文教科书指定阅读（套装共','伊索','中国少年儿童出版社','9787514852165','http://img3m1.ddimg.cn/16/32/26491921-1_u_5.jpg',0),(25,1,1,'森林报 春 （中小学语文新课标必读名著）19200多名读者热评！','比安基','人民邮电出版社','9787115349828','http://img3m1.ddimg.cn/6/36/23470431-1_u_3.jpg',0),(26,1,1,'快乐读书吧 稻草人 格林童话 安徒生童话  三年级上册 统编语文教科书指定阅读 （套装共3册）','安徒生','商务印书馆','25270843','http://img3m3.ddimg.cn/4/28/25270843-1_u_4.jpg',0),(27,1,1,'森林报 春夏秋冬 (套装共4册)（中小学语文新课标必读名著 无障碍阅读彩插励志版）','','','','http://img3m7.ddimg.cn/11/0/410256407-1_u_2.jpg',0),(28,1,1,'神笔马良 快乐读书吧 统编语文教科书二年级（下）指定阅读（中小学新课标必读名著）','洪汛涛','南方出版社','9787550149588','http://img3m3.ddimg.cn/86/1/26509613-1_u_3.jpg',0),(29,1,1,'安徒生童话 快乐读书吧 统编语文教科书三年级（上）指定阅读 24000多名读者热评！','安徒生','商务印书馆','9787100089609','http://img3m3.ddimg.cn/52/22/22800643-1_u_11.jpg',0),(30,2,2,'《正面管教》修订版','简·尼尔森','北京联合出版公司','9787550268517','http://img3m0.ddimg.cn/64/6/23990140-1_u_6.jpg',0),(31,2,2,'《正面管教》修订版','简·尼尔森','北京联合出版公司','9787550268517','http://img3m0.ddimg.cn/64/6/23990140-1_u_6.jpg',0),(32,2,2,'《正面管教教师工具卡》','简·尼尔森','北京联合出版公司','9787550299948','http://img3m1.ddimg.cn/11/29/25199471-1_u_3.jpg',0),(33,2,2,'《单亲家庭的正面管教》','简·尼尔森','北京联合出版公司','9787550299924','http://img3m3.ddimg.cn/67/8/25158343-1_u_3.jpg',0),(34,2,2,'《正面管教养育工具》','简·尼尔森','北京联合出版公司','9787550299955','http://img3m1.ddimg.cn/81/33/25121331-1_u_3.jpg',0),(35,2,2,'《正面管教教师指南A-Z》','简·尼尔森','北京联合出版公司','9787550299962','http://img3m2.ddimg.cn/12/30/25199472-1_u_3.jpg',0),(36,2,2,'《0～3岁孩子的正面管教》','简·尼尔森','北京联合出版公司','9787550255975','http://img3m6.ddimg.cn/19/20/23736556-1_u_1.jpg',0),(37,2,2,'《教室里的正面管教》','简·尼尔森','北京联合出版公司','9787550228078','http://img3m6.ddimg.cn/53/11/23463746-1_u_2.jpg',0),(38,2,2,'特殊需求孩子的正面管教','简·尼尔森','北京联合出版公司','9787550275447','http://img3m5.ddimg.cn/38/21/23958335-1_u_12.jpg',0),(39,2,2,'十几岁孩子的正面管教——教给十几岁的孩子人生技能（畅销书《正面管教》作者力作，养育青春期孩子的“黄金','简.尔森','北京联合出版公司','9787550225923','http://img3m2.ddimg.cn/47/28/23422952-1_u_1.jpg',0),(40,2,2,'《3～6岁孩子的正面管教》','简·尼尔森','北京联合出版公司','9787550245037','http://img3m3.ddimg.cn/67/33/23645623-1_u_2.jpg',0),(41,2,2,'《正面管教 A-Z》：日常养育难题的1001个解决方案（畅销书《正面管教》作者力作，以实例讲解不惩罚','简·尼尔森','北京联合出版公司','9787550218383','http://img3m6.ddimg.cn/6/24/23331336-1_u_2.jpg',0),(42,2,2,'正面管教（如何不惩罚、不娇纵地有效管教孩子）','尼尔森','北京联合出版公司','20450674','http://img3m4.ddimg.cn/46/34/20450674-1_u_2.jpg',0),(43,2,2,'正面管教+好妈妈胜过好老师+如何说孩子才会听+蒙台梭利育儿全书[精选套装]','','','','http://img3m3.ddimg.cn/6/10/410268183-1_u_2.jpg',0),(44,2,2,'正面管教套装7册[精选套装]','','','','http://img3m8.ddimg.cn/57/24/410260908-1_u_3.jpg',0),(45,2,2,'如何说孩子才会听 怎么听孩子才肯说（全新修订版）','玛兹丽施','中央编译出版社','9787511714152','http://img3m2.ddimg.cn/17/7/24044642-1_u_16.jpg',0),(46,2,2,'好妈妈胜过好老师（700万册纪念版）','尹建莉','作家出版社','9787506376631','http://img3m9.ddimg.cn/37/23/25124059-1_u_7.jpg',0),(47,2,2,'好妈妈胜过好老师2+这样跟孩子定规矩+不批评才能培养出自觉主动的孩子[精选套装]','','','','http://img3m4.ddimg.cn/93/5/410262924-1_u_1.jpg',0),(48,2,2,'好妈妈胜过好老师2+这样跟孩子定规矩+不批评才能培养出自觉主动的孩子+图解儿童逆反心理[精选套装]','','','','http://img3m1.ddimg.cn/30/16/410262861-1_u_1.jpg',0),(49,2,2,'好妈妈胜过好老师+最美的教育最简单（套装2册）[精选套装]','尹建莉','作家出版社','25138600','http://img3m0.ddimg.cn/25/23/25138600-1_u_3.jpg',0),(50,2,2,'最美的教育最简单','尹建莉','作家出版社','9787506374811','http://img3m8.ddimg.cn/73/34/25138648-1_u_3.jpg',0),(51,2,2,'好妈妈胜过好老师2：自由的孩子最自觉（实操性更强的家教育儿书）','尹建莉','百花洲文艺出版社','9787550017702','http://img3m0.ddimg.cn/4/16/23974240-1_u_36.jpg',0),(52,2,2,'好妈妈胜过好老师 图文版','尹建莉','浙江文艺出版社','9787533945305','http://img3m8.ddimg.cn/35/9/23966648-1_u_11.jpg',0),(53,2,2,'好妈妈胜过好老师（套装2册）[精选套装]','尹建莉','作家出版社','9787506376624','http://img3m0.ddimg.cn/59/1/23605520-1_u_1.jpg',0),(54,2,2,'好妈妈教你学古诗（全2册）：《好妈妈胜过好老师》+《一周一首古诗词》','尹建莉','作家出版社','25138814','http://img3m4.ddimg.cn/41/15/25138814-1_u_3.jpg',0),(55,2,2,'好妈妈胜过好老师2：自由的孩子最自觉','尹建莉','文汇出版社','9787549619979','http://img3m9.ddimg.cn/97/33/25072639-1_u_5.jpg',0),(56,2,2,'好妈妈胜过好老师（精装升级版，附作者家教讲座光盘）','尹建莉','作家出版社','9787506351317','http://img3m4.ddimg.cn/23/34/21021584-1_u_2.jpg',0),(57,2,2,'最美的教育最简单(2014年中国好书)','尹建莉','作家出版社','9787506374811','http://img3m3.ddimg.cn/35/33/23530553-1_u_7.jpg',0),(58,2,2,'好妈妈胜过好老师（纪念版）','尹建莉','作家出版社','9787506376631','http://img3m3.ddimg.cn/76/6/23601973-1_u_1.jpg',0),(59,2,2,'如何说宝贝才会听：与2至7岁孩子的相处和沟通之道','乔安娜','重庆出版社','9787229127367','http://img3m3.ddimg.cn/38/28/25180193-1_u_3.jpg',0),(60,2,2,'如何说 孩子才能和平相处','阿黛尔·法伯和伊莱恩·玛兹丽施','重庆出版社','9787229109752','http://img3m0.ddimg.cn/38/4/23945960-1_u_5.jpg',0),(61,2,2,'《如何说孩子才肯学》（美国《儿童》杂志年度畅销图书，中文五周年纪念版）','阿黛尔.法伯','中央编译出版社','9787511715333','http://img3m5.ddimg.cn/59/30/23042705-1_u_1.jpg',0),(62,2,2,'解放父母 解放孩子','法伯','上海社会科学院出版社','9787552010138','http://img3m7.ddimg.cn/39/14/23805777-1_u_1.jpg',0),(63,2,2,'如何说孩子才会听怎么听孩子才肯说（精华版）（附CD)','法伯','中央编译出版社','9787511719881','http://img3m5.ddimg.cn/75/30/23448225-1_u_2.jpg',0),(64,2,2,'如何说少年才会听 怎么听少年才肯说（全球畅销家教书《如何说孩子才会听 怎么听孩子才肯说》作者专为青春','法伯','中央编译出版社','9787511716323','http://img3m7.ddimg.cn/80/34/23257457-1_u_6.jpg',0),(65,2,2,'如何说孩子才会听 怎么听孩子才肯说（2013中文五周年修订珍藏版软精装全球销量领先的家教图书，被译为','法伯','中央编译出版社','9787511715548','http://img3m2.ddimg.cn/42/18/23201682-1_u_1.jpg',0),(66,2,2,'《如何说孩子才会听 怎么听孩子才肯说》','Adele','中央编译出版社','9787511714152','http://img3m1.ddimg.cn/50/13/22809551-1_u_1.jpg',0),(67,2,2,'鲍比如何说系列','阿黛尔法伯','郑州大学出版社','9787564534387','http://img3m8.ddimg.cn/98/32/25159958-1_u_2.jpg',0),(68,2,2,'如何说套装二（共5册）如何说孩子才会听+少年才会听+孩子才肯学+孩子才能和平相处+解放父母[精选套装','玛兹丽施','中央编译出版社','9787511714152','http://img3m3.ddimg.cn/17/12/25188983-1_u_4.jpg',0),(69,2,2,'如何说套装二（共5册）如何说孩子才会听+孩子才肯定学+少年才会听+孩子才能和平相处+宝贝才会听','','','','http://img3m9.ddimg.cn/58/25/410260909-1_u_6.jpg',0),(70,2,2,'从小读到大（尹建莉最新力作）','尹建莉','长江文艺出版社','9787570203451','http://img3m8.ddimg.cn/15/9/25254618-1_u_15.jpg',0),(71,2,2,'这样跟孩子定规矩，孩子最不会抵触','乔治·M·卡帕卡','北京联合出版公司','9787550274938','http://img3m6.ddimg.cn/9/28/22818816-1_u_16.jpg',0),(72,2,2,'图解儿童逆反心理 ：   孩子有逆反行为，其实是因为他觉得你不理解他（团购电话：4001066666','米里亚姆·恰恰姆Miriam','北京联合出版公司','9787550276727','http://img3m9.ddimg.cn/69/0/23975889-1_u_9.jpg',0),(73,2,2,'不批评才能培养出自觉主动的孩子（团购电话：4001066666转6）','奥田健次','北京联合出版公司','9787550229938','http://img3m7.ddimg.cn/39/25/23483037-1_u_8.jpg',0),(74,2,2,'老母亲养育孩子宝典 聪明妈妈家庭教育宝典(套装全4册）（不急不吼陪孩子写作业。超实用，畅销百万册的育','乔治','北京联合出版公司','26269288','http://img3m8.ddimg.cn/34/28/26269288-1_u_3.jpg',0),(75,2,2,'小学生学习成绩暴增法：孩子最不会抵触的家庭作业辅导法','坂本七郎','文汇出版社','9787549620609','http://img3m0.ddimg.cn/56/28/25083290-1_u_5.jpg',0),(76,3,3,'复旦名师陈果：好的爱情（陈果的爱情哲学课，用哲学的方式告诉你，怎样的爱情才能更长久）','陈果','人民日报出版社','9787511553645','http://img3m4.ddimg.cn/26/36/25263044-1_u_6.jpg',0),(77,3,3,'复旦名师陈果：好的爱情（陈果的爱情哲学课，用哲学的方式告诉你，怎样的爱情才能更长久）','陈果','人民日报出版社','9787511553645','http://img3m4.ddimg.cn/26/36/25263044-1_u_6.jpg',0),(78,3,3,'复旦名师陈果：好的孤独+懂你（优惠套装2册）','','','','http://img3m4.ddimg.cn/50/7/410261594-1_u_1.jpg',0),(79,3,3,'复旦名师陈果：好的孤独+好的爱情套装2册（用哲学的方式告诉你：孤独让人强大！爱情可以长久！）','陈果','人民日报出版社','25263098','http://img3m8.ddimg.cn/80/16/25263098-1_u_10.jpg',0),(80,3,3,'复旦名师陈果：好的孤独+好的爱情+懂你（套装3册）','','','','http://img3m0.ddimg.cn/73/11/410263300-1_u_1.jpg',0),(81,3,3,'懂你（复旦名师陈果作品！）','陈果','山东画报出版社','9787547418260','http://img3m1.ddimg.cn/92/17/23999771-1_u_6.jpg',0),(82,3,3,'懂你（复旦名师陈果作品！）','陈果','山东画报出版社','9787547418260','http://img3m1.ddimg.cn/92/17/23999771-1_u_6.jpg',0),(83,3,3,'复旦名师陈果：好的孤独（复旦名师陈果博士，用哲学的方式告诉你，孤独的自己有多强大）','陈果','江苏凤凰文艺出版社','9787559401007','http://img3m5.ddimg.cn/35/7/24248105-1_u_6.jpg',0),(84,3,3,'复旦名师陈果：好的孤独（复旦名师陈果博士，用哲学的方式告诉你，孤独的自己有多强大）','陈果','江苏凤凰文艺出版社','9787559401007','http://img3m5.ddimg.cn/35/7/24248105-1_u_6.jpg',0),(85,3,3,'克里希那穆提“成为自己”经典系列（4册）','克里希那穆提','中国友谊出版公司','25585165','http://img3m5.ddimg.cn/1/35/25585165-1_u_1.jpg',0),(86,3,3,'活出自在（精装版）','克里希那穆提','中国友谊出版公司','9787505744882','http://img3m3.ddimg.cn/46/3/25576993-1_u_1.jpg',0),(87,3,3,'生即是死（精装版）','克里希那穆提','中国友谊出版公司','9787505744899','http://img3m4.ddimg.cn/47/4/25576994-1_u_1.jpg',0),(88,3,3,'成为自己：找回生命本来的样子','克里希那穆提','中国友谊出版公司','9787505744547','http://img3m2.ddimg.cn/45/2/25576992-1_u_2.jpg',0),(89,3,3,'放下自我（精装版）','克里希那穆提','中国友谊出版公司','9787505744875','http://img3m0.ddimg.cn/19/35/25583500-1_u_1.jpg',0),(90,4,4,'The sorrows of young Werther 少年维特之烦恼（英文版）','歌德','北京联合出版公司','9787550228832','http://img3m6.ddimg.cn/56/14/23643236-1_u_4.jpg',0),(91,4,4,'爱的教育（英文版、日记体小说）','埃迪蒙托·德·亚米契斯','民主与建设出版社','9787513921046','http://img3m1.ddimg.cn/22/19/25273831-1_u_1.jpg',0),(92,4,4,'鲁滨孙漂流记（英文版，鲁宾逊漂流记）','丹尼尔·笛福','民主与建设出版社','9787513919449','http://img3m8.ddimg.cn/16/20/25231948-1_u_1.jpg',0),(93,4,4,'柳林风声（百年经典童话英文版）','肯尼斯·格雷厄姆','民主与建设出版社','9787513917896','http://img3m8.ddimg.cn/14/7/25203038-1_u_2.jpg',0),(94,4,4,'假如给我三天光明（英文版）','海伦·凯勒','浙江教育出版社','9787553664811','http://img3m6.ddimg.cn/26/15/25194536-1_u_1.jpg',0),(95,4,4,'绿野仙踪（英文版，原名The Wonderful Wizard of Oz，美版《西游记》。原始底本','莱曼·弗兰克·鲍姆','浙江教育出版社','9787553667348','http://img3m2.ddimg.cn/15/1/25215612-1_u_3.jpg',0),(96,4,4,'莎士比亚四大悲剧（英文版）莎翁逝世400年纪念版，真正的未删节全本，豆瓣9.4分英文原著','莎士比亚','民主与建设出版社','9787513917636','http://img3m7.ddimg.cn/7/32/25190557-1_u_2.jpg',0),(97,4,4,'莎士比亚四大喜剧(英文版 仲夏夜之梦+威尼斯商人+第十二夜+皆大欢喜）','威廉莎士比亚','北京联合出版公司','9787550259966','http://img3m2.ddimg.cn/33/4/23962092-1_u_2.jpg',0),(98,4,4,'飘（英文版，上下册，又译作《乱世佳人》）','玛格丽特米切尔','浙江教育出版社','9787553638980','http://img3m1.ddimg.cn/32/3/23962091-1_u_2.jpg',0),(99,4,4,'瓦尔登湖（英文版）现象级畅销书英文原著，清华校长送给新生的礼物，豆瓣9.1评分','亨利·戴维·梭罗','民主与建设出版社','9787513917599','http://img3m6.ddimg.cn/6/31/25190556-1_u_2.jpg',0),(100,4,4,'人性的弱点（英文版）','﹝美﹞戴尔·卡耐基','民主与建设出版社','9787513917575','http://img3m5.ddimg.cn/5/30/25190555-1_u_2.jpg',0),(101,4,4,'简爱（英文版）','夏洛蒂勃朗特','浙江教育出版社','9787553637945','http://img3m5.ddimg.cn/2/9/23950775-1_u_2.jpg',0),(102,4,4,'呼啸山庄（英文）','艾米莉·勃朗特','北京联合出版公司','9787550296695','http://img3m9.ddimg.cn/16/29/24194329-1_u_1.jpg',0),(103,4,4,'双城记（全英文原版编校本）','查尔斯·狄更斯','北京联合出版公司','9787550249455','http://img3m7.ddimg.cn/55/22/23730157-1_u_1.jpg',0),(104,4,4,'傲慢与偏见（英文版  无删节全本+经典原版插图）','简奥斯汀','浙江教育出版社','9787553637594','http://img3m1.ddimg.cn/90/19/23957001-1_u_2.jpg',0),(105,4,4,'了不起的盖茨比（英文版）（莱昂纳多同名电影原著小说，未删减全本。）','弗司各特菲茨拉杰德','浙江教育出版社','9787553638638','http://img3m0.ddimg.cn/89/18/23957000-1_u_2.jpg',0),(106,4,4,'老人与海&太阳照常升起（英文版）','海明威','北京联合出版公司','9787550249394','http://img3m5.ddimg.cn/53/20/23730155-1_u_2.jpg',0),(107,4,4,'1984（全英佳本，最让人无法忍受的，就是泯灭过去）','乔治.奥威尔','北京联合出版公司','9787550249387','http://img3m4.ddimg.cn/52/19/23730154-1_u_1.jpg',0),(108,4,4,'欧亨利短篇小说精选（英文版原著，“美国现代短篇小说之父”作品精选集）','欧.亨利','北京联合出版公司','9787550249448','http://img3m6.ddimg.cn/54/21/23730156-1_u_2.jpg',0),(109,4,4,'秘密花园（英文版）','弗朗西丝·霍奇森·伯内特','浙江教育出版社','9787553667331','http://img3m1.ddimg.cn/14/0/25215611-1_u_1.jpg',0),(110,4,4,'消失的地平线 = Lost horizon : 英文（英文版原著，被改编为电影，风靡全世界）','詹姆斯希尔顿','北京联合出版公司','9787550245686','http://img3m1.ddimg.cn/14/35/23669231-1_u_1.jpg',0),(111,4,4,'演讲与口才 = The quick & easy way to effective speaking','戴尔·卡耐基','北京联合出版公司','9787550244191','http://img3m4.ddimg.cn/17/1/23669234-1_u_2.jpg',0),(112,4,4,'理智与情感（英文版）','奥斯汀','北京联合出版公司','9787550245709','http://img3m0.ddimg.cn/13/34/23669230-1_u_2.jpg',0),(113,5,5,'人间失格（日本小说家太宰治的自传体小说）','太宰治','作家出版社','9787506380263','http://img3m5.ddimg.cn/56/4/23761145-1_u_2.jpg',0),(114,5,5,'云边有个小卖部','张嘉佳','湖南文艺出版社','9787540487645','http://img3m9.ddimg.cn/77/23/25295369-1_u_12.jpg',0),(115,5,5,'云边有个小卖部','张嘉佳','湖南文艺出版社','9787540487645','http://img3m9.ddimg.cn/77/23/25295369-1_u_12.jpg',0),(116,5,5,'张嘉佳签名作品集（云边有个小卖部+从你的全世界路过 ）','张嘉佳','湖南文艺出版社','25347906','http://img3m6.ddimg.cn/45/20/25347906-1_u_5.jpg',0),(117,5,5,'张嘉佳作品集（云边有个小卖部+从你的全世界路过）','张嘉佳','湖南文艺出版社','25312603','http://img3m3.ddimg.cn/85/15/25312603-1_u_6.jpg',0),(118,5,5,'从你的全世界路过(精装升级版，超豪华软皮精装)：增加9个故事，诞生10部电影','张嘉佳','湖南文艺出版社','9787540466893','http://img3m3.ddimg.cn/85/21/23468233-1_u_2.jpg',0),(119,5,5,'从你的全世界路过','张嘉佳','湖南文艺出版社','9787540458027','http://img3m2.ddimg.cn/34/15/23353342-1_u_8.jpg',0),(120,5,5,'我希望有个如你一般的人','张嘉佳','湖南文艺出版社','9787540467074','http://img3m8.ddimg.cn/96/36/23476758-1_u_5.jpg',0),(121,5,5,'歌德爱情小说姊妹篇(少年维特之烦恼+亲和力)','歌德','北京联合出版公司','25073546','http://img3m6.ddimg.cn/14/15/25073546-1_u_3.jpg',0),(122,5,5,'亲和力（《少年维特之烦恼》“姊妹篇”，据德文原版全译本）','歌德','北京联合出版公司','9787550285644','http://img3m0.ddimg.cn/5/30/24036710-1_u_2.jpg',0),(123,5,5,'少年维特之烦恼（据德文原版全译本，备受追捧，屡次加印）','歌德','北京联合出版公司','9787550277557','http://img3m9.ddimg.cn/5/8/24033839-1_u_2.jpg',0),(124,5,5,'少年维特之烦恼中英文套装','','','','http://img3m4.ddimg.cn/71/17/410265674-1_u_1.jpg',0),(125,5,5,'悲惨世界（名家全译未删节版）','维克多·雨果','作家出版社','9787506387859','http://img3m6.ddimg.cn/2/19/23979386-1_u_2.jpg',0),(126,5,5,'神秘岛(北大翻译家陈筱卿权威译作，法中直译，未删减全本。)','儒勒凡尔纳','作家出版社','9787506387866','http://img3m8.ddimg.cn/64/9/23950738-1_u_2.jpg',0),(127,5,5,'羊脂球(莫泊桑短篇小说选，北大著名翻译家柳鸣九翻译，百度、知乎网友公认的权威译本，豆瓣评分8.6)','莫泊桑','北京联合出版公司','9787550284975','http://img3m8.ddimg.cn/4/7/24033838-1_u_2.jpg',0),(128,5,5,'老人与海（人可以被毁灭，却不可以被战胜。后附《太阳照常升起》）','欧内斯特米勒尔海明威','作家出版社','9787506385831','http://img3m2.ddimg.cn/54/7/23828562-1_u_2.jpg',0),(129,5,5,'大卫科波菲尔（浙大著名翻译家宋兆霖全译本，狄更斯传奇自传性小说。）','查尔斯·狄更斯','作家出版社','9787506379762','http://img3m5.ddimg.cn/0/9/23753565-1_u_4.jpg',0),(130,5,5,'三个火枪手（大仲马经典长篇小说，又名《三剑客》，多次翻拍为电影）','亚历山大仲马','作家出版社','9787506387415','http://img3m7.ddimg.cn/65/2/23941037-1_u_2.jpg',0),(131,5,5,'简爱中英文套装（浙大翻译家宋兆霖翻译，未删减全译本，英文未删减全本)','夏洛蒂·勃朗特','作家出版社','25100413','http://img3m3.ddimg.cn/52/20/25100413-1_u_1.jpg',0),(132,5,5,'简爱（浙大翻译家宋兆霖翻译，未删减全本。）九年级下册必读书目','夏洛蒂勃朗特','作家出版社','9787506379786','http://img3m5.ddimg.cn/91/23/23752765-1_u_2.jpg',0),(133,5,5,'双城记中英文套装（著名翻译家宋兆霖经典全译本+英文原版编校本）','查尔斯·狄更斯','作家出版社','25073598','http://img3m8.ddimg.cn/66/30/25073598-1_u_3.jpg',0),(134,5,5,'双城记（著名翻译家宋兆霖神级全译本）','查尔斯·狄更斯','作家出版社','9787506379809','http://img3m9.ddimg.cn/60/8/23761149-1_u_3.jpg',0),(135,5,5,'雾都孤儿（著名翻译家黄水乞教授全译本，讲述黑暗中闪现的人性光辉。）','查尔斯·狄更斯','作家出版社','9787506379816','http://img3m2.ddimg.cn/38/2/23769542-1_u_6.jpg',0),(136,5,5,'八十天环游地球（法中直译全译本，著名法语翻译家陈筱卿倾情翻译，豆瓣评分8.8）','凡尔纳','作家出版社','9787506382519','http://img3m3.ddimg.cn/92/8/23795633-1_u_1.jpg',0),(137,5,5,'牛虻（苏州大学方华文教授全译本，关注生命、爱情、人性的英雄故事）','伏尼契','作家出版社','9787506382540','http://img3m4.ddimg.cn/93/9/23795634-1_u_1.jpg',0),(138,5,5,'呼啸山庄','艾米莉·勃朗特','作家出版社','9787506379779','http://img3m7.ddimg.cn/79/3/23750377-1_u_5.jpg',0),(139,5,5,'百万英镑（马克·吐温经典作品集，“马克·吐温”翻译权威张友松先生经典译作）','马克·吐温','作家出版社','9787506380195','http://img3m8.ddimg.cn/59/7/23761148-1_u_1.jpg',0),(140,5,5,'十日谈（与但丁《神曲》齐名，影响莎士比亚的世界名著）','乔万尼薄伽丘','作家出版社','9787506380218','http://img3m1.ddimg.cn/37/1/23769541-1_u_5.jpg',0),(141,5,5,'消失的地平线（青年翻译家迟文成全译本，一部小说创造神秘理想国“香格里拉”）','詹姆斯希尔顿','作家出版社','9787506383103','http://img3m4.ddimg.cn/59/31/23790254-1_u_1.jpg',0),(142,5,5,'消失的地平线（中英文套装，讲述寻找“香格里拉”的传奇故事）','詹姆斯','作家出版社','25100412','http://img3m2.ddimg.cn/51/19/25100412-1_u_1.jpg',0),(143,5,5,'王子与贫儿（“马克·吐温”作品翻译权威张友松先生经典全译本）','马克吐温','作家出版社','9787506380225','http://img3m3.ddimg.cn/15/25/23761203-1_u_1.jpg',0),(144,5,5,'金银岛（名家全译本）','史蒂文森','作家出版社','9787506380201','http://img3m4.ddimg.cn/16/26/23761204-1_u_1.jpg',0),(145,5,5,'追风筝的人（2018年新版）','卡勒德·胡赛尼','上海人民出版社','9787208061644','http://img3m5.ddimg.cn/26/14/25238195-1_u_3.jpg',0),(146,5,5,'追风筝的人（2018年新版）','卡勒德·胡赛尼','上海人民出版社','9787208061644','http://img3m5.ddimg.cn/26/14/25238195-1_u_3.jpg',0),(147,5,5,'活着（2017年新版）','余华','作家出版社','9787506365437','http://img3m0.ddimg.cn/7/27/25137790-1_u_2.jpg',0),(148,5,5,'活着（2017年新版）','余华','作家出版社','9787506365437','http://img3m0.ddimg.cn/7/27/25137790-1_u_2.jpg',0),(149,5,5,'追风筝的人套装（全三册）','卡勒德·胡赛尼','上海人民出版社','25249351','http://img3m1.ddimg.cn/94/33/25249351-1_u_3.jpg',0),(150,5,5,'灿烂千阳','卡勒德·胡赛尼','上海人民出版社','9787208072107','http://img3m7.ddimg.cn/84/5/25222017-1_u_1.jpg',0),(151,5,5,'高山上的小邮局','安赫莱斯·多尼亚特','上海人民出版社','9787208151789','http://img3m0.ddimg.cn/91/25/25280830-1_u_3.jpg',0),(152,5,5,'群山回唱','卡勒德·胡赛尼','上海人民出版社','9787208115132','http://img3m9.ddimg.cn/76/13/23307349-1_u_5.jpg',0),(153,5,5,'人间失格（日本小说家太宰治的自传体小说）','太宰治','作家出版社','9787506380263','http://img3m5.ddimg.cn/56/4/23761145-1_u_2.jpg',0),(154,5,5,'张大小姐（著名媒体人、出版人洪晃首部长篇小说，拿“上流社会”开涮，从虚构中打捞真实，借书中人品评世事','洪晃','浙江文艺出版社','9787533953980','http://img3m4.ddimg.cn/25/8/25548064-1_u_2.jpg',0),(155,5,5,'河边的错误 （《活着》余华畅销30年ZUI佳中篇小说集）','余华','时代文艺出版社','9787538755961','http://img3m5.ddimg.cn/56/7/25201595-1_u_4.jpg',0),(156,5,5,'在细雨中呼喊（新版）','余华','作家出版社','9787506365604','http://img3m7.ddimg.cn/16/27/25160767-1_u_3.jpg',0),(157,5,5,'余华经典作品集（共9册）作家出版社推荐作品','余华','作家出版社','25258168','http://img3m8.ddimg.cn/1/7/25258168-1_u_3.jpg',0),(158,5,5,'许三观卖血记（新版）','余华','作家出版社','9787506365680','http://img3m6.ddimg.cn/15/26/25160766-1_u_3.jpg',0),(159,5,5,'兄弟（新版）','余华','作家出版社','9787506365697','http://img3m7.ddimg.cn/70/11/25147357-1_u_2.jpg',0),(160,5,5,'余华百万畅销图书精品集（共3册）作家出版社推荐必读书','余华','作家出版社','9787506365437','http://img3m0.ddimg.cn/87/27/25260630-1_u_3.jpg',0),(161,5,5,'红拂夜奔','王小波','北京联合出版公司','9787550269026','http://img3m9.ddimg.cn/72/28/23961339-1_u_4.jpg',0),(162,5,5,' 青铜时代','王小波','北京联合出版公司','9787550269040','http://img3m7.ddimg.cn/70/26/23961337-1_u_2.jpg',0),(163,5,5,'黑铁时代','王小波','北京联合出版公司','9787550269019','http://img3m0.ddimg.cn/73/29/23961340-1_u_2.jpg',0),(164,5,5,'白银时代','王小波','北京联合出版公司','9787550268999','http://img3m2.ddimg.cn/75/31/23961342-1_u_2.jpg',0),(165,5,5,'王小波时代三部曲','王小波','北京联合出版公司','23961334','http://img3m4.ddimg.cn/67/23/23961334-1_u_2.jpg',0),(166,5,5,'王小波文集八卷本','王小波','北京联合出版公司','23961335','http://img3m5.ddimg.cn/68/24/23961335-1_u_6.jpg',0),(167,6,6,'墨菲定律','张文成','古吴轩出版社','9787554609491','http://img3m1.ddimg.cn/81/29/25142121-1_u_2.jpg',0),(168,6,6,'墨菲定律','张文成','古吴轩出版社','9787554609491','http://img3m1.ddimg.cn/81/29/25142121-1_u_2.jpg',0),(169,6,6,'黑羊效应','陈俊钦','团结出版社','9787512640818','http://img3m9.ddimg.cn/17/5/23959799-1_u_6.jpg',0),(170,6,6,'可怕的盲从：习惯如何左右我们的工作和生活','艾拉','天津人民出版社','9787201121321','http://img3m0.ddimg.cn/56/29/25123880-1_u_2.jpg',0),(171,6,6,'迷因效应：谁在影响你，你在影响谁','高德','天津人民出版社','9787201108957','http://img3m3.ddimg.cn/14/28/24059093-1_u_6.jpg',0),(172,6,6,'通俗心理学经典套装（墨菲定律+蝴蝶效应）（套装全2册）','志晶','古吴轩出版社','25320384','http://img3m4.ddimg.cn/45/26/25320384-1_u_2.jpg',0),(173,6,6,'对于自己，你只是个陌生人','高莉娟','天津人民出版社','9787201138459','http://img3m3.ddimg.cn/30/36/25338783-1_u_3.jpg',0),(174,6,6,'受益一生的心理学书籍（墨菲定律  乌合之众  梦的解析）（套装全3册）','张文成','古吴轩出版社','9787554609491','http://img3m9.ddimg.cn/73/12/25296949-1_u_5.jpg',0),(175,6,6,'蝴蝶效应（经典收藏版）','志晶','古吴轩出版社','9787554611746','http://img3m8.ddimg.cn/39/20/25320378-1_u_5.jpg',0),(176,6,6,'认同自己：如何超越与生俱来的弱点','斯蒂芬妮·斯塔尔','天津人民出版社','9787201141039','http://img3m2.ddimg.cn/91/2/25350922-1_u_2.jpg',0),(177,6,6,'墨菲定律套装全4册：墨菲定律+蝴蝶效应+乌合之众+梦的解析','张文成','古吴轩出版社','25579260','http://img3m0.ddimg.cn/36/13/25579260-1_u_2.jpg',0),(178,7,7,'所有失去的都会以另一种方式归来（随书附赠限量珍藏版明信片×精致书签）','耿帅','九州出版社','9787510842344','http://img3m2.ddimg.cn/2/13/23926322-1_u_9.jpg',0),(179,7,7,'所有失去的都会以另一种方式归来（随书附赠限量珍藏版明信片×精致书签）','耿帅','九州出版社','9787510842344','http://img3m2.ddimg.cn/2/13/23926322-1_u_9.jpg',0),(180,7,7,'你有多凶猛，世界就有多软弱（如何在残酷的世界里，成为一个剽悍的人）','眠眠','贵州人民出版社','9787221143501','http://img3m0.ddimg.cn/20/0/25305410-1_u_3.jpg',0),(181,7,7,'【签名版】所有失去的都会以另一种方式归来系列3部（仅限前500名，售完即止）','耿帅','九州出版社','24058443','http://img3m3.ddimg.cn/57/7/24058443-1_u_6.jpg',0),(182,7,7,'如果事与愿违就相信一定另有安排','宋筱白','九州出版社','9787510845987','http://img3m0.ddimg.cn/75/22/24020940-1_u_9.jpg',0),(183,7,7,'愿所有等待终不被辜负','宋筱白','九州出版社','9787510847325','http://img3m8.ddimg.cn/65/13/24046868-1_u_8.jpg',0),(184,7,7,'我走了很远的路，才来到你的面前（当当专享亲笔签名版）','小马哥','中国轻工业出版社','9787518419166','http://img3m6.ddimg.cn/75/29/25264776-1_u_8.jpg',0),(185,8,8,'皮囊（畅销300万册的国民读本，韩寒监制，刘德华、李敬泽作序。繁体版面世即进入台湾诚品、博客来畅销榜','蔡崇达','天津人民出版社','9787201088945','http://img3m8.ddimg.cn/53/15/23604128-1_u_8.jpg',0),(186,8,8,'皮囊（畅销300万册的国民读本，韩寒监制，刘德华、李敬泽作序。繁体版面世即进入台湾诚品、博客来畅销榜','蔡崇达','天津人民出版社','9787201088945','http://img3m8.ddimg.cn/53/15/23604128-1_u_8.jpg',0),(187,8,8,'皮囊+我所理解的生活+活着活着就老了（随机赠送神秘图书一本）','蔡崇达','天津人民出版社','25306953','http://img3m3.ddimg.cn/78/26/25306953-1_u_5.jpg',0),(188,8,8,'莎士比亚戏剧全集（朱生豪经典全译本，收入莎翁所有10部悲剧和13部喜剧）','威廉·莎士比亚','作家出版社','24030523','http://img3m3.ddimg.cn/55/22/24030523-1_u_2.jpg',0),(189,8,8,'莎士比亚悲剧集（朱生豪经典全译本，收入莎翁所有10部喜剧）','威廉·莎士比亚','作家出版社','9787506389907','http://img3m2.ddimg.cn/54/21/24030522-1_u_2.jpg',0),(190,8,8,'莎士比亚喜剧集 （朱生豪经典全译本，收入莎翁所有13部喜剧）','威廉·莎士比亚','作家出版社','9787506389891','http://img3m4.ddimg.cn/56/23/24030524-1_u_2.jpg',0),(191,8,8,'瓦尔登湖（瓦尔登湖畔，不只是身体的栖息之所，更是精神的沉思之地）（1-9年级必读书单）','亨利戴维梭罗','作家出版社','9787506382502','http://img3m1.ddimg.cn/53/6/23828561-1_u_3.jpg',0),(192,8,8,'培根随笔','弗兰西斯培根','作家出版社','9787506379793','http://img3m6.ddimg.cn/92/24/23752766-1_u_1.jpg',0),(193,8,8,'丰子恺万般滋味，都是生活','丰子恺','华中科技大学出版社','9787568039390','http://img3m5.ddimg.cn/31/23/25308985-1_u_8.jpg',0),(194,8,8,'丰子恺万般滋味，都是生活','丰子恺','华中科技大学出版社','9787568039390','http://img3m5.ddimg.cn/31/23/25308985-1_u_8.jpg',0),(195,8,8,'我喜欢生命本来的样子(周国平经典散文作品集)','周国平','作家出版社','9787506391542','http://img3m0.ddimg.cn/28/30/24198400-1_u_4.jpg',0),(196,8,8,'我喜欢生命本来的样子(周国平经典散文作品集)','周国平','作家出版社','9787506391542','http://img3m0.ddimg.cn/28/30/24198400-1_u_4.jpg',0),(197,8,8,'幸有我来山未孤——丰子恺画传','钟桂松','华中科技大学出版社','9787568043458','http://img3m7.ddimg.cn/62/28/26184077-1_u_3.jpg',0),(198,8,8,'桃李春风一杯酒：唐朝诗人的快意人生 （中国诗词大会通关必读，独家书签版）','叶楚桥','贵州人民出版社','9787221149244','http://img3m4.ddimg.cn/52/15/26315044-1_u_7.jpg',0),(199,8,8,'丰子恺精品散文集：若爱世界都可爱','丰子恺','时代文艺出版社','9787538759907','http://img3m1.ddimg.cn/10/11/26439841-1_u_5.jpg',0),(200,8,8,'沈从文精品散文集：我自故乡来','沈从文','时代文艺出版社','9787538759877','http://img3m2.ddimg.cn/11/12/26439842-1_u_5.jpg',0),(201,8,8,'丰子恺、沈从文、老舍“吾乡”系列散文集（三册）','','','','http://img3m1.ddimg.cn/21/33/410266911-1_u_1.jpg',0),(202,8,8,'王小波杂文','王小波','北京联合出版公司','23961333','http://img3m3.ddimg.cn/66/22/23961333-1_u_2.jpg',0),(203,8,8,'老舍精品散文集：人老舍不得','老舍','时代文艺出版社','9787538759921','http://img3m0.ddimg.cn/98/0/26439830-1_u_6.jpg',0),(204,8,8,'爱你就像爱生命','王小波','北京联合出版公司','9787550268982','http://img3m3.ddimg.cn/76/32/23961343-1_u_1.jpg',0),(205,8,8,'沉默的大多数（又名《一只特立独行的猪》）','王小波','北京联合出版公司','9787550269002','http://img3m1.ddimg.cn/74/30/23961341-1_u_2.jpg',0),(206,8,8,'我的精神家园','王小波','北京联合出版公司','9787550269057','http://img3m6.ddimg.cn/69/25/23961336-1_u_2.jpg',0),(207,9,9,'少年读史记（套装全5册）','张嘉骅','青岛出版社','23778791','http://img3m1.ddimg.cn/80/1/23778791-1_u_4.jpg',0),(208,9,9,'少年读史记（套装全5册）','张嘉骅','青岛出版社','23778791','http://img3m1.ddimg.cn/80/1/23778791-1_u_4.jpg',0),(209,9,9,'银火箭少年科幻系列 （8册。亚洲首位“雨果奖”得主刘慈欣主编，根据《流浪地球》改编的电影大年初一上映','刘慈欣','浙江教育出版社','25259302','http://img3m2.ddimg.cn/46/31/25259302-1_u_11.jpg',0),(210,9,9,'银火箭少年科幻系列 （8册。亚洲首位“雨果奖”得主刘慈欣主编，根据《流浪地球》改编的电影大年初一上映','刘慈欣','浙江教育出版社','25259302','http://img3m2.ddimg.cn/46/31/25259302-1_u_11.jpg',0),(211,9,9,'神奇校车·桥梁书版（全20册）','乔安娜柯尔','贵州人民出版社','9787221116604','http://img3m0.ddimg.cn/61/3/23444350-1_u_4.jpg',0),(212,9,9,'神奇校车·桥梁书版（全20册）','乔安娜柯尔','贵州人民出版社','9787221116604','http://img3m0.ddimg.cn/61/3/23444350-1_u_4.jpg',0),(213,9,9,'少年读西游记（套装全3册）','张嘉骅','青岛出版社','9787555261094','http://img3m8.ddimg.cn/78/26/25178748-1_u_3.jpg',0),(214,9,9,'漫漫画：上下五千年（全彩16册）','','','','http://img3m1.ddimg.cn/77/35/410265581-1_u_1.jpg',0),(215,9,9,'漫漫画：史记（漫画版套装共10本） ','漫漫画团队','江苏凤凰美术出版社','9787558001789','http://img3m1.ddimg.cn/16/10/24170371-1_u_9.jpg',0),(216,9,9,'西游大擂台——创意阅读桌游','蔡忠琦','青岛出版社','9787555261100','http://img3m9.ddimg.cn/45/9/25344639-1_u_2.jpg',0),(217,9,9,'为孩子解读《西游记》','李天飞','天天出版社有限责任公司','9787501613939','http://img3m8.ddimg.cn/69/12/25279818-1_u_3.jpg',0),(218,9,9,'银火箭少年科幻（时间大劫案+时间特遣队）2册','','','','http://img3m2.ddimg.cn/39/22/410265642-1_u_1.jpg',0),(219,9,9,'诺奖少年版（全套30册）2018当当童书畅销书，日销售ZUI高达50000册，系列销量突破35000','海明威','辽宁少年儿童出版社','25062481','http://img3m1.ddimg.cn/37/13/25062481-1_u_2.jpg',0),(220,9,9,'科学怪人（又名弗兰肯斯坦，银火箭少年科幻系列）','玛丽·雪莱','民主与建设出版社','9787513918916','http://img3m5.ddimg.cn/39/24/25259295-1_u_2.jpg',0),(221,9,9,'大战火星人（又名星球大战，银火箭少年科幻系列）','赫伯特·乔治·威尔斯','浙江教育出版社','9787553671215','http://img3m7.ddimg.cn/41/26/25259297-1_u_2.jpg',0),(222,9,9,'时间特遣队（银火箭少年科幻系列）','亚历克斯·伍尔夫','浙江教育出版社','9787553671390','http://img3m8.ddimg.cn/42/27/25259298-1_u_2.jpg',0),(223,9,9,'我爱机器人（银火箭少年科幻系列）','苏姗妮·范·鲁尹','浙江教育出版社','9787553671406','http://img3m9.ddimg.cn/43/28/25259299-1_u_2.jpg',0),(224,9,9,'超验复活（又名陶威尔教授的头颅，银火箭少年科幻系列）','亚历山大·别利亚耶夫','民主与建设出版社','9787513919074','http://img3m6.ddimg.cn/40/25/25259296-1_u_2.jpg',0),(225,9,9,'漫漫画上下五千年（上）（8册套装）','漫漫画团队','江苏凤凰美术出版社','9787558001765','http://img3m9.ddimg.cn/88/27/25095499-1_u_3.jpg',0),(226,9,9,'漫漫画上下五千年（下）（8册套装）','漫漫画团队','江苏凤凰美术出版社','9787558001772','http://img3m0.ddimg.cn/89/28/25095500-1_u_3.jpg',0),(227,9,9,'神奇校车·人文版（全3册）','乔安娜柯尔','贵州人民出版社','25280355','http://img3m5.ddimg.cn/12/31/25280355-1_u_4.jpg',0),(228,9,9,'神奇校车·动画版（全10册）','乔安娜柯尔','贵州人民出版社','9787221091857','http://img3m6.ddimg.cn/87/30/25243206-1_u_5.jpg',0),(229,9,9,'神奇校车大家族（全73册）','乔安娜柯尔','贵州人民出版社','9787221111944','http://img3m3.ddimg.cn/28/9/25547473-1_u_6.jpg',0),(230,9,9,'神奇校车·阅读版（全16册）','乔安娜柯尔','贵州人民出版社','21085963','http://img3m3.ddimg.cn/52/33/21085963-1_u_4.jpg',0),(231,9,9,'神奇校车·手工益智版（全8册）','乔安娜·柯尔','贵州人民出版社','24012161','http://img3m1.ddimg.cn/8/12/24012161-1_u_6.jpg',0),(232,9,9,'冰与火的星球（银火箭少年科幻系列）','苏学军','浙江教育出版社','9787553671581','http://img3m3.ddimg.cn/47/32/25259303-1_u_2.jpg',0),(233,9,9,'勇敢的船长（诺奖少年版）','吉卜林','辽宁少年儿童出版社','9787531568896','http://img3m4.ddimg.cn/60/28/24041814-1_u_4.jpg',0),(234,9,9,'小毛驴之歌（诺奖少年版）','希梅内斯','辽宁少年儿童出版社','9787531568940','http://img3m9.ddimg.cn/65/33/24041819-1_u_2.jpg',0),(235,9,9,'饥饿的石头（诺奖少年版）','泰戈尔','辽宁少年儿童出版社','9787531568971','http://img3m3.ddimg.cn/69/0/24041823-1_u_2.jpg',0),(236,9,9,'时间大劫案（银火箭少年科幻系列）','亚历克斯·伍尔夫','浙江教育出版社','9787553671420','http://img3m1.ddimg.cn/45/30/25259301-1_u_2.jpg',0),(237,9,9,'原来如此的故事（诺奖少年版）','吉卜林','辽宁少年儿童出版社','9787531568957','http://img3m1.ddimg.cn/67/35/24041821-1_u_2.jpg',0),(238,9,9,'丛林故事（诺奖少年版，新课标）','吉卜林','辽宁少年儿童出版社','9787531568858','http://img3m9.ddimg.cn/55/23/24041809-1_u_2.jpg',0),(239,9,9,'一个园丁的四季（诺奖少年版）','卡雷尔·恰佩克','辽宁少年儿童出版社','9787531569213','http://img3m9.ddimg.cn/75/6/24041829-1_u_2.jpg',0),(240,9,9,'蜜蜂公主（诺奖少年版）','法朗士','辽宁少年儿童出版社','9787531568902','http://img3m5.ddimg.cn/61/29/24041815-1_u_4.jpg',0),(241,9,9,'名人传（诺奖少年版，新课标）','罗曼·罗兰','辽宁少年儿童出版社','9787531568889','http://img3m3.ddimg.cn/59/27/24041813-1_u_2.jpg',0),(242,9,9,'青鸟（诺奖少年版，新课标）','梅特林克','辽宁少年儿童出版社','9787531568933','http://img3m8.ddimg.cn/64/32/24041818-1_u_2.jpg',0),(243,9,9,'诺奖少年版（成长卷2共6册）','恰佩克','辽宁少年儿童出版社','25062484','http://img3m4.ddimg.cn/40/16/25062484-1_u_1.jpg',0),(244,9,9,'诺奖少年版（启迪卷1，共6册）','汉姆生','辽宁少年儿童出版社','24041825','http://img3m5.ddimg.cn/71/2/24041825-1_u_2.jpg',0),(245,9,9,'老人与海（诺奖少年版，新课标）','海明威','辽宁少年儿童出版社','9787531568872','http://img3m2.ddimg.cn/58/26/24041812-1_u_2.jpg',0),(246,9,9,'诺奖少年版 （启迪卷2，共6册）','黛莱达','辽宁少年儿童出版社','25062493','http://img3m3.ddimg.cn/49/25/25062493-1_u_1.jpg',0),(247,9,9,'尼尔斯骑鹅旅行记（诺奖少年版，新课标）','塞尔玛·拉格洛夫','辽宁少年儿童出版社','9787531568919','http://img3m6.ddimg.cn/62/30/24041816-1_u_2.jpg',0),(248,9,9,'诺奖少年版（成长卷1，共6册）','海明威','辽宁少年儿童出版社','24041811','http://img3m1.ddimg.cn/57/25/24041811-1_u_2.jpg',0),(249,9,9,'诺奖少年版（萌芽卷6册）','法朗士','辽宁少年儿童出版社','24041820','http://img3m0.ddimg.cn/66/34/24041820-1_u_4.jpg',0),(250,9,9,'诺奖少年版（含萌芽卷、启迪卷、成长卷共18册。当当2017新锐童书奖！含新课标书目，适合中小学生阅读','海明威','辽宁少年儿童出版社','24169703','http://img3m3.ddimg.cn/41/8/24169703-1_u_4.jpg',0),(251,9,9,'少年读国学（全彩精读版）上辑：三字经+百家姓+千字文+弟子规+论语+孟子（套装全6册）','萧史','青岛出版社','25230275','http://img3m5.ddimg.cn/26/12/25230275-1_u_3.jpg',0),(252,9,9,'独眼孙悟空','张嘉骅','青岛出版社','9787555261520','http://img3m1.ddimg.cn/22/36/25194631-1_u_3.jpg',0),(253,9,9,'小熊和最好的爸爸（全7册）','丹姆','贵州人民出版社','9787221078803','http://img3m1.ddimg.cn/31/4/20039611-1_u_3.jpg',0),(254,9,9,'小熊和最好的爸爸（全7册）','丹姆','贵州人民出版社','9787221078803','http://img3m1.ddimg.cn/31/4/20039611-1_u_3.jpg',0),(255,9,9,'神奇校车·图画书版（全12册，新增《科学博览会》1册）','乔安娜柯尔','贵州人民出版社','25252408','http://img3m8.ddimg.cn/82/19/25252408-1_u_17.jpg',0),(256,9,9,'神奇校车·图画书版（全12册，新增《科学博览会》1册）','乔安娜柯尔','贵州人民出版社','25252408','http://img3m8.ddimg.cn/82/19/25252408-1_u_17.jpg',0),(257,9,9,'小不点儿猫绘本（全10册，解密孩子成长的“小心思”，陪伴百万孩子快乐成长的获奖绘本）','井本蓉子','教育科学出版社','9787519113094','http://img3m0.ddimg.cn/28/14/26515990-1_u_4.jpg',0),(258,9,9,'流浪的地球（刘慈欣著，无删节无改写，大人孩子均可阅读，此版本当当网销量遥遥领先！根据本书改编的同名电','刘慈欣','浙江教育出版社','9787553671413','http://img3m0.ddimg.cn/44/29/25259300-1_u_8.jpg',0),(259,9,9,'流浪的地球（刘慈欣著，无删节无改写，大人孩子均可阅读，此版本当当网销量遥遥领先！根据本书改编的同名电','刘慈欣','浙江教育出版社','9787553671413','http://img3m0.ddimg.cn/44/29/25259300-1_u_8.jpg',0),(260,10,10,'蒙台梭利育儿全书','蒙台梭利','陕西师范大学出版社','9787561349953','http://img3m3.ddimg.cn/95/22/20831873-1_u_2.jpg',0),(261,10,10,'蒙台梭利教育经典作品——蒙台梭利早期教育法','蒙台梭利','黑龙江教育出版社','9787531670056','http://img3m7.ddimg.cn/50/30/23360387-1_u_2.jpg',0),(262,10,10,'蒙台梭利文集 第二卷  小学内自我教育','蒙台梭利','人民出版社','9787010126951','http://img3m4.ddimg.cn/36/21/23442444-1_u_1.jpg',0),(263,10,10,'蒙台梭利文集 第四卷  为新世界而教育  如何教育潜在成人','蒙台梭利','人民出版社','9787010126975','http://img3m7.ddimg.cn/75/35/23446047-1_u_1.jpg',0),(264,10,10,'蒙台梭利文集 第一卷  发现儿童','蒙台梭利','人民出版社','9787010108483','http://img3m6.ddimg.cn/74/34/23446046-1_u_1.jpg',0),(265,10,10,'蒙台梭利早期教育法：养育0～6岁孩子的黄金准则','蒙台梭利','黑龙江教育出版社','9787531692447','http://img3m5.ddimg.cn/88/35/25171135-1_u_1.jpg',0);





SELECT * FROM book;


-- 借书表
DROP TABLE IF EXISTS borrow;
CREATE TABLE  borrow(
brid INT PRIMARY KEY AUTO_INCREMENT, -- ID
bid INT,-- 书本ID	
uid INT, -- 借书用户ID
TIME VARCHAR(100), -- 借书时间
statu INT -- 状态 0.已借书  1.已归还
);
SELECT * FROM borrow;













