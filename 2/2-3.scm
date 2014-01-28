;;Exercise 2.3. Implement a representation for rectangles in a plane. (Hint: You may want to make use of exercise 2.2.) In terms of your constructors and selectors, create procedures that compute the perimeter and the area of a given rectangle. Now implement a different representation for rectangles. Can you design your system with suitable abstraction barriers, so that the same perimeter and area procedures will work using either representation?

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


(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-rect p1 p2) ;; 1)
  (cons p1 p2))

(define rectangle (make-rect value1 value2))

(define (get-lefttop rect)
  (car rect))

(define (get-rightdown rect)
  (cdr rect))

(get-lefttop rectangle)
(get-rightdown rectangle)


(define value1 (make-point 1 1))
(define value2 (make-point 5 4))

(make-rect value1 value2)

(define (rect-area rect)
  (* (- (x-point (get-rightdown rect)) (x-point (get-lefttop rect))) (- (y-point (get-rightdown rect)) (y-point (get-lefttop rect)))))

(rect-area rectangle)


(define (midpoint-segment p1 p2)
  (div-rat (add-rat p1 p2) (make-point 2 1)))


(define (make-rect p1 p2) ;; 1)
  (cons p1 p2))

(define (make-rect x1 x2 y1 y2) ;; 2)
  (cons (make-point x1 x1) (make-point y1 y2)))

(rect-area (make-rect 1 1 4 5))



￼
