(define (count-change amount)
  (cc amount 5))

(define (cc amount coin-values)
  (cond ((= amount 0) 1)
	((or (< amount 0) (no-more? coin-values)) 0)
	(else
	 (+ (cc amount
		(except-first-denomination coin-values))
	    (cc (- amount
		   (first-denomination coin-values))
		coin-values)))))

(define odd (list 1 3 5 7 9))

(define (first-denomination items)
  (car items))

(define (except-first-denomination items)
  (cdr items))

(define (no-more? items)
  (null? items))

(define us-coins (list 50 25 10 5 1))

(define us-coins-order (list 10 5 1 25 50))

(define uk-coins (list 100 50 20 10 5 2 1 0.5))

(define test (list 20 10 1))
(define test (list 1 10 20))

(cc 100 test)





(cc 100 us-coins-order)
(cc 100 uk-coins)

;;영향을 주지 않는다. 

