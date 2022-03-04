program playground
real :: x, y, result
character :: operation
integer :: valid_operation

valid_operation = 1

print*, "value 1: "
read *, x

print*, "value 2: "
read *, y

print*, "operation: "
read *, operation

if(operation=='+') then
    result = x+y
elseif(operation=='-') then
    result = x-y
elseif(operation=='/') then
    if(y/=0) then
        result = x/y
    else
        result = 0
        valid_operation = 0
    end if
elseif(operation=='*') then
    result = x*y
else
    result = 0
    valid_operation = 0
    print *, "invalid operation"
end if

if(valid_operation/=0) then
    print *, result
end if
end program playground
