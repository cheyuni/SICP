(define (* a b)
  (define (double x)
    (+ x x))
  (define (halve x)
    (/ x 2))
  (define (even? x)
    (= (remainder x 2) 0))
  (define (multi-iter x y z)
    (cond ((= z 0) x)
	  ((even? z) (multi-iter x (double y) (halve z)))
	  (else (multi-iter (+ x y) y (- z 1)))))
  (multi-iter 0 a b))



