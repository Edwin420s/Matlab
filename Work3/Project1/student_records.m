function student_records()
% ADVANCED STUDENT RECORD MANAGEMENT SYSTEM
% ECE 2315 Project 1 – Professional version with GPA and ranking

clc;
clear;

students = struct([]);   % empty structure array

fprintf("===== ADVANCED STUDENT RECORD MANAGEMENT SYSTEM =====\n");

while true
    
    fprintf("\n");
    fprintf("1. Add Student\n");
    fprintf("2. Display All Records\n");
    fprintf("3. Display Selected Student\n");
    fprintf("4. Display Selected Subject\n");
    fprintf("5. Display Selected Student + Subject\n");
    fprintf("6. Display Class Ranking\n");
    fprintf("7. Exit\n");
    
    choice = input("Select an option: ");
    
    switch choice
        
        case 1
            students = addStudent(students);
            students = updateRanking(students);
            
        case 2
            displayAll(students);
            
        case 3
            displayStudent(students);
            
        case 4
            displaySubject(students);
            
        case 5
            displayStudentSubject(students);
            
        case 6
            displayRanking(students);
            
        case 7
            fprintf("Exiting system...\n");
            break;
            
        otherwise
            fprintf("Invalid option. Try again.\n");
    end
end

end

%% ----------------- ADD STUDENT -----------------
function students = addStudent(students)

name = input("Enter student name: ", 's');
numSubjects = input("Enter number of subjects (minimum 5): ");

if numSubjects < 5
    fprintf("Minimum 5 subjects required.\n");
    return;
end

newStudent.name = name;
newStudent.subjects = struct([]);

totalMarks = 0;
totalPoints = 0;

for i = 1:numSubjects
    
    subjectName = input("Enter subject name: ", 's');
    mark = input("Enter marks: ");
    
    grade = generateGrade(mark);
    points = gradeToPoint(grade);
    
    newStudent.subjects(i).name = subjectName;
    newStudent.subjects(i).mark = mark;
    newStudent.subjects(i).grade = grade;
    
    totalMarks = totalMarks + mark;
    totalPoints = totalPoints + points;
end

newStudent.average = totalMarks / numSubjects;
newStudent.gpa = totalPoints / numSubjects;
newStudent.rank = 0;  % will be updated later

students = [students newStudent];

fprintf("Student added successfully.\n");

end

%% ----------------- GRADE GENERATION -----------------
function grade = generateGrade(mark)

if mark >= 70
    grade = 'A';
elseif mark >= 60
    grade = 'B';
elseif mark >= 50
    grade = 'C';
elseif mark >= 40
    grade = 'D';
else
    grade = 'F';
end

end

%% ----------------- GRADE TO GPA POINT -----------------
function point = gradeToPoint(grade)

switch grade
    case 'A'
        point = 4.0;
    case 'B'
        point = 3.0;
    case 'C'
        point = 2.0;
    case 'D'
        point = 1.0;
    otherwise
        point = 0.0;
end

end

%% ----------------- UPDATE RANKING -----------------
function students = updateRanking(students)

if isempty(students)
    return;
end

averages = [students.average];
[~, order] = sort(averages, 'descend');

for i = 1:length(order)
    students(order(i)).rank = i;
end

end

%% ----------------- DISPLAY ALL -----------------
function displayAll(students)

if isempty(students)
    fprintf("No records found.\n");
    return;
end

for i = 1:length(students)
    
    fprintf("\n=====================================\n");
    fprintf("Student: %s\n", students(i).name);
    fprintf("Average: %.2f\n", students(i).average);
    fprintf("GPA: %.2f\n", students(i).gpa);
    fprintf("Rank: %d\n", students(i).rank);
    
    fprintf("Subjects:\n");
    
    for j = 1:length(students(i).subjects)
        fprintf("  %s - %d (%s)\n", ...
            students(i).subjects(j).name, ...
            students(i).subjects(j).mark, ...
            students(i).subjects(j).grade);
    end
end

end

%% ----------------- DISPLAY RANKING -----------------
function displayRanking(students)

if isempty(students)
    fprintf("No records found.\n");
    return;
end

[~, order] = sort([students.rank]);

fprintf("\n===== CLASS RANKING =====\n");

for i = 1:length(order)
    s = students(order(i));
    fprintf("Rank %d: %s | Avg: %.2f | GPA: %.2f\n", ...
        s.rank, s.name, s.average, s.gpa);
end

end

%% ----------------- DISPLAY SELECTED STUDENT -----------------
function displayStudent(students)

if isempty(students)
    fprintf("No records found.\n");
    return;
end

name = input("Enter student name: ", 's');

for i = 1:length(students)
    if strcmpi(students(i).name, name)
        fprintf("\nStudent: %s\n", students(i).name);
        fprintf("Average: %.2f | GPA: %.2f | Rank: %d\n", ...
            students(i).average, ...
            students(i).gpa, ...
            students(i).rank);
        return;
    end
end

fprintf("Student not found.\n");

end

%% ----------------- DISPLAY SELECTED SUBJECT -----------------
function displaySubject(students)

if isempty(students)
    fprintf("No records found.\n");
    return;
end

subjectName = input("Enter subject name: ", 's');

found = false;

for i = 1:length(students)
    for j = 1:length(students(i).subjects)
        if strcmpi(students(i).subjects(j).name, subjectName)
            fprintf("%s - %d (%s)\n", ...
                students(i).name, ...
                students(i).subjects(j).mark, ...
                students(i).subjects(j).grade);
            found = true;
        end
    end
end

if ~found
    fprintf("Subject not found.\n");
end

end

%% ----------------- DISPLAY STUDENT + SUBJECT -----------------
function displayStudentSubject(students)

if isempty(students)
    fprintf("No records found.\n");
    return;
end

name = input("Enter student name: ", 's');
subjectName = input("Enter subject name: ", 's');

for i = 1:length(students)
    
    if strcmpi(students(i).name, name)
        
        for j = 1:length(students(i).subjects)
            
            if strcmpi(students(i).subjects(j).name, subjectName)
                
                fprintf("\n%s - %s: %d (%s)\n", ...
                    name, ...
                    subjectName, ...
                    students(i).subjects(j).mark, ...
                    students(i).subjects(j).grade);
                return;
            end
        end
        
        fprintf("Subject not found for this student.\n");
        return;
    end
end

fprintf("Student not found.\n");

end