(define (make-point n d)
  (let ((g (gcd n d)))
    (if (or (and (> n 0) (> d 0))
	    (and (< n 0) (< d 0)))
	(cons (abs (/ n g)) (abs (/ d g)))
	(cons (- (abs (/ n g))) (abs (/ d g)))	
	)))

(define (x-point point)
    (car point))

(define (y-point point)
    (cdr point))

(define value (make-point 3 5))
(define value2 (make-point 13 14))

(define (test a b)
  (+ (x-point a)
     (x-point b)))

(define (add-rat x y)
  (make-point (+ (* (x-point x) (y-point y))
               (* (x-point y) (y-point x)))
            (* (y-point x) (y-point y))))

(define (div-rat x y)
  (make-point (* (x-point x) (y-point y))
            (* (y-point x) (x-point y))))

(define (equal-rat? x y)
  (= (* (x-point x) (y-point y))
     (* (x-point y) (y-point x))))

(define (make-segment p1 p2)
  (define (get-c p1 p2)
    (/ (- (y-point p1) (y-point p2)) (- (x-point p1) (x-point p2))))
  (define (get-d p1 p2)
    (- (y-point p1) (* (get-c p1 p2) (x-point p1))))
  (cons (get-c p1 p2) (get-d p1 p2)))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
  

(define (midpoint-segment p1 p2)
  (div-rat (add-rat p1 p2) (make-point 2 1)))

(midpoint-segment (make-point 1 2) (make-point 2 5))

