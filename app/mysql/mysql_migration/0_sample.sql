CREATE INDEX idx_file_id ON file (file_id);

CREATE INDEX idx_skill_name ON skill (skill_name);
CREATE INDEX idx_skill_id ON skill (skill_id);

CREATE INDEX idx_office_id ON office (office_id);

CREATE INDEX idx_file_id ON file (file_id);

CREATE INDEX idx_user_id ON user (user_id);
CREATE INDEX idx_user_name ON user (user_name);
CREATE INDEX idx_kana ON user (kana);
CREATE INDEX idx_mail ON user (mail);
CREATE INDEX idx_password ON user (password);
CREATE INDEX idx_employee_id ON user (employee_id);
CREATE INDEX idx_office_id ON user (office_id);
CREATE INDEX idx_goal ON user (goal_id);

CREATE INDEX idx_role_name ON role (role_name);

CREATE INDEX idx_department_name ON department (department_name);
CREATE INDEX idx_department_id ON department (department_id);

CREATE INDEX idx_user_id ON match_group_member (user_id);
CREATE INDEX idx_match_group_id ON match_group_member (match_group_id);

CREATE INDEX idx_match_group_id ON match_group (match_group_id);

CREATE INDEX idx_department_id ON department_role_member (department_id);
CREATE INDEX idx_role_id ON department_role_member (role_id);
CREATE INDEX idx_user_id ON department_role_member (user_id);

CREATE INDEX idx_linked_user_id ON session (linked_user_id);
CREATE INDEX idx_session_id ON session (session_id);
