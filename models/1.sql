-- ����ͻ�����
INSERT INTO Customer (name, contactInfo, address) VALUES
('����', 'zhangsan@email.com / 13800138001', '�����к������йش���1��'),
('����', 'lisi@email.com / 13900139002', '�Ϻ����ֶ�����½�����������'),
('����', 'wangwu@email.com / 13700137003', '������������齭�³�'),
('����', 'zhaoliu@email.com / 13600136004', '��������ɽ���Ƽ�԰'),
('Ǯ��', 'qianqi@email.com / 13500135005', '����������������·');

-- ������Ʒ����
INSERT INTO Goods (name, price, description, picture, category_id, seller_id, status) VALUES
('����ɳ��', 450.00, '�ų��²���ɳ����ʹ��һ�꣬��������', '/images/sofa.jpg', 1, 1, '����'),
('΢��¯', 120.00, '���������Ķ���΢��¯���ʺ�ѧ��ʹ��', '/images/microwave.jpg', 1, 2, '����'),
('����', 200.00, 'ʵľ�������ߴ�120*60cm', '/images/desk.jpg', 1, 3, '����'),
('Java���˼��', 35.00, '����棬�������ʼǣ���Ӱ���Ķ�', '/images/java_book.jpg', 2, 1, '����'),
('��¥��', 15.00, '������ѧ�����磬�˳���', '/images/dream_red.jpg', 2, 4, '����'),
('Ӣ���ļ�����', 10.00, '����������ϼ������𰸽���', '/images/english_test.jpg', 2, 2, '����'),
('������', 25.00, '����ŷ��ѧ���������ʺϿ���ʹ��', '/images/calculator.jpg', 3, 3, '����'),
('�ʼǱ�����', 1800.00, '����ThinkPad��i5��������8G�ڴ�', '/images/laptop.jpg', 3, 5, '����'),
('���', 40.00, '�Ϳ�˫�������΢ʹ�úۼ�', '/images/backpack.jpg', 3, 4, '����'),
('������Ʊ��', 280.00, '1990�귢�е���Ф��Ʊȫ��', '/images/stamps.jpg', 4, 5, '����'),
('�Ŷ�����', 800.00, '���ʱ�����ʻ�����ʱ׼ȷ', '/images/pocket_watch.jpg', 4, 1, '����'),
('������Ӳ��', 150.00, '2008����˻����Ӳ��', '/images/coin.jpg', 4, 2, '����');

-- ���뽻�׼�¼���ݣ�ʹ���±�����
INSERT INTO TradeTransaction (goods_id, buyer_id, seller_id, transaction_price, status) VALUES
(3, 2, 3, 180.00, '�����'),
(1, 4, 1, 420.00, '������'),
(5, 3, 4, 12.00, '�����');