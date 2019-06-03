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
    (NULL,"Sunny","123456ab","1090165836@qq.com","18818218069","image/avatar/default.jpg","吴雅丽","1",NULL,NULL,NULL,NULL,NULL),
    (NULL,"Shirley","12345678","1090165835@qq.com","18818218067","image/avatar/default.jpg","韩梅梅","1",NULL,NULL,NULL,NULL,NULL),
    (NULL,"Alan","123456ab","1090165834@qq.com","18818218066","image/avatar/default.jpg","李雷","0",NULL,NULL,NULL,NULL,NULL),
    (NULL,"Edward","123456ab","1090165833@qq.com","18818218065","image/avatar/default.jpg","徐亮","0",NULL,NULL,NULL,NULL,NULL);

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
    -- 关联演出风格
    stid INT,
    -- 音乐人介绍
    profile  VARCHAR(1024)
);
INSERT INTO artists VALUES
    ("1","宋冬野","image⁩/artists⁩/sdy⁩/hp.jpg","7","宋冬野，男，1987年生。少时乃痞校红人，歪门邪道，写曲弹弦，尽惹啼笑。后入出版业，不懂装懂，混迹苟活，劣迹斑斑，终婆娑请辞。遂终日闭门黄梁梦，住垃圾堆，喝西北风，食不果腹，衣不遮体。幸遇麻油叶，众人划桨，誓兴歌谣，尊师重道，披斩不惊。卖唱数载，得入摩厂，苦磨一年，发专一张。扛琴走南北，大汗溉东西，但愿做民犬，生世白头偕老。——民犬，就是民谣狗的意思。豆瓣：宋冬野 微博：@宋冬野"),
    ("2","万能青年旅店","image⁩/artists⁩/wq⁩/hp.jpg","2","站在分割世界的桥 那会儿很多人在愤怒，包括后来的大骗子和假和尚。他们来自石家庄，中国第一压抑的农贸市场。周围到处是忍耐和呐喊，但这些人玩的东西，却散发一些摸不着头脑的唯美气息。他们偏离了杀父和淫母，艺术和革命的正题，倒像莫名其妙丢失了家人的天才儿童，在奔向一个离石家庄太远的乌有之乡。那时候他们还有个英文名字，the nico。以盲瓜theblind melon的女儿自命，布鲁斯，另类摇滚，略带阴柔的唱和咿咿呀呀，一群偏执变态的人，既是小屁孩也是糙汉，他们到底怎么冒出来的。一个迷案。 再后来，社会在洗牌，每把都玩得大，所谓覆巢之下，安有完卵。总之，简单的事情，全变复杂了，复杂的事情，乐队人员全被简单处理了。放眼望去，早死的，文艺的，从良的，被慢慢消化的。他们当然不例外，从生活的狗洞里一点点钻出来，漫长的匍匐岁月，经历所有普通人的麻烦，所有敏感者的痛苦。 到头来他们还要再搞，搞音乐，幸甚至哉。名字变了，万能青年旅店，全世界的青年都在，而且还被招待起来，妙到不靠谱。歌曲的架构越磨越长，极尽繁华之能事，一副梦醒后吾将上下求索的阵势，硬摇滚、前卫摇滚、爵士，胃口够大。另一方面，再大的气魄也遮不住揪心的细节，比如好听的旋律，茫然、倔强、保留童真的唱腔，还有那些歌词，尽是朦胧的理想和彻骨的经验，一半火焰一半海水。这是一言难尽的声音，诚实而且美。 时代列车滚滚碾过，不想给谁以喘息余地。顷刻间，他们显得土，显得慢了，显得不够直接，显得缺乏取悦他人的能力。他们竟然还敢唱中文，还挖掘自我的深处……无形中，他们跟借力打力的全球化唱了反调，跟排坐坐过家家的独立音乐生产线尿不到一个壶。但与此同时，你很难再见到这么意气、这么纯朴的情怀，这般裹挟在漫天的风尘之中仍不离其宗，忘情于街道天空，却又对阴沟水洼中的沉痛念念在兹的诗意。他们在脏水中完成洗礼。不知不觉间，他们成了迷人的怪物，中国新音乐的奇葩，外省青年的历史宝藏，未来无限的精神不动产。好，现在时间到了，去听这些超现实主义土鳖的心跳，去看他们牛逼闪闪的现场。这些个前仆后继的，经常要扫进历史垃圾堆的，曾经苍老而今风华正茂的身体和心灵，现在全部站起来了，成立了，活下去了，发光发热了，来到你面前了。豆瓣：万能青年旅店 微信：wnqnld 微博：@万能青年旅店乐队"),
    ("3","谢天笑","img/artists/xtx/hp.jpg","2","谢天笑，生于山东淄博，中国摇滚歌手。于1990年初开始创作音乐。1994年底为电影《越南姑娘》创作歌曲《你不像》。1995年，离开出家的猎人乐队。1997年与同样来自山东的同乡李明组建了冷血动物乐队， 随后宁夏银川的鼓手武锐入队，三人编制的冷血动物以狂暴的乐风和无以复加的疯狂演出横扫北京摇滚舞台，在当时中国GRUNGE音乐风起云涌的背景下，冷血动物声名鹊起。如今的谢天笑已经是新摇滚教父。"),
    ("4","马頔","img/artists/md/hp.jpg","7","马頔（di，第二声。1989年01月15日～）北京人。独立民谣音乐人，诗人，专栏作家，2010年开始民谣音乐演出，2011年组建麻油叶民间组织厂牌。2011年至今，在全国范围内组织厂牌进行了数十场民谣相关演出。豆瓣：马頔 微博：@马頔-麻油叶"),
    ("5","尧十三","img/artists/yss/hp.jpg","7","尧十三，原名唐尧，1986年8月25日出生于贵州省毕节市织金县，中国内地男歌手，毕业于武汉大学医学院临床专业。1993年，尧十三开始学习二胡演奏。2002年，尧十三在贵州省织金县第二中学初中部学习期间，受表哥影响开始学习吉他演奏。2003年，进入贵州省织金县第二中学高中部学习。2006年，考入武汉大学医学院临床专业。2010年，尧十三开始进行民谣创作，并创作了《宝贝说再见》、《咬之歌》等原创歌曲。尧十三 尧十三 2011年，创作了《北方的女王》、《在四月快结束的时候我们做了一场没有春天的梦》、《不陌生的人》等歌曲；同年4月，尧十三加入麻油叶民间民谣组织后，开始和宋冬野、马頔等独立民谣音乐人创办的厂牌一起参加专场演出 ；同年，推出个人原创单曲《瞎子》，该歌曲是首织金方言歌曲 。2012年，推出个人原创单曲《他爸的》，收录于武汉大学原创音乐集《珞樱II》中；同年，推出个人原创单曲《鸽子吧》，收录于《麻油叶，我不能说》合辑中；同年，创作了《南方的女王》、《旧情人，我是时间的新欢》等歌曲；同年，为娄烨执导的电影《浮城谜事》弹奏吉他曲《我想弹琴给你听》，这是他首次与娄烨合作 。2013年1月12日，与马頔、宋冬野在贵阳举办了“筑城腊梅叶来香”麻油叶贵阳专场演出，现场演唱了《宝贝说再见》、《不陌生的人》、《瞎子》等歌曲 ；同年，推出个人原创单曲《寡妇王二嬢》 ；同年10月，与马頔在参加过摩登天空举办的各类音乐节后，正式签约摩登天空 ；同年，与马頔举行了“午后开始醉酒·马頔&尧十三 下午场”全国巡演 。尧十三 2014年，出演马頔演唱歌曲《南山南》的MV ；同年11月30日，助阵马頔“孤岛全国巡演东渡篇”杭州站，并现场与马頔、宋冬野合唱歌曲《南山南》 ；同年12月，为娄烨执导的电影《推拿》献唱片尾曲《他妈的》，该歌曲是尧十三2010年所创作的。 2015年7月31日，推出个人原创单曲《北方女王》，这是他首张专辑的先行单曲 ；同年8月24日，推出个人原创单曲《雨霖铃》；同年9月16日，推出个人原创单曲《有信心》；同年10月14日，担任“网易云音乐 音乐有态度”全国校园歌手大赛北京赛区的评委；同年10月20日，推出首张个人音乐专辑《飞船，宇航员》，收录了包括《旧情人, 我是时间的新欢》、《北方女王》等在内的12首歌曲。"),
    ("6","新裤子乐队","img/artists/xkz/hp.jpg","2","新裤子乐队是现今中国最耀眼、别具一格、也是最具冒险精神的偶像摇滚乐队。 乐队成立于1997年至今共发行6张专辑。 多年来新裤子带着他们独具一格的复古情怀始终站在潮流的风口浪尖以“新裤子体系”美学引领了中国时尚文化的发展被多家国外媒体赞 誉为“中国最时髦的乐队”。早期的新裤子乐队深受新浪潮以及oldschool punk 音乐风格影响近年来乐队的音乐则更 趋近于80年代synthpop风格热衷于充满怀旧色彩的东方元素。最新单曲《没有理想的人不伤心》 刚发表新专辑筹备中。"),
    ("7","后海大鲨鱼","img/artists/hh/hp.jpg","2","QUEEN SEA BIG SHARK 后海大鲨鱼：“DANCE GARAGE！ 带你领略绝对不一样的21世纪！”这是成立于04年冬天的一支由女孩主唱的摇滚乐队，他们创造着属于他们自己的DANCE ROCK，他们洗炼直白富于现场表现，具有跳舞音乐的明快节奏与车库音乐的原始粗糙，同时散发着怀旧的气质，具有如同80年代侦探片般的幽默与紧张。灵活的唱腔的和偏执犀利的口琴代替了舞曲中人声的机械重复，他们喜欢简单直接，也喜欢珠光宝气；喜欢精致，也倡导业余；喜欢新事物，更怀念那个曾经充满生气的年代。这是一支具有相当潜质的北京新摇滚乐队！豆瓣：后海大鲨鱼 微博：@后海大鲨鱼乐队"),
    ("8","左小祖咒","img/artists/zx/hp.jpg","2","左小祖咒，1970年3月4日出生于中国江苏，内地独立音乐人、诗人小说家、艺术家[1] 。1993年，左小祖咒创建了艺术家部落“北京东村”，并组建NO乐队，于次年制作了第一首录音室歌曲《无解》。1998年，NO乐队首张专辑《走失的主人》赢得了批评家们的高度赞誉。2000年1月，左小祖咒第一本长篇小说《狂犬吠墓》发行。2006年，凭专辑《我不能悲伤地坐在你身旁》获华语音乐传媒大奖最佳摇滚艺人奖。同年还发行了首张电影原声专辑《美国》，收录他制作的电影配乐。2008年，发行双专辑《你知道东方在哪一边》，获华语音乐传媒大奖最佳摇滚艺人等多个奖项 。2010年，在北京世纪剧院举办首次个人演唱会《万事如意》 。5月凭《大事》获华语音乐传媒大奖最佳国语男歌手和最佳作词人两个奖项。2011年，《庙会之旅II》获评华语金曲奖年度国语十大专辑第一名。2013年，《左小祖咒在奶子房》获阿比鹿音乐奖2012年度摇滚音乐奖。2014年签约摩登天空，发行专辑《我们需要个歌手》。已陆续发行了二十多张唱片。同时，他在艺术领域也建树颇丰。1995年和北京东村艺术家集体创作的行为艺术作品《为无名山增高一米》参加了第48届威尼斯国际双年展。2008年，他的作品《我也爱当代艺术》应邀参加了美国佛罗里达、纽约等地的棕榈滩艺术博览会、巴塞尔迈阿密艺术展等国内外多个展览。后也曾应邀赴古巴参加哈瓦那—新中国当代艺术革命展。2015年12月14日，“把那个故事再给我讲一遍”左小祖咒个展开幕 。主要成就 华语音乐传媒大奖最佳国语男歌手 三次华语音乐传媒大奖最佳摇滚艺人 华语音乐传媒大奖最佳词作者 28届金鸡奖最佳电影配乐提名奖 第八届中国金唱片奖 2011中国最美50人—创造之美 音乐风云榜最佳民谣歌曲"),
    ("9","胡德夫","img/artists/hdf/hp.jpg","7","胡德夫，出生于台湾台东的原住民民歌手，台湾民歌运动、原住民运动的先驱之一。 20世纪70年代，胡德夫与杨弦、李双泽推动了被称为整个华语流行音乐启蒙运动的“民歌运动”。1973 年胡德夫举办了台湾史上第一场个人演唱会。2005年4月，首次出版个人音乐专辑《匆匆》，获得台湾流行音乐百佳专辑（1993年至2005年）第2名。歌曲《太平洋的风》获2006年金曲奖最佳作词人奖、最佳年度歌曲。2011年，发布第二张专辑《大武山蓝调》，并凭此专辑获得在第13届音乐风云榜年度盛典中获得了“最佳民谣专辑”和“最佳民谣歌手”两项大奖。"),
    ("10","阿肆","img/artists/as/hp.jpg","7","阿肆，上海独立创作女声。2010年以“放肆的肆”为名注册了豆瓣音乐人小站，风格轻松且天马行空，在豆瓣上备受关注，广为大家喜爱。参与过两张独立民谣合辑，以及《little thing恋物志》主办的巡回音乐会。其首张专辑《预谋邂逅》于2013年7月25日由摩登天空发行。2014阿肆参加《中国好歌曲》，被刘欢老师纳入门下。 豆瓣：放肆的肆 微博：@炸鸡少女阿肆 公众微信号：aaa_asi 阿肆"),
    ("11","痛仰","img/artists/ty/hp.jpg","2","风格：独立摇滚 主唱：高虎 吉它：宋捷 贝司：张静 鼓手：大伟 成立于1999年的痛仰乐队（Miserable Faith）是当下中国享有最高声誉的摇滚乐队之一。组队至今发行专辑及EP共六张，参加各类专场、音乐节演出数百场，获得了覆盖不同年龄层和身份属性的庞大乐迷群。他们从未离开中国摇滚第一线，也是其中少有的始终保持旺盛创作精力并成功实现转型的摇滚劲旅。 2001年发行的首张专辑《这是个问题》和2006年独立发行的EP《不》以说唱金属、硬核与硬摇滚为主，因其极具感染力的现场表演而深受乐迷喜爱。此后，乐队成员开始寻求创作上的改变与突破，自2008年推出专辑《不要停止我的音乐》起，痛仰乐队的作品风格转向更加兼容并蓄的独立摇滚，并获得广泛的关注与赞誉。此后两年，乐队分别推出了不插电现场录音《改变你的生活》和EP《盛开》。睽违四年，痛仰乐队于2014年8月发行录音室专辑《愿爱无忧》，雷鬼乐和更多具有浓郁地域色彩的乐器的融入，标志着痛仰乐队在创作上又进入了崭新的阶段。 十五年间，痛仰由那个在匮乏的青春里，惯于用愤怒抵御周遭的呐喊者和发问者，成为了在自由的公路上，乐于去探寻更多可能的践行者和分享者，说到底，他们把视线的焦点从于外部、于身体的躁动和碰撞，逐渐的调转向度，变为向内心冷暖和生命体验的关注。但在痛仰的这种巨变的背后，是一种不变，——始终只遵循内心的、自然生发而出的音符和律动。 如果说摇滚乐是一种真实的声音，那么首先，这种真实势必是创作者对自我内心状态的正视与忠诚。没有刻意为之的批判或煽情，没有扭捏作态的悲戚或欣喜，音乐里的那些率真、坦然和勇敢，来源于乐队每个成员的自然成长，他们不想肆意地滞留在原地，也没想要超脱到不可企及，痛仰与被他们所感染、触动的听者们，一路相互陪伴和见证了彼此的成长。 脱去被定义的外壳，撕掉被赋予的标签，决心蜕变的痛仰无心顾及那些概念与形式之争，在一路体验和学习中，奔向在表达上更加自由开阔的天地。所以正如我们所见，这支绝不固步自封的公路摇滚乐队，无论是作品还是状态都渐入佳境般愈发成熟，源源不断地焕发出新的光彩和能量。 2015年4月痛仰乐队签约中国最大的独立音乐公司摩登天空，在用音乐改变世界的征程中迈出了坚实的一步，对于未来的企图和野心痛仰乐队从来没有改变，现在的这一切仅仅是一个前奏。"),
    ("12","刺猬Hedgehog","img/artists/cw/hp.jpg","4","另一个世界的噪音流行，北京摇滚乐队，2005年成立。 发表过《噪音袭击世界》《白日梦蓝》《生之响往》等8张录音室唱片。 官方网站:ciweiyuedui.com"),
    ("13","超级市场","img/artists/cjsc/hp.jpg","8","“超级市场Supermarket”正式成立于1997年1月，乐队成员包括羽伞（主唱兼吉他）、朱宇航（DJ兼主唱）、王勇（DJ兼鼓手），是中国第一支真正意义上的电子乐队。 “超级市场Supermarket”试图通过音乐赋予数字一种情感，并创造一种矛盾中的和谐，听他们的音乐，总会使听者置身于一种暖洋洋的平静氛围之中，他们并不善于直抒胸臆，而是利用文字与情绪的铺张创造了一个情绪通道，其音乐氛围中的源于随意的“轻松感”并不会给听者施加压力，反而可以使听众在一个不被俯视的环境内寻求一种信心。 豆瓣：超级市场乐队"),
    ("14","低苦艾","img/artists/dka/hp.jpg","7","乐队成员： Vocal/Guitar:Liu Kun 木吉它/主唱：刘堃 Guitar:San Er 吉它：周旭东 Bass:Xi Bin 贝司：席斌 Drums:Dou Tao 鼓与打击：窦涛 2012年华语传媒最佳乐队、阿比鹿最佳专辑、阿比鹿年度单曲、中国摇滚20年最佳唱片得主---低苦艾乐队以西北人特有的豪情与胸襟检视自己打量世界，将一缕黄河上吹来的风，一捧祁连山上的雪，一块黄土高原的泥土，揉和成一道不矫揉造作但痛快淋漓，不苟合但绝不疏离内心的风情，以独立自持的态度做着自己的音乐。他们的音乐风格独立、迷幻，质朴的民谣根基，多元的配器及丰富的采样，使他们的音乐又有很浓的实验及民族色彩。真挚自然的表达他们对世界的立场，他们对生活的体悟。中国西北最具代表性的乐队之一。 --------他们的音乐像一壶刚烈的西北老酒，甘醇清冽，后劲十足，捕捉着对生命脆弱的美态，打量这个世界目光明敏，细致入微，有一种深邃掩藏在诗化的语言和音乐后面，互相密而不宣却又和谐无痕。如果能从他们的音乐中打捞到清洁与美，你就发现了那个从现实的虚幻转向内心真实的拐角处。 低苦艾乐队是一支民谣摇滚乐队，2003年成立于黄河边的兰州城，在这个有中国西雅图之称的城市里盛产音乐人，那条奔腾流淌的大河终究会使他们产生不一样的情怀，创作出不拘泥于城市文化的音乐，奔放不失细腻，热烈不失深情，豪爽不失人文。经过十年的磨砺，以民谣为基调，凭借敏锐的感受力创作了大量作品，成长为西北最有代表性的摇滚乐队。他们倡导音乐关怀的一面，作品的主题跨度较大 低苦艾乐队，既有对离家漂泊的人再也回不去的乡愁的诉说，家国梦中赤子之心的坦诚《守望者》 《红与黑》，也有追风少年告别父辈时成长的决绝，一气饮下心已醉的《苦艾酒》，有片刻领悟后的浅唱低吟《谁》，永远在路上的《火车快开》等，都是不同意象的表达。他们以独立自持的态度做着自己的音乐，真挚自然的表达对世界的立场，对生活的感悟。2008年签约兵马司唱片公司，2009年发行了专辑《我们不由自主亲吻对方》，2011年发行的专辑《兰州兰州》 深获好评，获得国内多个奖项，以歌曲《兰州兰州》掀起了中国当代青年由漂泊生活回归精神家园的浪潮。2013年继续保持音乐的饱满与歌词的深刻结合的创作方式，发行了更加接近现实生活的新专辑《守望者》。近些年活跃在迷笛、草莓等等众多音乐节上，每年一次大范围全国巡演，从2014年开始进行欧洲多国巡演。2014年3月签约摩登天空唱片公司。"),
    ("15","贰佰","img/artists/eb/hp.jpg","4","从2011年于网络发表首支单曲《我在太原和谁一起假装悲伤》至今，贰佰的每一首歌都曾被争相分享、传唱，无数年轻人都是在朋友圈里听到并爱上了《玫瑰》和《狗日的青春》，又迅速将其分享给更多人。其无敌口碑和脍炙人口，令“民谣”一词的含义回归本真——它并非一种笼统的音乐风格，而是一种音乐生长和传播的方式。"),
    ("16","黑撒（Balck Head)乐队","img/artists/hs/hp.jpg","2","他们的创作,天大地大， 满嘴的西安方言像一方豪杰冲锋陷阵； 他们的歌声现实的， 当下年轻一代的生活困境都被他们嬉戏语言大事化小； 他们的技巧是丰满的， 特别是对那个古城的膜拜，已经是他们骨子里的声音。 “黑撒”是来自西安的一支乐队组合，风格主要以陕西方言的Hip-Hop为主，还融合了蓝调、戏曲、爵士、摇滚、电子乐等多种音乐元素。歌词幽默个性，独具风采又引人深思，以叙事为主，抒情为辅，加上悦耳时尚的配乐，演绎“Black Head”化的说唱乐。就好比“黑撒”的歌词中所唱到的，他们要“把老祖宗秦始皇的口音发扬光大”！听完他们的作品，你会发现，原来陕西话是这么动听和迷人。 最初由“夜晚的骑士”和“马蜂”搭档组成，后加入吉他手张宁、贝司手双喜、鼓手毕涛。 黑撒乐队2007年发行专辑《起的比鸡还早》，唱片上市后创下西安本土原创音乐销售的最佳纪录，受到各界的一致好评。并受邀担任阿甘电影《高兴》音乐监制和主创。2009年发行专辑《我的黄金时代》，凭此专辑获得第十届华语音乐传媒大奖“最佳嘻哈艺人”奖。《这个古城》和《命犯相思》被2011年贺岁片《哥的传说》选为片头和片尾曲。黑撒乐队的第三张专辑《西安事变》于2011年12月18日正式发行，单曲《流川枫与苍井空》5月底首发网络推广，便被媒体称为“2011年最感动人心民谣歌曲”。凤凰网，土豆网，新浪视频，搜狐视频，中国摇滚榜，新浪娱乐纷纷首页推荐，凤凰卫视，南方都市报，华商报，西安晚报也采用大篇幅进行报道。新浪微博转发累计超万次。"),
    ("17","马飞","img/artists/mf/hp.jpg","2","歌手，导演，西安人。陕西四大方言法宝级乐队（其它三个为黑撒乐队、王建房与乐队、玄乐队）最逗趣、最淳朴摇滚艺人，陕西的最流行方言音乐人之一，马飞自高中时期开始学习音乐，大学就读于西安美术学院油画系。大学毕业后，进入摄制组担任美术指导。此间，马飞继续做着与音乐相关的工作，多部知名广告的配乐出自马飞之手，电视台更是邀请他来制作节目音乐。 08年工作闲暇期间，马飞创作了7、8首好听的歌曲。其中《我能Chua》是用关中方言所创作，”我能Chua“是西安话“我没用”的意思，歌词幽默诙谐，调侃底层人员的辛酸生活，让人记忆深刻。作品被张亚东称之为“真正的中国风”。"),
    ("18","舌头乐队","img/artists/styd/hp.jpg","2","来自新疆的舌头乐队，他们以狂噪不安的歌词和凌乱的节奏演唱着这个社会最真实的声音。乐队以朋克为基调，演唱着这个社会里面的最为不满。《小鸡出壳》这张专辑里面以赤裸裸的歌词对这个社会不满的鞭策。主唱吴吞用时而尖锐的声音发泄着内心的情绪，不是我们不明白，是这个社会变化太快。这一切印证了崔健时代里的思想及其信仰。"),
    ("19","肆伍","img/artists/sw/hp.jpg","12","肆伍是一个乐队。肆伍乐队组建于2004年8月，乐队风格起初为新金属、工业金属，2011年的新EP肆伍做出了新的改变，乐队风格转变为------死核。 最初，乐队是由五名在校大学生组建，曾多次参加校园乐队演出，并有着不错的反响。后因乐队成员学业及个人原因，先后有三名乐手离队，乐队的发展停滞了近一年的时间。但在此期间，随着新乐手的加入，乐队的风格和音乐元素都有了新的变化和不同程度的丰富。2004年10月乐队便开始了新一轮的发展，不断在北京的各个酒吧进行演出，乐队成员也由此固定，形成现在的阵容 ： 乐队现成员：主唱：杨 寅 / 吉他：张 旭 / 吉他：刘炬燃 / 贝司：旭 日/ 鼓：郭佳龙 乐队原成员：吉他：赵 龙 / 贝司：彭亮"),
    ("20","诱导社","img/artists/yds/hp.jpg","2","“诱导社”的音乐受“primus”和“红辣椒”的影响颇多（例如：跳动铿锵的贝司、诡异的吉他SOLO等）。在相当一部分作品里，贝司的成分较大。有些听起来好似咬牙切齿一般,有一种嚼蜡似的麻醉感。但除去了PRIMUS式的RAP和部份FUNK成分，取而代之的则是一些更PUNK味儿的东西。 虽然乐队成员都很年轻，但在音乐上却十分老道，与那些和他们同龄的乐队相比，无论在技术上还是风格上，都有很大不同。主唱雷霖通过自己对生活的独特认识，在歌词的创作方面大胆揭露社会以及人性的丑陋阴暗面，并运用肮脏的音乐语言，来表达内心欲望的冲动和对于现实的批判与嘲讽。 他们的作品以性为主，涉及政治，揭露、反抗、谐谑，发泄不满，寻求自由。音乐中融合了punk、funk、gothic、grunge等多种音乐元素，不能定义其音乐风格。 豆瓣：诱导社LURE 微博：@诱导社乐队lure 微信：微信：youdaosheyuedui");
