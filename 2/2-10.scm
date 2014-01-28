
(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
		 (+ (upper-bound x) (upper-bound y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
	(p2 (* (lower-bound x) (upper-bound y)))
	(p3 (* (upper-bound x) (lower-bound y)))
	(p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
		   (max p1 p2 p3 p4))))


(define (div-interval x y)
  (cond ((= (upper-bound y) 0) (begin (display "zero error")))
	((= (lower-bound y) 0) (begin (display "zero error")))
	(else (mul-interval x
			    (make-interval (/ 1.0 (upper-bound y))
					   (/ 1.0 (lower-bound y)))))))

(define (sub-interval x y)
  (if (> (- (lower-bound x) (lower-bound y)) (- (upper-bound y) (upper-bound x)))
      (make-interval (- (upper-bound y) (upper-bound x)) (- (lower-bound x) (lower-bound y)))
      (make-interval (- (lower-bound x) (lower-bound y)) (- (upper-bound y) (upper-bound x)))))

(define (make-interval a b) (cons a b))

(define (upper-bound interval)
  (car interval))

(define (lower-bound interval)
  (cdr interval))

;; (define a
;;   (make-interval 2 4))

(define a
  (make-interval 10 12))

(define b
  (make-interval 0 7))

(add-interval a b)
(mul-interval a b)
(div-interval a b)
(sub-interval a b)
