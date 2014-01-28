(cons (list 1 2) (list 3 4))

(define x (cons (list 1 2) (list 3 4)))



(define (count-leaves x)
  (cond ((null? x) 0)
	((not (pair? x)) 1)
	(else (+ (count-leaves (car x)) (count-leaves (cdr x))))))

(count-leaves (list x x))

(define (length x)
  (if (null? x)
      0
      (+ 1 (length (cdr x)))))


(length x)
(length (list 1 (list 2 (list 3 4))))

(list 1 (list 2 (list 3 4)))
;; 그려보았다. 
