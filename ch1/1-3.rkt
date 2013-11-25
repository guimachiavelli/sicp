(define 
  (sq x)
  (* x x))

(define
  (sum x y)
  (+ (sq x) (sq y)))

(define 
  (max a b)
  (if (> a b)
      a
      b))

(define 
  (min a b)
  (if (< a b)
      a
      b))

(define
  (f x y z)
  (sum (max x y) (max (min x y) z)))