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

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))

(define (even? x)
  (if (= (remainder x 2) 0) true false))
       


(define (simpson f a b n)
  (define make-h
    (/ (- b a) n))
  (define (make-head k)
    (cond ((= k n) 1)
	  ((= k 0) 1)
	  ((even? k) 2)
	  (else 4)))
  (define (s-term k)
    (* (make-head k) (f (+ a (* k make-h)))))
  (* (/ make-h 3) (sum s-term 0 inc n)))

(simpson cube 0 1 1000)
;정확히 1/4 나온다
    
    


