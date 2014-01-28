(define (next num)
  (if (= num 2) 3
      (+ num 2)))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find-divisor n (next test-divisor)))))	
	;; (else (find-divisor n (if #f 0 (+ test-divisor 1))))))
;;9개의 element 를 계산해야 한다 근데 이게 반으로 줄음

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))


(define (even? num)
  (if (= (remainder num 2) 0) #t #f))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-prime n count)
  (if (= count 0)
      (begin (newline) (display "end!!") 1)
      (if (even? n) (search-for-prime (+ n 1) count)
	  (if (prime? n) (begin (timed-prime-test n) (search-for-prime (+ n 2) (- count 1)))
	      (search-for-prime (+ n 2) count)))))


(search-for-prime 1000000000 3)
;; (search-for-prime 10000000000 3)
;; (search-for-prime 100000000000 3)
;; (search-for-prime 1000000000000 3)

;; 2:3정도의 비율?? 물론 이 알고리즘이 더 빠르다. 왜그런걸까?? 나중에 다시 봐야할듯
;; 이해함. next의 경우 (+ text-divisor 1) 로 하나의 프로세스이다 하지만 (next)를 호출 할 경우 
;; (= num 2) 3 (+ num 2) 이렇체 총 3개의 요소를 수행하는데
;; find-divisor의 엘레멘트는 9개 이므로 총 12개의 프로세스가 된다. 이것이 반으로 준 것이므로 6개라고 보면 되는데
;; 9 : 6 -> 3 : 2가 된다고 추론. 



