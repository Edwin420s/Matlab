
math = input('Enter your Math marks: ');
english = input('Enter your English marks: ');
kiswahili = input('Enter your Kiswahili marks: ');


if math >= 70
    grade_math = 'A';
elseif math >= 60
    grade_math = 'B';
elseif math >= 50
    grade_math = 'C';
elseif math >= 40
    grade_math = 'D';
else
    grade_math = 'FAIL';
end

if english >= 70
    grade_english = 'A';
elseif english >= 60
    grade_english = 'B';
elseif english >= 50
    grade_english = 'C';
elseif english >= 40
    grade_english = 'D';
else
    grade_english = 'FAIL';
end

if kiswahili >= 70
    grade_kiswahili = 'A';
elseif kiswahili >= 60
    grade_kiswahili = 'B';
elseif kiswahili >= 50
    grade_kiswahili = 'C';
elseif kiswahili >= 40
    grade_kiswahili = 'D';
else
    grade_kiswahili = 'FAIL';
end

disp(['Math grade is: ', grade_math])
disp(['English grade is: ', grade_english])
disp(['Kiswahili grade is: ', grade_kiswahili])


