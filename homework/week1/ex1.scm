#|
The new-if given by Eva should work in some situations;
however, in recursion, this would fail.
Consider this block of code:
(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
            x)))
Since new-if is a function, the formal parameters would be evaluated first if the given formal parameter is an expression. 
As a result, sqrt-iter will get executed before new-if is even called.
The recursive function will fail because of a stack overflow.
|#