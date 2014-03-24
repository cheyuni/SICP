
(define (length l)
  (if (null? (cdr l))
      1
      (+ 1 (length (cdr l)))))

(define x (list 1 2 3 4 5 6 7))





(define (same-parity . l)
  (if (odd? (length l))
      1
      2))



		 


