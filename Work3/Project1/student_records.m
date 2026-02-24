function student_records()
clc;
clear;

students = struct([]);

fprintf("===== STUDENT RECORD MANAGEMENT SYSTEM =====\n");

while true
    
    fprintf("\n");
    fprintf("1. Add Student\n");
    fprintf("2. Display All Records\n");
    fprintf("3. Display Selected Student\n");
    fprintf("4. Display Selected Subject\n");
    fprintf("5. Display Selected Student + Subject\n");
    fprintf("6. Exit\n");
    
    choice = input("Select an option: ");
    
    switch choice
        
        case 1
            students = addStudent(students);
            
        case 2
            displayAll(students);
            
        case 3
            displayStudent(students);
            
        case 4
            displaySubject(students);
            
        case 5
            displayStudentSubject(students);
            
        case 6
            fprintf("Exiting system...\n");
            break;
            
        otherwise
            fprintf("Invalid option. Try again.\n");
    end
end

end

function students = addStudent(students)

name = input("Enter student name: ", 's');
numSubjects = input("Enter number of subjects (minimum 5): ");

if numSubjects < 5
    fprintf("Minimum 5 subjects required.\n");
    return;
end

newStudent.name = name;
newStudent.subjects = struct([]);

for i = 1:numSubjects
    
    subjectName = input("Enter subject name: ", 's');
    mark = input("Enter marks: ");
    
    grade = generateGrade(mark);
    
    newStudent.subjects(i).name = subjectName;
    newStudent.subjects(i).mark = mark;
    newStudent.subjects(i).grade = grade;
end

students = [students newStudent];

fprintf("Student added successfully.\n");

end

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


function displayAll(students)

if isempty(students)
    fprintf("No records found.\n");
    return;
end

for i = 1:length(students)
    
    fprintf("\n=====================================\n");
    fprintf("Student: %s\n", students(i).name);
    
    fprintf("Subjects:\n");
    
    for j = 1:length(students(i).subjects)
        fprintf("  %s - %d (%s)\n", ...
            students(i).subjects(j).name, ...
            students(i).subjects(j).mark, ...
            students(i).subjects(j).grade);
    end
end

end


function displayStudent(students)

if isempty(students)
    fprintf("No records found.\n");
    return;
end

name = input("Enter student name: ", 's');

for i = 1:length(students)
    if strcmpi(students(i).name, name)
        fprintf("\nStudent: %s\n", students(i).name);
        
        fprintf("Subjects:\n");
        for j = 1:length(students(i).subjects)
            fprintf("  %s - %d (%s)\n", ...
                students(i).subjects(j).name, ...
                students(i).subjects(j).mark, ...
                students(i).subjects(j).grade);
        end
        return;
    end
end

fprintf("Student not found.\n");

end

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