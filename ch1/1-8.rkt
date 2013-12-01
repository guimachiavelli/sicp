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
  (improve2 guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))



(define
  (cbrt-iter guess x old-guess)
  (if (good? guess old-guess)
      guess
      (cbrt-iter (improve2 guess x) 
                 x
                 guess)))

(define 
  (cbrt x)
  (cbrt-iter 1.0 x 0))


