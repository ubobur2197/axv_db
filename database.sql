CREATE TABLE IF NOT EXISTS masters (
    id SERIAL PRIMARY KEY,
    subject VARCHAR(50) NOT NULL UNIQUE
);


CREATE TABLE IF NOT EXISTS mentors (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    master_id INTEGER NOT NULL,
    FOREIGN KEY (master_id) REFERENCES masters(id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS groupss (
    id SERIAL PRIMARY KEY,
    title VARCHAR(32) NOT NULL UNIQUE,
    mentor_id INTEGER,
    FOREIGN KEY (mentor_id) REFERENCES mentors(id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30),
    grade INTEGER NOT NULL CHECK (grade > 0)
);


CREATE TABLE IF NOT EXISTS studentgroups (
    id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL,
    group_id INTEGER,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
    FOREIGN KEY (group_id) REFERENCES groupss(id) ON DELETE CASCADE,
    UNIQUE(student_id, group_id)
);

CREATE TABLE IF NOT EXISTS lesson_schedule (
	id SERIAL PRIMARY KEY,
	group_id INTEGER REFERENCES groupss(id),
	days VARCHAR(20) NOT NULL,
	time VARCHAR(20) NOT NULL,
	room INTEGER NOT NULL
);

INSERT INTO masters (id, subject) VALUES
(1, 'IT'),
(2, 'English');


INSERT INTO mentors (firstname, lastname, master_id) VALUES
('Azamat', 'Tojiyev', 1),
('Nodir', 'Odilov', 1),
('Mahliyo', 'Qalandarova', 2),
('Zuhra', 'Yaqubova', 1),
('Odilbek', 'Matyokubov', 2);

INSERT INTO groupss (title, mentor_id) VALUES
('TQ-IT-0901', 1),
('TQ-EN-0901', 4),
('TQ-IT-0902', 1),
('TQ-IT-1102', 1),
('TQ-IT-1003', 2),
('TQ-EN-0903', 5),
('TQ-IT-0804', 1);

INSERT INTO students (firstname, lastname, grade) VALUES
('Bobur', '', 9),
('Zamir', '', 11),
('Ozoda', '', 11),
('Mavluda', '', 10),
('Jamol', '', 8),
('Indira', '', 9),
('Maftuna', '', 9);

INSERT INTO studentgroups (student_id, group_id) VALUES
(1, 1),
(3, 4),
(5, 7),
(1, 2),
(4, 5),
(2, 4),
(7, 6),
(6, 2);

INSERT INTO lesson_schedule (group_id, days, time, room) VALUES
(2, 'Juft', '16:20', 12),
(1, 'Juft', '15:00', 1),
(3, 'Toq', '15:00', 4),
(5, 'Juft', '16:30', 15),
(4, 'Toq', '16:20', 42);