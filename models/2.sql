-- 创建客户表
CREATE TABLE Customer (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    contactInfo VARCHAR(255) NOT NULL,
    address TEXT NOT NULL,
    created_at DATETIME DEFAULT GETDATE()
);

-- 创建商品分类表
CREATE TABLE Category (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT
);

-- 插入预设的商品分类
INSERT INTO Category (name, description) VALUES
('家居类', '家具、家居装饰、家电等二手家居用品'),
('书籍类', '各类二手图书、教材、杂志等'),
('学习用品类', '文具、电子设备、学习工具等'),
('收藏品类', '邮票、硬币、古董、限量版物品等');

-- 创建商品表
CREATE TABLE Goods (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(200) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    description TEXT,
    picture VARCHAR(255),
    category_id INT NOT NULL,
    seller_id INT NOT NULL,
    status VARCHAR(10) DEFAULT '在售',
    created_at DATETIME DEFAULT GETDATE(),
    updated_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (category_id) REFERENCES Category(id),
    FOREIGN KEY (seller_id) REFERENCES Customer(id)
);

-- 创建交易记录表（修改表名避免关键字冲突）
CREATE TABLE TradeTransaction (
    id INT PRIMARY KEY IDENTITY(1,1),
    goods_id INT NOT NULL,
    buyer_id INT NOT NULL,
    seller_id INT NOT NULL,
    transaction_price DECIMAL(10,2) NOT NULL,
    transaction_date DATETIME DEFAULT GETDATE(),
    status VARCHAR(10) DEFAULT '进行中',
    FOREIGN KEY (goods_id) REFERENCES Goods(id),
    FOREIGN KEY (buyer_id) REFERENCES Customer(id),
    FOREIGN KEY (seller_id) REFERENCES Customer(id)
);