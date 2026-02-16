ALTER TABLE customers
ADD PRIMARY KEY (customer_unique_id);

ALTER TABLE sellers
ADD PRIMARY KEY (seller_id);

ALTER TABLE products
ADD PRIMARY KEY (product_id);

ALTER TABLE geolocation
ADD PRIMARY KEY (geolocation_zip_code_prefix);

ALTER TABLE orders
ADD PRIMARY KEY (order_id);

-- ORDER ITEMS

ALTER TABLE orderitems
ADD CONSTRAINT fk_orderitems_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE orderitems
ADD CONSTRAINT fk_orderitems_product
FOREIGN KEY (product_id)
REFERENCES products(product_id);

ALTER TABLE orderitems
ADD CONSTRAINT fk_orderitems_seller
FOREIGN KEY (seller_id)
REFERENCES sellers(seller_id);

-- ORDER PAYMENTS

ALTER TABLE orderpayments
ADD CONSTRAINT pk_orderpayments
PRIMARY KEY (order_id, payment_sequential);

ALTER TABLE orderpayments
ADD CONSTRAINT fk_orderpayments_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

-- ORDER REVIEWS

ALTER TABLE orderreviews
ADD CONSTRAINT pk_orderreviews
PRIMARY KEY (review_id);

ALTER TABLE orderreviews
ADD CONSTRAINT fk_orderreviews_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

-- PRODUCTS → CATEGORY

ALTER TABLE products
ADD CONSTRAINT fk_products_category
FOREIGN KEY (product_category_name)
REFERENCES product_category_name_translation(c1);

CREATE INDEX idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_orders_status ON orders(order_status);
CREATE INDEX idx_orderitems_product ON orderitems(product_id);
CREATE INDEX idx_orderitems_seller ON orderitems(seller_id);
CREATE INDEX idx_products_category ON products(product_category_name);

