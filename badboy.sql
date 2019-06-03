SET NAMES UTF8;
DROP DATABASE IF EXISTS badboy;
CREATE DATABASE badboy CHARSET=UTF8;
USE badboy;

-- 用户列表
CREATE TABLE users(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(200),
    upwd VARCHAR(200),
    email VARCHAR(200),
    phone VARCHAR(200),
    avatar VARCHAR(200),
    -- 真实姓名
    rname VARCHAR(200),
    gender INT,
    card_type INT,
    cardNum VARCHAR(200),
    xueli INT,
    school VARCHAR(200),
    stuNum VARCHAR(200)
);
INSERT INTO users VALUES
    ("NULL","Sunny","123456ab","1090165836@qq.com","18818218069","image/avatar/default.jpg","吴雅丽","1"),
    ("NULL","Shirley","12345678","1090165835@qq.com","18818218067","image/avatar/default.jpg","韩梅梅","1"),
    ("NULL","Alan","123456ab","1090165834@qq.com","18818218066","image/avatar/default.jpg","李雷","0"),
    ("NULL","Edward","123456ab","1090165833@qq.com","18818218065","image/avatar/default.jpg","徐亮","0");

-- 演出风格
CREATE TABLE styles(
  stid INT PRIMARY KEY AUTO_INCREMENT,
  stname VARCHAR(200)
);
INSERT INTO styles VALUES
    -- ("1","全部"),
    ("2","摇滚"),
    ("3","后摇滚"),
    ("4","流行"),
    ("5","朋克"),
    ("6","后朋克"),
    ("7","民谣"),
    ("8","电子"),
    ("9","独立"),
    ("10","Disco"),
    ("11","跳舞"),
    ("12","金属"),
    ("13","世界音乐");

-- 艺人
CREATE TABLE artists(
    arid INT PRIMARY KEY AUTO_INCREMENT,
    arname VARCHAR(16),
    arphoto VARCHAR(128),
    stid INT,     -- 关联演出风格
    profile  VARCHAR(1024),         -- 音乐人介绍
    FOREIGN KEY(stid) REFERENCES styles(stid)
);
-- 艺人相关图片
CREATE TABLE art_pics(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    arid INT, --关联艺人
    pic VARCHAR(128), --图片路径
    FOREIGN KEY(arid) REFERENCES artists(arid)
);
-- 艺人作品
CREATE TABLE albums(
    alid INT PRIMARY KEY AUTO_INCREMENT,  --作品编号
    arid INT,
    FOREIGN KEY(arid) REFERENCES artists(arid)
);