-- 艺人相关图片
CREATE TABLE art_pics(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    -- 关联艺人
    arid INT, 
    -- 图片路径
    pic VARCHAR(128)
);
INSERT INTO art_pics VALUES
    (NULL,1,"image/artists/sdy/sdy01.jpg"),
    (NULL,1,"image/artists/sdy/sdy02.jpg"),
    (NULL,1,"image/artists/sdy/sdy03.jpg"),
    (NULL,1,"image/artists/sdy/sdy04.jpg"),
    (NULL,1,"image/artists/sdy/sdy05.jpg"),
    (NULL,1,"image/artists/sdy/sdy06.jpg"),
    (NULL,1,"image/artists/sdy/sdy07.jpg"),
    (NULL,1,"image/artists/sdy/sdy08.jpg"),
    (NULL,2,"image/artists/wq/wq01.jpg"),
    (NULL,2,"image/artists/wq/wq02.jpg"),
    (NULL,2,"image/artists/wq/wq03.jpg"),
    (NULL,2,"image/artists/wq/wq04.jpg"),
    (NULL,3,"image/artists/xtx/xtx01.jpg"),
    (NULL,3,"image/artists/xtx/xtx02.jpg"),
    (NULL,3,"image/artists/xtx/xtx03.jpg"),
    (NULL,3,"image/artists/xtx/xtx04.jpg"),
    (NULL,3,"image/artists/xtx/xtx05.jpg"),
    (NULL,3,"image/artists/xtx/xtx06.jpg"),
    (NULL,3,"image/artists/xtx/xtx07.jpg"),
    (NULL,3,"image/artists/xtx/xtx08.jpg"),
    (NULL,4,"image/artists/md/md01.jpg"),
    (NULL,4,"image/artists/md/md02.jpg"),
    (NULL,4,"image/artists/md/md03.jpg"),
    (NULL,4,"image/artists/md/md04.jpg"),
    (NULL,4,"image/artists/md/md05.jpg"),
    (NULL,5,"image/artists/yss/yss01.jpg"),
    (NULL,5,"image/artists/yss/yss02.jpg"),
    (NULL,5,"image/artists/yss/yss03.jpg"),
    (NULL,5,"image/artists/yss/yss04.jpg"),
    (NULL,5,"image/artists/yss/yss05.jpg"),
    (NULL,5,"image/artists/yss/yss06.jpg"),
    (NULL,5,"image/artists/yss/yss07.jpg"),
    (NULL,6,"image/artists/xkz/xkz.jpg"),
    (NULL,7,"image/artists/hh/hh01.jpg"),
    (NULL,7,"image/artists/hh/hh02.jpg"),
    (NULL,7,"image/artists/hh/hh03.jpg"),
    (NULL,7,"image/artists/hh/hh04.jpg"),
    (NULL,7,"image/artists/hh/hh05.jpg"),
    (NULL,7,"image/artists/hh/hh06.jpg"),
    (NULL,7,"image/artists/hh/hh07.jpg"),
    (NULL,7,"image/artists/hh/hh08.jpg"),
    (NULL,8,"image/artists/zx/zx01.jpg"),
    (NULL,8,"image/artists/zx/zx02.jpg"),
    (NULL,8,"image/artists/zx/zx03.jpg"),
    (NULL,8,"image/artists/zx/zx04.jpg"),
    (NULL,8,"image/artists/zx/zx05.jpg"),
    (NULL,9,"image/artists/hdf/hdf01.jpg"),
    (NULL,9,"image/artists/hdf/hdf02.jpg"),
    (NULL,9,"image/artists/hdf/hdf03.jpg"),
    (NULL,9,"image/artists/hdf/hdf04.jpg"),
    (NULL,9,"image/artists/hdf/hdf05.jpg"),
    (NULL,10,"image/artists/as/as01.jpg"),
    (NULL,10,"image/artists/as/as02.jpg"),
    (NULL,10,"image/artists/as/as03.jpg"),
    (NULL,10,"image/artists/as/as04.jpg"),
    (NULL,10,"image/artists/as/as05.jpg"),
    (NULL,11,"image/artists/ty/ty01.jpg"),
    (NULL,11,"image/artists/ty/ty02.jpg"),
    (NULL,11,"image/artists/ty/ty03.jpg"),
    (NULL,11,"image/artists/ty/ty04.jpg"),
    (NULL,11,"image/artists/ty/ty05.jpg"),
    (NULL,11,"image/artists/ty/ty06.jpg"),
    (NULL,11,"image/artists/ty/ty07.jpg"),
    (NULL,11,"image/artists/ty/ty08.jpg"),
    (NULL,11,"image/artists/ty/ty09.jpg"),
    (NULL,11,"image/artists/ty/ty10.jpg"),
    (NULL,12,"image/artists/cw/cw01.jpg"),
    (NULL,12,"image/artists/cw/cw02.jpg"),
    (NULL,12,"image/artists/cw/cw03.jpg"),
    (NULL,12,"image/artists/cw/cw04.jpg"),
    (NULL,12,"image/artists/cw/cw05.jpg"),
    (NULL,12,"image/artists/cw/cw06.jpg"),
    (NULL,13,"image/artists/cjsc/cjsc01.jpg"),
    (NULL,13,"image/artists/cjsc/cjsc02.jpg"),
    (NULL,14,"image/artists/dka/dka01.jpg"),
    (NULL,14,"image/artists/dka/dka02.jpg"),
    (NULL,14,"image/artists/dka/dka03.jpg"),
    (NULL,14,"image/artists/dka/dka04.jpg"),
    (NULL,14,"image/artists/dka/dka05.jpg"),
    (NULL,14,"image/artists/dka/dka06.jpg"),
    (NULL,14,"image/artists/dka/dka07.jpg"),
    (NULL,14,"image/artists/dka/dka08.jpg"),
    (NULL,14,"image/artists/dka/dka09.jpg"),
    (NULL,14,"image/artists/dka/dka10.jpg"),
    (NULL,15,"image/artists/eb/eb01.jpg"),
    (NULL,15,"image/artists/eb/eb02.jpg"),
    (NULL,15,"image/artists/eb/eb03.jpg"),
    (NULL,15,"image/artists/eb/eb04.jpg"),
    (NULL,16,"image/artists/hs/hs01.jpg"),
    (NULL,16,"image/artists/hs/hs02.jpg"),
    (NULL,16,"image/artists/hs/hs03.jpg"),
    (NULL,16,"image/artists/hs/hs04.jpg"),
    (NULL,16,"image/artists/hs/hs05.jpg"),
    (NULL,16,"image/artists/hs/hs06.jpg"),
    (NULL,16,"image/artists/hs/hs07.jpg"),
    (NULL,16,"image/artists/hs/hs08.jpg"),
    (NULL,16,"image/artists/hs/hs09.jpg"),
    (NULL,16,"image/artists/hs/hs10.jpg"),
    (NULL,17,"image/artists/mf/mf01.jpg"),
    (NULL,17,"image/artists/mf/mf02.jpg"),
    (NULL,17,"image/artists/mf/mf03.jpg"),
    (NULL,18,"image/artists/styd/styd01.jpg"),
    (NULL,18,"image/artists/styd/styd02.jpg"),
    (NULL,18,"image/artists/styd/styd03.jpg"),
    (NULL,18,"image/artists/styd/styd04.jpg"),
    (NULL,19,"image/artists/sw/sw01.jpg"),
    (NULL,19,"image/artists/sw/sw02.jpg"),
    (NULL,19,"image/artists/sw/sw03.jpg"),
    (NULL,19,"image/artists/sw/sw04.jpg"),
    (NULL,20,"image/artists/yds/yds01.jpg"),
    (NULL,20,"image/artists/yds/yds02.jpg"),
    (NULL,20,"image/artists/yds/yds03.jpg"),
    (NULL,20,"image/artists/yds/yds04.jpg"),
    (NULL,20,"image/artists/yds/yds05.jpg");
