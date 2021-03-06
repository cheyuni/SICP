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



(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (average x y)
  (/ (+ x y) 2))

((average-damp square) 10)

(define (sqrt x)
  (fixed-point (average-damp (lambda (y) (/ x y)))
	       1.0))

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
	       1.0))


(define (deriv g)
  (lambda (x) 
    (/ (- (g (+ x dx)) (g x))
       dx)))

(define dx 0.00001)

(define (cube x) (* x x x))

((deriv cube) 5)

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (sqrt x)
  (newtons-method (lambda (y) (- (square y) x))
		  1.0))

(sqrt 10)


(define (cubic a b c)
  (lambda (x) (+ (* x x x) (* a x x) (* b x) c))) ;;

(newtons-method (cubic 1 2 3) 1)
