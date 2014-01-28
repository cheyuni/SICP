(define (fib n)
  (fib-iter a b p q n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
	((even? count)
	 (fib-iter a
		   b
		   p'
		   q'
		   (/ count 2)))
	(else (fib-iter (+ (* b q) (* a q) (* a p))
			(+ (* b p) (* a q))
			p
			q
			(- count 1)))))


p' = p**2 + q**2
q' = q**2 + (2 * p * q)

종나 계산했는데
A = (+ (* b q) (* a q) (* a p)) 이라 하고
B = (+ (* b p) (* a q))

이라 하고
나온값을 A에 다시 대입해서 또 B에 다시 대입해서 구함

나온 식을 A와 B의 모습과 같게 바꾸고 보니 값이 나옴.


하령이가 물어봄
