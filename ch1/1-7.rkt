(define
  (new-if predicate then-clause  else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define 
  (average x y)
  (/ (+ x y) 2))

(define
  (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define
  (good? guess old-guess)
  (< (abs (- guess old-guess)) (/ guess 1000))) 

(define 
  (square x)
  (* x x))

(define 
  (improve guess x)
  (average guess (/ x guess)))

(define
  (sqrt-iter guess x old-guess)
  (if (good? guess old-guess)
      guess
      (sqrt-iter (improve guess x) 
                 x
                 guess)))

(define 
  (sqrt x)
  (sqrt-iter 1.0 x 0))


