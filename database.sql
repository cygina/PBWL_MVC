CREATE TABLE tb_pelanggan (
      pel_id INT(11)  AUTO_INCREMENT,
      pel_id_gol TINYINT(3) NOT NULL,
      pel_no VARCHAR(20) NOT NULL,
      pel_nama VARCHAR(100) NOT NULL,
      pel_alamat TEXT DEFAULT NULL,
      pel_hp VARCHAR(30) NOT NULL,
      pel_ktp VARCHAR(50) NOT NULL,
      pel_seri VARCHAR(50) NOT NULL,
      pel_meteran INT(11) NOT NULL,
      pel_aktif ENUM ('Y','N'),
      pel_id_user INT(11) NOT NULL,
      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      updated_at DATETIME DEFAULT NULL,
      PRIMARY KEY(pel_id)
);

CREATE TABLE tb_golongan (
	gol_id TINYINT(3)NOT NULL AUTO_INCREMENT,
	gol_kode VARCHAR(10) NOT NULL,
	gol_nama VARCHAR(50) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT NULL,
	PRIMARY KEY(gol_id)
);
CREATE TABLE tb_user (
	user_id INT(11) NOT NULL AUTO_INCREMENT,
	user_email VARCHAR(50) NOT NULL,
	user_password VARCHAR(100) NOT NULL,
	user_full_name VARCHAR(100) DEFAULT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT NULL,
	PRIMARY KEY(user_id),
	UNIQUE KEY(user_email)
);

INSERT INTO
	tb_user
VALUES
	(
		1,
		'admin@gmail.com',
		'*4ACFE3202A5FF5CF467898FC58AAB1D615029441',
		'Administrator',
		'2023-11-03 03:40:43',
		NULL
	);

CREATE TABLE tb_users (
	user_id INT(11) NOT NULL AUTO_INCREMENT,
	user_email VARCHAR(50) NOT NULL,
	user_password VARCHAR(100) NOT NULL,
	user_nama VARCHAR(100) DEFAULT NULL,
    user_alamat TEXT NOT NULL,
    user_hp VARCHAR(25) NOT NULL,
    user_pos VARCHAR(5) NOT NULL,
    user_role TINYINT(2) NOT NULL,
    user_aktif TINYINT(2) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT NULL,
	PRIMARY KEY(user_id),
	UNIQUE KEY (user_email)
);