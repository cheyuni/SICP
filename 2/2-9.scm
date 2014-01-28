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
  (make-interval x
		 (make-interval (/ 1.0 (upper-bound y))
				(/ 1.0 (lower-bound y)))))

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y)) (- (upper-bound x) (lower-bound y))))

(define (make-interval a b) (cons a b))

(define (upper-bound interval)
  (cdr interval))
  
(define (lower-bound interval)
  (car interval))

(define a
  (make-interval 2 4))

(define b
  (make-interval 5 7))




;; 합의 경우 구간의 구간값의 합과 더한 구간의 구간값은 동일하다
;; 차의 경우 lower-bound x와 lower-bound y 의 차이와 upper-bound x 와 upper-bound x 의 차이를 합한 값이 나온값의 구간값과 같다
;; 개복잡하네 말이ㅋㅋㅋ



