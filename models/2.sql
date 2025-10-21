-- �����ͻ���
CREATE TABLE Customer (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    contactInfo VARCHAR(255) NOT NULL,
    address TEXT NOT NULL,
    created_at DATETIME DEFAULT GETDATE()
);

-- ������Ʒ�����
CREATE TABLE Category (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT
);

-- ����Ԥ�����Ʒ����
INSERT INTO Category (name, description) VALUES
('�Ҿ���', '�Ҿߡ��Ҿ�װ�Ρ��ҵ�ȶ��ּҾ���Ʒ'),
('�鼮��', '�������ͼ�顢�̲ġ���־��'),
('ѧϰ��Ʒ��', '�ľߡ������豸��ѧϰ���ߵ�'),
('�ղ�Ʒ��', '��Ʊ��Ӳ�ҡ��Ŷ�����������Ʒ��');

-- ������Ʒ��
CREATE TABLE Goods (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(200) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    description TEXT,
    picture VARCHAR(255),
    category_id INT NOT NULL,
    seller_id INT NOT NULL,
    status VARCHAR(10) DEFAULT '����',
    created_at DATETIME DEFAULT GETDATE(),
    updated_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (category_id) REFERENCES Category(id),
    FOREIGN KEY (seller_id) REFERENCES Customer(id)
);

-- �������׼�¼���޸ı�������ؼ��ֳ�ͻ��
CREATE TABLE TradeTransaction (
    id INT PRIMARY KEY IDENTITY(1,1),
    goods_id INT NOT NULL,
    buyer_id INT NOT NULL,
    seller_id INT NOT NULL,
    transaction_price DECIMAL(10,2) NOT NULL,
    transaction_date DATETIME DEFAULT GETDATE(),
    status VARCHAR(10) DEFAULT '������',
    FOREIGN KEY (goods_id) REFERENCES Goods(id),
    FOREIGN KEY (buyer_id) REFERENCES Customer(id),
    FOREIGN KEY (seller_id) REFERENCES Customer(id)
);