: adds one item to the front
1 : [2,3] = [1,2,3]
++ joins two lists together
[1] ++ [2,3] = [1,2,3]


What is Functional Programming?
Functional Programming (FP) is a programming paradigm (style of programming)
that treats computation as the evaluation of mathematical functions and avoids changing state or mutable data.
Instead of giving commands (like in imperative programming), describe what to compute using expressions and functions.

Paradigm
A paradigm is a style or approach to programming.
Imperative → step-by-step instructions (e.g., C, Java)
Object-Oriented → objects and classes
Functional → functions and immutability

Expressions vs Statements
Expressions return values, while statements perform actions. FP focuses on expressions.

Immutability
Data in FP is immutable — once created, it cannot be changed. Instead, new values are produced.

Pure Functions
A function that always gives the same output for the same input and has no side effects.

Static Typing 
Haskell is statically typed — all types are known at compile-time.
Every expression has a type.
The compiler checks types before running.
Prevents many runtime errors.

Type Inference
Do not always need to specify types — GHC can infer them automatically

Curried Functions
In Haskell, all functions are curried: A function with multiple arguments is treated as a chain of single-argument functions.
add x y = x+y
addx = add x
addx y

Polymorphic Functions
Functions that work on any type.
In-built polymorphic functions - id, length, head, tail, fst etc

Overloaded Functions
Functions that work on different types through type classes.

Guarded Equations
Used for defining functions with conditions.

Pattern Matching
Used to define functions by matching data shapes.
List Patterns
Match list structures directly. 
x:xs - first element x and remaining list xs

Lambda Expressions
Anonymous (unnamed) functions
map (\x -> x + 1) [1,2,3]

Operator Sections
Convert operators into functions. Can partially apply operators.
(+3) 4   -- 7

List / Set Comprehensions
Create new lists from existing ones using rules.
[x*2 | x <- [1..5], x > 2] -- [6,8,10]

Dependent Generators
When one generator depends on a previous one.
[(x, y) | x <- [1..3], y <- [1..x]] -- [(1,1),(2,1),(2,2),(3,1),(3,2),(3,3)]


Guards in Comprehensions
Used to filter elements.

Zip Function
Combines two lists element by element.
zip [1,2,3] ['a','b','c'] -- [(1,'a'), (2,'b'), (3,'c')]

Recursive Functions
Functions that call themselves until a base case is reached.

Higher-Order Functions (HOF)
Functions that:
    Take another function as an argument, or
    Return a function as a result.
Examples:
    map     -Applies a function to each element of a list
    filter  -Keeps only elements that satisfy a condition
    foldr   -Reduces a list to a single value by combining elements with a function (from the right)
    zipWith
    Composition - Combine functions together using (.)
    all
    any
    takewhile
    dropwhile


putStrLn = “print a string with a newline”.