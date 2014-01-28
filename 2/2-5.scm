(define (cons x y)
  (* (expt 2 x) (expt 3 y)))


(define (divide-another-side number divide-value)
  (define (is-divide? result divide-value)
    (if (= 0 (remainder result divide-value))
	(is-divide? (/ result divide-value) divide-value)
	result))
  (is-divide? number divide-value))

(define (car z)
  (divide-another-side z 3))

(define (cdr z)
  (divide-another-side z 2))

(car (cons 2 3))

(cdr (cons 2 3))


     
  

