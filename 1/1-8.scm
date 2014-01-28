;; Exercise 1.8. Newton's method for cube roots is based on the fact that if y is an approximation to the cube root of x, then a better approximation is given by the value
;; Use this formula to implement a cube-root procedure analogous to the square-root procedure. (In
;; section 1.3.4 we will see how to implement Newton's method in general as an abstraction of these square- root and cube-root procedures.)

(define (average x y) (/ (+ x y) 2))

(define (good-enough? guess old-guess)
	(< (/ (abs (- guess old-guess)) (abs old-guess)) 0.001))

(define (improve-cbrt guess x) (average guess (/ (+ (/ x (square  guess)) (* 2 guess)) 3)))

(define (sqrt-iter guess x)
	(if (good-enough? (improve-sqrt guess x) guess)
		guess
		(sqrt-iter (improve-sqrt guess x) x)))
(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 64)
