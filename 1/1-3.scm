(define (square x) (* x x))
(define (find_small x y z)
  (cond
   ((and (< x y) (< x z)) x)
   ((and (< y x) (< y z)) y)
   (else z)))

 (define (answer x y z)
   (+ (if (not (= (find_small x y z) x)) (square x) 0)
      (if (not (= (find_small x y z) y)) (square y) 0)
      (if (not (= (find_small x y z) z)) (square z) 0)))

	

