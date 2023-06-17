ALTER  TABLE department ADD INDEX department_name_index (department_name);
ALTER TABLE department_role_member ADD INDEX department_id_index (department_id);
ALTER TABLE department_role_member ADD INDEX user_id_index (user_id);
