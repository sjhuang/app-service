CREATE TABLE app_log (
  id int(255) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique app_log log.',
  own varchar(100) DEFAULT NULL COMMENT 'own',
  create_time datetime NULL DEFAULT CURRENT_TIMESTAMP,
  update_time datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE INDEX app_log_idx1 ON app_log (merchantCode);
CREATE INDEX app_log_idx2 ON app_log (merchantCode, status);
CREATE INDEX app_log_idx3 ON app_log (update_time);

ALTER TABLE app_log CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
