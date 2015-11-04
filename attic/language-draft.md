
% scalar types
TS ::= <elemental types>
    | (TS_i, i in 1..n ) -- tuples


% array types
T ::= TS
    | TS [r_i, i in 1..d]
    | (T_i, i in 1..n ) -- tuples
    | T -> T -- function types

% cursored types

TC ::= T [c_i, i in 1..d] cursored exprs

% Type decls

<type-name> :: <lhs-variable-name>

% Assignments
<lhs-pattern> = <expr>

% function definition

begin function <output-pattern> = <function-name> <input-pattern>

end function


% language constructs

- variables
- values
- types
- patterns

- arithmetic operations
- array access patterns
- tuple expressions



-- these interpretation makes sense.
x = y
x[i,j,k] = y[i,j,k]
x[i,j,k] = y[i,j,k+1]
x[,,] = y[,,+1]

-- what!
x[,,] = (y[,,+1])[,,+1]

How do we soundly eliminate the last expression?
By accessing like
y[,,1],
we safely `demote` to a scaler.

How about

x[i,j,k] = i * j *  (y[i,j,k+1])[i,j,k+1]

The above is seriously wrong! However we can make sense for the following:

x[i,j,k] = i * j *  (y[,,+1])[i,j,k+1]

--
