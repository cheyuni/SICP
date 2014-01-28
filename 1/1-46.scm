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

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y))) 1.0))


(define (iteractive-improve how-to? good-enough?)
  (lambda (value)
    (define (iter x)
      (if (good-enough? x) x
	  (iter (how-to x))))
    (iter value)))


(define (fixed-point f)
  (define (close-enough? value)
    (< (abs (- value (f value))) tolerance))
  
  ((iterative-improve f close-enough?)
   1.0))


(define (fixed-point f first-guess)
  (define (close-enough? value)
    (< (abs (- value (f value))) tolerance))
  (define tolerance 0.00001)  
  ((iteractive-improve f close-enough?) first-guess))

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y))) 1.0))
