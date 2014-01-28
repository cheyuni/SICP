(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (demon y)))


(define (numer rat) (car rat))
(define (demon rat) (cdr rat))

(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (or (and (> n 0) (> d 0))
	    (and (< n 0) (< d 0)))
	(cons (abs (/ n g)) (abs (/ d g)))
	(cons (- (abs (/ n g))) (abs (/ d g)))	
	)))

(make-rat -10 -10)
(make-rat -10 10)
(make-rat 10 -10)


  



	 




