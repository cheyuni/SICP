;recursive
(define (func-rec n)
  (if (< n 3) n
      (+ (func (- n 1)) (* (func (- n 2)) 2) (* (func (- n 3)) 3))))
(func-rec 5)

;iterative
(define (func-iter a b c n)
  (if (= n 0)
      a
      (func-iter (+ a (* 2 b) (* 3 c)) a b (- n 1))))

(define (func n)
  (if (< n 3) 
      n
      (func-iter 2 1 0 (- n 2))))



(func 5)










  	 
	




