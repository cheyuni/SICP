 (define (fast-prime? n times)
  (cond ((= times 0) true)
	((fermat-test n) (fast-prime? n (- times 1)))
	(else false)))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
	((even? exp)
	 (remainder (* (expmod base (/ exp 2) m) (expmod base (/ exp 2) m))
		    m))
	 ;; (remainder (square (expmod base (/ exp 2) m))
	 ;; 	    m))
	(else
	 (remainder (* base (expmod base (- exp 1) m))
		    m))))

(define (square n) (* n n))

(define (prime? n)
  (fast-prime? n 2000))



(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))
	 

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





;; (search-for-prime 100000 3)
;; (search-for-prime 1000000 3)
(search-for-prime 1000 3)
(search-for-prime 1000000 3)
(search-for-prime 1000000000 3)


;; 엄청난 속도 차이가 나온다 ㅋㅋㅋ *를 그냥 쓸 경우에는 그 프로시져를 두번 계산을 해서 집어 넣어야 하지만
;; square을 쓸 경우 한번 계산한 값을 square프로시저에 넣어서 사용하게 되므로 log(n)의 속도로 진행됨



	


