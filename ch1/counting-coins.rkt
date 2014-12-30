(define (count-change amount)
    (define (first-denomination kinds-of-coins)
      (cond ((= kinds-of-coins 1) 1)
            ((= kinds-of-coins 2) 5)
            ((= kinds-of-coins 3) 10)
            ((= kinds-of-coins 4) 25)
            ((= kinds-of-coins 5) 50)))

    (define (cc amount kinds-of-coins)
      (cond ((= amount 0) 1)
            ((or (< amount 0) (= kinds-of-coins 0)) 0)
            (else (+ (cc amount
                         (- kinds-of-coins 1))
                     (cc (- amount
                            (first-denomination kinds-of-coins))
                         kinds-of-coins)))))

    (cc amount 5))

; cc 10 5
; + (cc amount (- coins 1))
;   (cc (- amount coin) coins)

; f(10,5)
; f(10,4) + f(10 - x(5), 5)

; f(11,5)
; f(11,4) + f(11 - x(5), 5)

; f(10)
; f(10) + f(10 - x(b))

; f(a,b)
; f(a, b - 1) + f(a - x(b), b)




; (count-change 10)

; (cc 10 5)

; (+ (cc 10 4)
;    (cc -40 5))

; (+ (+ (cc 10 3)
;       (cc -15 4))
;    0)

; (+ (+ (+ (cc 10 2)
;          (cc 0 3))
;       0)
;    0)

; (+ (+ (+ (+ (cc 10 1)
;             (cc 5 2))
;          1)
;       0)
;    0)

; (+ (+ (+ (+ (+ (cc 10 0)
;                (cc 9 1))
;             (+ (cc 5 1)
;                (cc 0 2))
;          1)
;       0)
;    0)

; (+ (+ (+ (+ (+ 0
;                (+ (cc 9 0)
;                   (cc 8 1))
;             (+ (+ (cc 5 0)
;                   (cc 4 1))
;                1)
;          1)
;       0)
;    0)

; (+ (+ (+ (+ (+ 0
;                (+ 0
;                   (+ (cc 8 0)
;                      (cc 7 1))
;             (+ (+ 0
;                   (cc 4 1))
;                1)
;          1)
;       0)
;    0)


(define (cc-iterative amount)
    (define (coin-type kinds-of-coins)
      (cond ((= kinds-of-coins 1) 1)
            ((= kinds-of-coins 2) 5)
            ((= kinds-of-coins 3) 10)
            ((= kinds-of-coins 4) 25)
            ((= kinds-of-coins 5) 50)))

    (define (cc-iter next current amount kinds-of-coins)
            (cond ((= amount 0) 1)
                  ((or (< amount 0) (= kinds-of-coins 0)) 0)
                  (else (cc-iter ()
                                 (- amount (coin-type kinds-of-coins))
                                 (- kinds-of-coins 1))
                  )))

    (cc-iter 1 0 amount 5))


