;; (define (sum-rec n)
;;   (if (= n 0)
;;       0
;;       (+ n (sum (- n 1)))))


;; (define (sum n)
;;   (define (sum-iter count result)
;;     (if (> count n)
;; 	result
;; 	(sum-iter (+ count 1) (+ result count))))
;;   (sum-iter 0 0))

;; (sum 1000000)
;; (sum-rec 1000000)


;; (define (num-back n)
;;   (define (back k)
;;     (if (> k n)
;; 	0
;; 	(+ k (back (+ k 1)))))
;;   (back 0))

;; (num-back 10)


(define (fib n)
  (cond ((= n 1) 1)
	((= n 2) 1)
	(else (+ (fib (- n 1)) (fib (- n 2))))))
