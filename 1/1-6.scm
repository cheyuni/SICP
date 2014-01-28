(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(define (abs x)
  (if (> x 0) x -x))

(define (good-enough? guess x)
  (< (abs (- (sqare guess) x)) 0.001))
  

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
		 x)))



(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 10)


->

(sqrt-iter 1.0 10)

->

(new-if (good-enough? 1.0 10)
	1.0
	(sqrt-iter (improve 1.0 10)
		   10))

->

(new-if (good-enough? 1.0 10)
	1.0
	(sqrt-iter (average 1.0  (/ 10 1.0) ) 10 ))

->

(new-if (good-enough? 1.0 10)
	1.0
	(sqrt-iter 5.5 10 ))

->

(good-enough? 1.0 10)
(< (abs (- (* 1.0 1.0) 10)) 0.001)

->

(new-if (< (abs (- (* 1.0 1.0) 10)) 0.001)
	1.0
	(sqrt-iter 5.5 10 ))

if 는 special type이기 때문에 cond로 만들어 낸 new if처럼 applicative order evaluation으로 인해
발생하는 무한루프가 생기지 않는다.
if 는 condition을 먼저 검사하고 옳다면 case 1을 아니라면 case 2를 구한다. 









