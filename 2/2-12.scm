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
  (cdr interval))

(define (lower-bound interval)
  (car interval))


(define (mul-interval x y)
  (let ((lx (lower-bound x))
	(ux (upper-bound x))
	(ly (lower-bound y))
	(uy (upper-bound y)))
    (let ((x++ (and (> lx 0) (> ux 0)))
	  (x-+ (and (< lx 0) (> ux 0)))
	  (x-- (and (< lx 0) (< ux 0)))
	  (y++ (and (> ly 0) (> uy 0)))
	  (y-+ (and (< ly 0) (> uy 0)))
	  (y-- (and (< ly 0) (< uy 0))))
      (cond ((and x++ y++) (make-interval (* lx ly) (* ux uy)))
	    ((and x++ y-+) (make-interval (* ux ly) (* ux uy)))
	    ((and x++ y--) (make-interval (* ux uy) (* lx ly)))
	    ((and x-+ y++) (make-interval (* lx uy) (* ux uy)))
	    ((and x-+ y-+) (make-interval (min (* lx uy) (* ux ly)) (max (* lx ly) (* ux uy))))
	    ((and x-+ y--) (make-interval (* ux uy) (* lx uy)))
	    ((and x-- y++) (make-interval (* lx uy) (* ux ly)))
	    ((and x-- y-+) (make-interval (* lx uy) (* lx ly)))
	    ((and x-- y--) (make-interval (* ux uy) (* lx ly))))
      )))

(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

(define (make-center-percent c p)
  (make-interval (- c (* c (/ p 100))) (+ c (* c (/ p 100)))))

(define (percent i)
  (* (/ (abs (- (car i) (cdr i))) (center i)) 100))

(define a (make-center-percent 5000 1))
(define b (make-center-percent 1000 1))

;; (define a
;;   (make-interval -1 4))

;; (define b
;;   (make-interval -5 -7))



(add-interval a b)
(mul-interval a b)
(div-interval a b)
(sub-interval a b)

