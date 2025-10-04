Student Management Database

This project is a PostgreSQL database designed to manage subjects (masters), mentors, student groups, students, and their lesson schedules.
It includes table definitions, relationships, and sample data.

Database Structure

masters – Stores subjects (e.g., IT, English).

mentors – Stores mentors and links them to subjects.

groupss – Represents student groups, each supervised by a mentor.

students – Contains student information and grade levels.

studentgroups – A many-to-many relationship between students and groups.

lesson_schedule – Stores lesson schedules for groups (days, time, room).

Relationships

A subject (masters) can have many mentors.

A mentor can lead many groups.

Students can belong to multiple groups (via studentgroups).

Each group can have multiple lessons in the schedule.

Sample Data

Masters: IT, English

Mentors: 5 mentors connected to subjects

Groups: 7 student groups linked to mentors

Students: 7 students with different grade levels

StudentGroups: connections between students and groups

LessonSchedule: 5 lessons with specific time, day, and room
