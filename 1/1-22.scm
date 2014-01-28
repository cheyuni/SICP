(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))
	 

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

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



(search-for-prime 100000000 3)
(search-for-prime 1000000000 3)
(search-for-prime 10000000000 3)
(search-for-prime 100000000000 3)
(search-for-prime 1000000000000 3)


;;제시된 함수에서 (runtime)을 인자로 넣으면 정수계산에서 에러발생.. 시간관련 계산 실패 -> 컴퓨터가 너무 빨라서 0 나오던 것
;;루트 10배 맞음



	