INSERT INTO art_pics VALUES
    ("NULL",1,"image/artists/sdy/sdy01.jpg"),
    ("NULL",1,"image/artists/sdy/sdy02.jpg"),
    ("NULL",1,"image/artists/sdy/sdy03.jpg"),
    ("NULL",1,"image/artists/sdy/sdy04.jpg"),
    ("NULL",1,"image/artists/sdy/sdy05.jpg"),
    ("NULL",1,"image/artists/sdy/sdy06.jpg"),
    ("NULL",1,"image/artists/sdy/sdy07.jpg"),
    ("NULL",1,"image/artists/sdy/sdy08.jpg"),
    ("NULL",2,"image/artists/wq/wq01.jpg"),
    ("NULL",2,"image/artists/wq/wq02.jpg"),
    ("NULL",2,"image/artists/wq/wq03.jpg"),
    ("NULL",2,"image/artists/wq/wq04.jpg"),
    ("NULL",3,"image/artists/xtx/xtx01.jpg"),
    ("NULL",3,"image/artists/xtx/xtx02.jpg"),
    ("NULL",3,"image/artists/xtx/xtx03.jpg"),
    ("NULL",3,"image/artists/xtx/xtx04.jpg"),
    ("NULL",3,"image/artists/xtx/xtx05.jpg"),
    ("NULL",3,"image/artists/xtx/xtx06.jpg"),
    ("NULL",3,"image/artists/xtx/xtx07.jpg"),
    ("NULL",3,"image/artists/xtx/xtx08.jpg"),
    ("NULL",4,"image/artists/md/md01.jpg"),
    ("NULL",4,"image/artists/md/md02.jpg"),
    ("NULL",4,"image/artists/md/md03.jpg"),
    ("NULL",4,"image/artists/md/md04.jpg"),
    ("NULL",4,"image/artists/md/md05.jpg"),
    ("NULL",5,"image/artists/yss/yss01.jpg"),
    ("NULL",5,"image/artists/yss/yss02.jpg"),
    ("NULL",5,"image/artists/yss/yss03.jpg"),
    ("NULL",5,"image/artists/yss/yss04.jpg"),
    ("NULL",5,"image/artists/yss/yss05.jpg"),
    ("NULL",5,"image/artists/yss/yss06.jpg"),
    ("NULL",5,"image/artists/yss/yss07.jpg"),
    ("NULL",6,"image/artists/xkz/xkz.jpg"),
    ("NULL",7,"image/artists/hh/hh01.jpg"),
    ("NULL",7,"image/artists/hh/hh02.jpg"),
    ("NULL",7,"image/artists/hh/hh03.jpg"),
    ("NULL",7,"image/artists/hh/hh04.jpg"),
    ("NULL",7,"image/artists/hh/hh05.jpg"),
    ("NULL",7,"image/artists/hh/hh06.jpg"),
    ("NULL",7,"image/artists/hh/hh07.jpg"),
    ("NULL",7,"image/artists/hh/hh08.jpg"),
    ("NULL",8,"image/artists/zx/zx01.jpg"),
    ("NULL",8,"image/artists/zx/zx02.jpg"),
    ("NULL",8,"image/artists/zx/zx03.jpg"),
    ("NULL",8,"image/artists/zx/zx04.jpg"),
    ("NULL",8,"image/artists/zx/zx05.jpg"),
    ("NULL",9,"image/artists/hdf/hdf01.jpg"),
    ("NULL",9,"image/artists/hdf/hdf02.jpg"),
    ("NULL",9,"image/artists/hdf/hdf03.jpg"),
    ("NULL",9,"image/artists/hdf/hdf04.jpg"),
    ("NULL",9,"image/artists/hdf/hdf05.jpg"),
    ("NULL",10,"image/artists/as/as01.jpg"),
    ("NULL",10,"image/artists/as/as02.jpg"),
    ("NULL",10,"image/artists/as/as03.jpg"),
    ("NULL",10,"image/artists/as/as04.jpg"),
    ("NULL",10,"image/artists/as/as05.jpg"),
    ("NULL",11,"image/artists/ty/ty01.jpg"),
    ("NULL",11,"image/artists/ty/ty02.jpg"),
    ("NULL",11,"image/artists/ty/ty03.jpg"),
    ("NULL",11,"image/artists/ty/ty04.jpg"),
    ("NULL",11,"image/artists/ty/ty05.jpg"),
    ("NULL",11,"image/artists/ty/ty06.jpg"),
    ("NULL",11,"image/artists/ty/ty07.jpg"),
    ("NULL",11,"image/artists/ty/ty08.jpg"),
    ("NULL",11,"image/artists/ty/ty09.jpg"),
    ("NULL",11,"image/artists/ty/ty10.jpg"),
    ("NULL",12,"image/artists/cw/cw01.jpg"),
    ("NULL",12,"image/artists/cw/cw02.jpg"),
    ("NULL",12,"image/artists/cw/cw03.jpg"),
    ("NULL",12,"image/artists/cw/cw04.jpg"),
    ("NULL",12,"image/artists/cw/cw05.jpg"),
    ("NULL",12,"image/artists/cw/cw06.jpg"),
    ("NULL",13,"image/artists/cjsc/cjsc01.jpg"),
    ("NULL",13,"image/artists/cjsc/cjsc02.jpg"),
    ("NULL",14,"image/artists/dka/dka01.jpg"),
    ("NULL",14,"image/artists/dka/dka02.jpg"),
    ("NULL",14,"image/artists/dka/dka03.jpg"),
    ("NULL",14,"image/artists/dka/dka04.jpg"),
    ("NULL",14,"image/artists/dka/dka05.jpg"),
    ("NULL",14,"image/artists/dka/dka06.jpg"),
    ("NULL",14,"image/artists/dka/dka07.jpg"),
    ("NULL",14,"image/artists/dka/dka08.jpg"),
    ("NULL",14,"image/artists/dka/dka09.jpg"),
    ("NULL",14,"image/artists/dka/dka10.jpg"),
    ("NULL",15,"image/artists/eb/eb01.jpg"),
    ("NULL",15,"image/artists/eb/eb02.jpg"),
    ("NULL",15,"image/artists/eb/eb03.jpg"),
    ("NULL",15,"image/artists/eb/eb04.jpg"),
    ("NULL",16,"image/artists/hs/hs01.jpg"),
    ("NULL",16,"image/artists/hs/hs02.jpg"),
    ("NULL",16,"image/artists/hs/hs03.jpg"),
    ("NULL",16,"image/artists/hs/hs04.jpg"),
    ("NULL",16,"image/artists/hs/hs05.jpg"),
    ("NULL",16,"image/artists/hs/hs06.jpg"),
    ("NULL",16,"image/artists/hs/hs07.jpg"),
    ("NULL",16,"image/artists/hs/hs08.jpg"),
    ("NULL",16,"image/artists/hs/hs09.jpg"),
    ("NULL",16,"image/artists/hs/hs10.jpg"),
    ("NULL",17,"image/artists/mf/mf01.jpg"),
    ("NULL",17,"image/artists/mf/mf02.jpg"),
    ("NULL",17,"image/artists/mf/mf03.jpg"),
    ("NULL",18,"image/artists/styd/styd01.jpg"),
    ("NULL",18,"image/artists/styd/styd02.jpg"),
    ("NULL",18,"image/artists/styd/styd03.jpg"),
    ("NULL",18,"image/artists/styd/styd04.jpg"),
    ("NULL",19,"image/artists/sw/sw01.jpg"),
    ("NULL",19,"image/artists/sw/sw02.jpg"),
    ("NULL",19,"image/artists/sw/sw03.jpg"),
    ("NULL",19,"image/artists/sw/sw04.jpg"),
    ("NULL",20,"image/artists/yds/yds01.jpg"),
    ("NULL",20,"image/artists/yds/yds02.jpg"),
    ("NULL",20,"image/artists/yds/yds03.jpg"),
    ("NULL",20,"image/artists/yds/yds04.jpg"),
    ("NULL",20,"image/artists/yds/yds05.jpg");





