(define (triangle row column)

  (cond ((= column 0) 1)
        ((= column row) 1)
        ((> column row) 0)
        ((= column 1) row)
        ((= column (- row 1)) row)
        (else (+ (triangle (- row 1) column)
                 (triangle (- row 1) (- column 1))))))
