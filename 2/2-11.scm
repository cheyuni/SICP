p;;양끝점의 부호가 어떻게되는지 검사하면, mul-interval프로시저는 계산하는 방법을 아홉가지
;;경우라 나타낼 수 있는데, 그 중에 두번 곱셈 할 일은 한번뿐이다.
;;mul-interval 다시짜라

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

(define a
  (make-interval -1 4))

(define b
  (make-interval -5 -7))


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


    
(add-interval a b)
(mul-interval a b)
(div-interval a b)
(sub-interval a b)