-- 演出表
CREATE TABLE shows(
    shid INT PRIMARY KEY AUTO_INCREMENT,
    shname VARCHAR(200),
    ticket_tpye INT,
    price DECIMAL,
    discount DECIMAL,
    status INT,
    description VARCHAR(500), -- 演出信息
    arid INT, -- 关联艺人
    FOREIGN KEY(arid) REFERENCES artists(arid)
)

-- 演出城市
CREATE TABLE cities(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    city VARCHAR(200)
);
INSERT INTO cities VALUES
    /**("1","全国"),**/
    ("2","北京"),
    ("3","上海"),
    ("4","广州"),
    ("5","成都"),
    ("6","深圳"),
    ("7","杭州"),
    ("8","武汉"),
    ("9","西安"),
    ("10","重庆"),
    ("11","长沙"),
    ("12","南京");

-- 演出现场
CREATE TABLE venues(
    vid INT PRIMARY KEY AUTO_INCREMENT,
    vname VARCHAR(32),
    vphone VARCHAR(11),
    vaddress  VARCHAR(64),
    vpic VARCHAR(128),
    cid INT,
    FOREIGN KEY(cid) REFERENCES cities(cid)
);
INSERT INTO venues VALUES
    ("1","蘑菇空间.MoguSpace","13651253655","北京市海淀区北下关交大东路66号钻河中心2号楼102号蘑菇商店",
   "⁨image⁩/show_performance⁩/01MoguSpace.jpg","2"),
    ("2","PINKMOON.樂暮","13651253655","东城区南锣鼓巷雨儿胡同2号{非遗博物馆}2楼{靠近中央戏剧学院}",
   "⁨image⁩/show_performance⁩/02PINKMOON.jpg","2"),
    ("3","MAO Livehouse北京","010-68156770","海淀区复兴路69号院2号136-G23Mao livehouse",
   "⁨image⁩/show_performance⁩/03MAOLivehouse.jpg","2"),
    ("4","疆进酒·OMNI SPACE","13241688210","北京市海淀区北下关交大东路66号钻河中心2号楼102号蘑菇商店",
   "⁨image⁩/show_performance⁩/04OMNI SPACE.jpg","2"),
    ("6","上海 MAO Livehouse","021-64450086","上海市黄浦区重庆南路308号3楼","⁨image⁩/show_performance⁩/06shanghaiMao.jpg","3"),
    ("7","育音堂音乐公园","021—52378662","上海市长宁区愚园路1398号地下一层B1-02","⁨image⁩/show_performance⁩/07yyt.jpg","3"),
    ("8","上海 MODERNSKY LAB","65807180","上海市虹口区瑞虹天地月亮湾3楼ModernSkyLAB摩登天空","⁨image⁩/show_performance⁩/08modlab.jpg","3"),
    ("9","育音堂","021-52378662","长宁区凯旋路851号","⁨image⁩/show_performance⁩/09yyt.jpg","4"),
    ("10","MAO Livehouse广州","18816894336","广州市海珠区新港东路1088号六元素体验天地一层 MAO Livehouse广州","⁨image⁩/show_performance⁩/10gzmao.jpg","4"),
    ("11","TU凸空间","12345678900","广州大道中361-365号东方花苑大厦首层TU凸空间","⁨image⁩/show_performance⁩/11tu.jpg","4"),
    ("12","SDlivehouse","12366666666","广东省广州市海珠区工业大道北32号花城往事","⁨image⁩/show_performance⁩/12sd.jpg","4"),
    ("13","191space","123666666666","广州市越秀区广州大道中路191号(近五羊村地铁站A出口)191Space酒吧","⁨image⁩/show_performance⁩/13space.jpg","4"),
    ("14","NU SPACE","18602858900","四川省成都市青羊区奎星楼街9号，明堂创意工作区-B区•NU SPACE ","⁨image⁩/show_performance⁩/14nu.jpg","5"),
    ("15","小酒馆芳沁店","123666666666","永丰路47号丰尚玉林商务港1楼小酒馆(芳沁店)","⁨image⁩/show_performance⁩/15xjg.jpg","5"),
    ("16","乐空间 - 成都店","123666666666","四川省成都市龙泉驿区外东洪路成都乐空间space","⁨image⁩/show_performance⁩/16lkj.jpg","5"),
    ("17","正火艺术中心1号馆","123666666666","成都·东洪路666号梵木创艺区·正火艺术中心","⁨image⁩/show_performance⁩/17zhys.jpg","5"),
    ("18","HOU LIVE","123666666666","深圳市福田区滨河大道9289号KK ONE购物中心负一层B112a（地铁9号线下沙站B出口）","⁨image⁩/show_performance⁩/18hou.jpg","6"),
    ("19","B10现场","123666666666","南山区香山东街华侨城创意文化园北区C2栋北侧B10现场","⁨image⁩/show_performance⁩/19b10.jpg","6"),
    ("20","南山文体中心剧院大剧院","123666666666","深圳市南山区南山大道南山文体中心","⁨image⁩/show_performance⁩/20nan.jpg","6"),
    ("21","红糖罐Public现场（上步店）","123666666666","广东省深圳市福田区上步南路1031号红糖罐live上步店","⁨image⁩/show_performance⁩/21red.jpg","6"),
    ("22","杭州 MAO Livehouse","123666666666","浙江省杭州市上城区中山南路77号尚城1157三楼MAOLiveHouse杭州","⁨image⁩/show_performance⁩/22hzmao.jpg","7"),
    ("23","酒球会","123666666666","杭州市西湖区万塘路262号酒球会(杭州店)","⁨image⁩/show_performance⁩/23jqh.jpg","7"),
    ("24","Loopy","123666666666","杭州市上城区中山南路77号利星名品广场F3Loopy","⁨image⁩/show_performance⁩/24loopy.jpg","7"),
    ("25","HILivehouse","123666666666","杭州市江干区晓城天地潮玩馆3楼","⁨image⁩/show_performance⁩/25hil","7"),
    ("26","武汉 VOX LIVEHOUSE","123666666666","鲁磨路118号国光大厦VOX LIVEHOUSE","⁨image⁩/show_performance⁩/26vox.jpg","8"),
    ("27","武汉 L7 Livehouse","123666666666","湖北省武汉市洪山区珞狮路421-1号L7Livehouse","⁨image⁩/show_performance⁩/27l7.jpg","8"),
    ("28","武汉剧院","123666666666","江岸区解放大道1012号","⁨image⁩/show_performance⁩/28whjy.jpg","8"),
    ("29","湖北剧院","123666666666","武汉市武昌阅马场西厂口1号","⁨image⁩/show_performance⁩/29hbjy.jpg","8"),
    ("30","西安 1935 livehouse","13572124398","西安市新城区太华南路251号1935小剧场集群壹剧场","⁨image⁩/show_performance⁩/301935.jpg","9"),
    ("31","无穹俱乐部","123666666666","文昌门古玩城无穹俱乐部","⁨image⁩/show_performance⁩/31wq.jpg","9"),
    ("32","光圈CLUB","123666666666","环城西路南段1号光圈APERTURE CLUB","⁨image⁩/show_performance⁩/32gq.jpg","9"),
    ("33","拾陆原创音乐展演中心","123666666666","陕西省西安市雁塔区光泰路6号拾陆原创音乐展演中心","⁨image⁩/show_performance⁩/33slyc.jpg","9"),
    ("34","坚果（NUTS）","123666666666","渝中区 较场口90号得意潮馆负一楼B1-21","⁨image⁩/show_performance⁩/34nuts.jpg","10"),
    ("35","重庆 VOX LIVEHOUSE","123666666666","重庆市九龙坡区奥体路1号中新小时代KLANDL1层117a-119aVOX LIVEHOUSE","⁨image⁩/show_performance⁩/35vox.jpg","10"),
    ("36","重庆 文化宫大剧院","123666666666","重庆市渝中区中山二路174号文化宫-大剧院","⁨image⁩/show_performance⁩/36cqwhg.jpg","10"),
    ("37","重庆 寅派动力","123666666666","重庆市九龙坡区奥体路1号城上城·KLAND小时代乐园F5寅派动力·重庆","⁨image⁩/show_performance⁩/37ypdl.jpg","10"),
    ("38","VOX LIVEHOUSE长沙","123666666666","湖南省长沙市天心区书院南路 799 号南湖东怡大厦外国生活馆负一楼","⁨image⁩/show_performance⁩/38vox.jpg","11"),
    ("39","46LIVEHOUSE","123666666666","长沙市岳麓区新民路52号湘财大厦负一楼","⁨image⁩/show_performance⁩/39sllive.jpg","11"),
    ("40","Red Club红咖俱乐部","123666666666","中山路249号琴岛3层红咖俱乐部","⁨image⁩/show_performance⁩/40redc.jpg","11"),
    ("41","MAO Livehouse长沙","123666666666","长沙市开福区五一广场黄兴中路 粉巢24H MALL 三楼 L3-01号","⁨image⁩/show_performance⁩/41maocs.jpg","11"),
    ("42","欧拉艺术空间","123666666666","阳光路3号(太阳宫演艺广场B1层)欧拉艺术空间","⁨image⁩/show_performance⁩/42olys.jpg","12"),
    ("43","稻香音乐空间","123666666666","南京市建邺区南京奥林匹克体育中心内A18柱子对面稻香音乐空间（星巴克旁）","⁨image⁩/show_performance⁩/43dxm.jpg","12"),
    ("44","不醉不归","123666666666","南京市玄武区常发广场-4幢 88-142号","⁨image⁩/show_performance⁩/44bzbg.jpg","12"),
    ("45","江苏大剧院歌剧厅","123666666666","江苏省南京市建邺区梦都大街181号江苏大剧院","⁨image⁩/show_performance⁩/45jsdjy.jpg","12");











