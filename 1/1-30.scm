(define (cube x)
  (* x x x))

(define (inc x)
  (+ x 1))

(define (identity x)
  x)

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
	 (sum term (next a) next b))))


(sum cube 0 inc 100)
(sum identity 0 inc 100)
(define (even? x)
  (if (= (remainder x 2) 0) true false))
       

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
	result
	(iter (inc a) (+ result (term a)))))
  (iter a 0))

(sum-iter cube 0 inc 3)


    
    


