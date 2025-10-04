# Student Management Database

This project is a PostgreSQL database for managing **subjects (masters)**, **mentors**, **student groups**, **students**, and their **lesson schedules**.  
It includes table creation, relationships, and sample data.

---

## Database Structure

- **masters** – stores subjects (IT, English).  
- **mentors** – mentors linked to subjects.  
- **groupss** – student groups supervised by mentors.  
- **students** – student information with grade level.  
- **studentgroups** – many-to-many relationship between students and groups.  
- **lesson_schedule** – lesson schedules for groups (days, time, room).  

---

## Relationships

- A subject (masters) can have many mentors.  
- A mentor can supervise many groups.  
- A student can belong to multiple groups (via studentgroups).  
- Each group can have multiple lesson schedules.  

---

## Sample Data

- **Masters:** IT, English  
- **Mentors:** 5 mentors connected to masters  
- **Groups:** 7 groups linked to mentors  
- **Students:** 7 students with different grades  
- **StudentGroups:** mapping between students and groups  
- **LessonSchedule:** 5 example lessons with days, time, and room  
