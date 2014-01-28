(define (fixed-point f first-guess)
  (define tolerance 0.00001)  
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (newline)
    (display guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
	  next
	  (try next))))
    (try first-guess))


(fixed-point (lambda (x) (/ (+ (/ (log 1000) (log x)) x) 2)) 10.0) 훨씬 적게 비교

(fixed-point (lambda (x) (/ (log 1000) (log x))) 10.0)