-- 艺人作品
CREATE TABLE albums(
    -- 作品编号
    alid INT PRIMARY KEY AUTO_INCREMENT,  
    arid INT
);
-- 艺人的粉丝
CREATE TABLE fans(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    -- 关联艺人
    arid INT, 
    -- 关联用户
    uid  INT 
);
-- 演出表
CREATE TABLE shows(
    shid INT PRIMARY KEY AUTO_INCREMENT,
    shname VARCHAR(200),
    ticket_tpye INT,
    price DECIMAL,
    discount DECIMAL,
    status INT,
    -- 演出信息
    description VARCHAR(500)
);
-- 想看演出的人
CREATE TABLE wants(
    wid INT PRIMARY KEY AUTO_INCREMENT,
    -- 关联演出
    shid INT, 
    -- 关联用户
    uid  INT 
);
-- 艺人与演出关联表
CREATE TABLE arshows(
    asid INT PRIMARY KEY AUTO_INCREMENT,
    -- 关联艺人
    arid INT,
    -- 关联演出
    shid INT
);

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
    cid INT
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

-- 场次
CREATE TABLE tours(
    tourid INT PRIMARY KEY AUTO_INCREMENT,
    -- 关联现场
    vid INT, 
    -- 关联演出
    shid INT, 
    time BIGINT
);
-- 订单
CREATE TABLE orders(
    oid INT PRIMARY KEY AUTO_INCREMENT,
    -- 关联用户
    uid INT, 
    time BIGINT
);
-- 购票明细
CREATE TABLE tickets(
    tkid INT PRIMARY KEY AUTO_INCREMENT,
    -- 关联场次
    tourid INT, 
    count INT,
    -- 关联订单
    oid INT
);
-- 购物车
CREATE TABLE cartitems(
    iid INT PRIMARY KEY AUTO_INCREMENT,
    -- 关联场次
    tourid INT, 
    count INT,
    -- 关联用户
    uid INT
);












