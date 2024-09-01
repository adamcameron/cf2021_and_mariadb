USE db1;

CREATE TABLE numbers (
    id INT NOT NULL,
    en VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    mi VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,

    PRIMARY KEY (id)
) ENGINE=InnoDB;

INSERT INTO numbers (id, en, mi)
VALUES
    (1, 'one', 'tahi'),
    (2, 'two', 'rua'),
    (3, 'three', 'toru'),
    (4, 'four', 'wha'),
    (5, 'five', 'rima'),
    (6, 'six', 'ono'),
	(7, 'seven', 'whitu'),
	(8, 'eight', 'waru'),
	(9, 'nine', 'iwa'),
	(10, 'ten', 'tekau')
;

ALTER TABLE numbers MODIFY COLUMN id INT auto_increment;
