(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (even? x)
  (= (remainder x 2) 0))

(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))



(define (* a b)
  (if (= b 0)
      0
      (if (even? b)
	  (* (double a) (halve b))
	  (+ a (* a (- b 1))))
      ))



