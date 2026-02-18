m = input('Enter your Math marks: ');

switch true
    case (m >= 70)
        grade = 'A';
    case (m >= 60)
        grade = 'B';
    case (m >= 50)
        grade = 'C';
    case (m >= 40)
        grade = 'D';
    otherwise
        grade = 'FAIL';
end

P = ['Your Math grade is: ', grade];
disp(P)

