;ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ시바 안풀랬는데 결국 풀게되네
;풀었는데 적기 힘듬 수식이라. ㅋㅋㅋ




(define (fib a b count)
  (if (= count 0)
      b
      (fib (+ a b) a (- count 1))))


(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
	  next
	  (try next))))
    (try first-guess))


(fixed-point cos 1.0)

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y))) 1.0))


(sqrt 10)




(define (find-pi n)
  (/ (+ 1 (sqrt 5)) 2)
