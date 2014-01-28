(define (cube x)
  (* x x x))

(define (inc x)
  (+ x 1))

(define (identity x)
  x)


(define (even? x)
  (if (= (remainder x 2) 0) true false))

(define (multi term a next b)
  (if (> a b)
      1
      (* (term a)
	 (multi term (next a) next b)))) ;; recursive

(define (multi-iter term a next b)
  (define (iter a result)
    (if (> a b)
	result
	(iter (next a) (* result (term a))))) ;; iteractive
  (iter a 1))


(multi-iter identity 1 inc 10)
(multi identity 1 inc 10)


(define (1-31 n)
  (* 4.0 (multi-iter (lambda (x) (/ (* (- x 1) (+ x 1)) (* x x))) 3 (lambda (x) (+ x 2)) n)))



(1-31 10000)

					
(define (1-31 n)
  (define (term k)
    (/ (* (- k 1) (+ k 1)) (* k k)))
  (define (inc2 k)
    (+ k 2))
  (* 4.0 (multi-iter term 3 inc2 n)))

    
	 

    
    


