-- 插入客户数据
INSERT INTO Customer (name, contactInfo, address) VALUES
('张三', 'zhangsan@email.com / 13800138001', '北京市海淀区中关村大街1号'),
('李四', 'lisi@email.com / 13900139002', '上海市浦东新区陆家嘴金融中心'),
('王五', 'wangwu@email.com / 13700137003', '广州市天河区珠江新城'),
('赵六', 'zhaoliu@email.com / 13600136004', '深圳市南山区科技园'),
('钱七', 'qianqi@email.com / 13500135005', '杭州市西湖区文三路');

-- 插入商品数据
INSERT INTO Goods (name, price, description, picture, category_id, seller_id, status) VALUES
('二手沙发', 450.00, '九成新布艺沙发，使用一年，保养良好', '/images/sofa.jpg', 1, 1, '在售'),
('微波炉', 120.00, '功能正常的二手微波炉，适合学生使用', '/images/microwave.jpg', 1, 2, '在售'),
('书桌', 200.00, '实木书桌，尺寸120*60cm', '/images/desk.jpg', 1, 3, '已售'),
('Java编程思想', 35.00, '第五版，有少量笔记，不影响阅读', '/images/java_book.jpg', 2, 1, '在售'),
('红楼梦', 15.00, '人民文学出版社，八成新', '/images/dream_red.jpg', 2, 4, '在售'),
('英语四级真题', 10.00, '近三年真题合集，含答案解析', '/images/english_test.jpg', 2, 2, '在售'),
('计算器', 25.00, '卡西欧科学计算器，适合考试使用', '/images/calculator.jpg', 3, 3, '在售'),
('笔记本电脑', 1800.00, '联想ThinkPad，i5处理器，8G内存', '/images/laptop.jpg', 3, 5, '在售'),
('书包', 40.00, '耐克双肩包，轻微使用痕迹', '/images/backpack.jpg', 3, 4, '在售'),
('纪念邮票册', 280.00, '1990年发行的生肖邮票全套', '/images/stamps.jpg', 4, 5, '在售'),
('古董怀表', 800.00, '民国时期银质怀表，走时准确', '/images/pocket_watch.jpg', 4, 1, '在售'),
('限量版硬币', 150.00, '2008年奥运会纪念硬币', '/images/coin.jpg', 4, 2, '在售');

-- 插入交易记录数据（使用新表名）
INSERT INTO TradeTransaction (goods_id, buyer_id, seller_id, transaction_price, status) VALUES
(3, 2, 3, 180.00, '已完成'),
(1, 4, 1, 420.00, '进行中'),
(5, 3, 4, 12.00, '已完成');