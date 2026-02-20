math = input('Enter your Math marks: ');
english = input('Enter your English marks: ');
kiswahili = input('Enter your Kiswahili marks: ');

switch true
    case (math >= 70)
        grade_math = 'A';
    case (math >= 60)
        grade_math = 'B';
    case (math >= 50)
        grade_math = 'C';
    case (math >= 40)
        grade_math = 'D';
    otherwise
        grade_math = 'FAIL';
end

switch true
    case (english >= 70)
        grade_english = 'A';
    case (english >= 60)
        grade_english = 'B';
    case (english >= 50)
        grade_english = 'C';
    case (english >= 40)
        grade_english = 'D';
    otherwise
        grade_english = 'FAIL';
end

switch true
    case (kiswahili >= 70)
        grade_kiswahili = 'A';
    case (kiswahili >= 60)
        grade_kiswahili = 'B';
    case (kiswahili >= 50)
        grade_kiswahili = 'C';
    case (kiswahili >= 40)
        grade_kiswahili = 'D';
    otherwise
        grade_kiswahili = 'FAIL';
end

disp(['Math grade is: ', grade_math])
disp(['English grade is: ', grade_english])
disp(['Kiswahili grade is: ', grade_kiswahili])

