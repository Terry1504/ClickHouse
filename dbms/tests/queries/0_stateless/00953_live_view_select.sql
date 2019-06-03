DROP TABLE IF EXISTS test.lv;
DROP TABLE IF EXISTS test.mt;

CREATE TABLE test.mt (a Int32) Engine=MergeTree order by tuple();
CREATE LIVE VIEW test.lv AS SELECT * FROM test.mt;

SHOW TABLES LIKE 'lv';

INSERT INTO test.mt VALUES (1),(2),(3);

SELECT * FROM test.lv;

DROP TABLE test.lv;
DROP TABLE test.mt;
