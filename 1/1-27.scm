(define (carm? n)
  (define (is-carm n count)
    (cond ((= count 0) true)
	  ((= (expmod count n n) count) (is-carm n (- count 1)))
	  (else false)))
  (is-carm n (- n 1))
  )


(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
(gcd 1 10)

(define (expmod base exp m)
  (cond ((= exp 0) 1)
	((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
	(else (remainder (* base (expmod base (- exp 1) m)) m))))


(carm? 561) ; #t
(carm? 1105) ; #t

(define (repeat from to)
  (if (> from to) (display "come on...")
      (if (= from to) (begin (newline) (display "end"))
	  (begin (if (carm? from) (begin (display from) (newline)) ()) (repeat (+ from 1) to)))))

(repeat 0 1000)


카마이클수까지 검출되어 나온다
