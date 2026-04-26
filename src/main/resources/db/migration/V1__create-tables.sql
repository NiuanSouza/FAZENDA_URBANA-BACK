CREATE TABLE functionality (
    id_functionality INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);

CREATE TABLE users (
    id_user VARCHAR(8) PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    status VARCHAR(10) DEFAULT 'active' CHECK (status IN ('active', 'inactive')),
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);

CREATE TABLE user_permission (
    id_user VARCHAR(8),
    id_functionality INT,
    PRIMARY KEY (id_user, id_functionality),
    FOREIGN KEY (id_user) REFERENCES users(id_user),
    FOREIGN KEY (id_functionality) REFERENCES functionality(id_functionality),
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);

CREATE TABLE suppliers (
    cnpj CHAR(14) PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    legal_name VARCHAR(255),
    phone1 VARCHAR(20),
    phone2 VARCHAR(20),
    email VARCHAR(100),
    status VARCHAR(10) DEFAULT 'active',
    type VARCHAR(30),
    additional_info VARCHAR(255),
    address VARCHAR(100),
    address_number INT,
    neighborhood VARCHAR(50),
    city VARCHAR(20),
    state CHAR(2),
    country VARCHAR(30),
    zip_code VARCHAR(10),
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);

CREATE TABLE input (
    id_input INT PRIMARY KEY,
    name VARCHAR(255),
    quantity INT,
    validity VARCHAR(15) DEFAULT 'AVAILABLE',
    expiration_date DATE,
    cnpj_supplier CHAR(14),
    FOREIGN KEY (cnpj_supplier) REFERENCES suppliers(cnpj),
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);

CREATE TABLE production (
    id_production INT IDENTITY(1,1) PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    product VARCHAR(255),
    status VARCHAR(10) DEFAULT 'Active',
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);

CREATE TABLE input_production (
    id_input INT,
    id_production INT,
    quantity INT,
    PRIMARY KEY (id_input, id_production),
    FOREIGN KEY (id_production) REFERENCES production (id_production),
    FOREIGN KEY (id_input) REFERENCES input (id_input),
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);

CREATE TABLE product (
    id_product INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);

CREATE TABLE batch (
    id_batch INT IDENTITY(1,1) PRIMARY KEY,
    id_product INT,
    quantity INT,
    id_production INT,
    status VARCHAR(15) DEFAULT 'AVAILABLE',
    expiration_date DATE,
    FOREIGN KEY (id_production) REFERENCES production (id_production),
    FOREIGN KEY (id_product) REFERENCES product (id_product),
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);

CREATE TABLE customer (
    id_customer INT PRIMARY KEY NOT NULL,
    name VARCHAR(255),
    phone1 VARCHAR(20),
    phone2 VARCHAR(20),
    cnpj CHAR(14),
    ie CHAR(9),
    email VARCHAR(100),
    address_number INT,
    address_name VARCHAR(150),
    neighborhood VARCHAR(50),
    city VARCHAR(30),
    state CHAR(2),
    zip_code VARCHAR(10),
    type VARCHAR(30),
    status VARCHAR(10) DEFAULT 'Active',
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);

CREATE TABLE sales (
    id_sale INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    number VARCHAR(30),
    additional_info VARCHAR(255),
    id_customer INT,
    status VARCHAR(15),
    FOREIGN KEY (id_customer) REFERENCES customer (id_customer),
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);

CREATE TABLE sales_items (
    id_sale INT,
    id_batch INT,
    quantity INT,
    total_value DECIMAL(9,2),
    PRIMARY KEY (id_sale, id_batch),
    FOREIGN KEY (id_sale) REFERENCES sales (id_sale),
    FOREIGN KEY (id_batch) REFERENCES batch (id_batch),
    created_at DATETIME2 DEFAULT GETDATE(),
    updated_at DATETIME2 DEFAULT GETDATE()
);
