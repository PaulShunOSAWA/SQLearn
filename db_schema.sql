-- Usersテーブル
CREATE TABLE Users (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  address VARCHAR(255)
);

-- Ordersテーブル
CREATE TABLE Orders (
  id INT PRIMARY KEY,
  user_id INT,
  product_id INT,
  quantity INT,
  order_date DATE,
  FOREIGN KEY (user_id) REFERENCES Users(id),
  FOREIGN KEY (product_id) REFERENCES Products(id)
);

-- Productsテーブル
CREATE TABLE Products (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  price DECIMAL(10,2)
);

-- テスト用のユーザーデータの挿入
INSERT INTO Users (id, name, age, address)
VALUES
  (1, 'John', 25, 'Tokyo'),
  (2, 'Emily', 30, 'Osaka'),
  (3, 'Michael', 35, 'Kyoto');

-- テスト用の商品データの挿入
INSERT INTO Products (id, name, price)
VALUES
  (1, 'T-shirt', 2000),
  (2, 'Jeans', 5000),
  (3, 'Sneakers', 8000);

-- テスト用の注文データの挿入
INSERT INTO Orders (id, user_id, product_id, quantity, order_date)
VALUES
  (1, 1, 1, 2, '2022-01-01'),
  (2, 2, 2, 1, '2022-01-03'),
  (3, 1, 3, 1, '2022-01-05'),
  (4, 3, 1, 3, '2022-01-07'),
  (5, 2, 3, 2, '2022-01-09'),
  (6, 3, 2, 2, '2022-01-11');
