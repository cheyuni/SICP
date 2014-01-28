(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

; applicative order

(gcd 206 40)

(if (= 40 0)
    206
    (gcd 40 (remainder 206 40)))

(if (= 40 0) 206 (gcd 40 6)) ;한번

(gcd 40 6)

(if (= 6 0) 40 (gcd 6 (remainder 40 6)))
(if (= 6 0) 40 (gcd 6 4)) ;두번
(gcd 6 4)

(if (= 4 0) 6 (gcd 4 (remainder 6 4)))
(if (= 4 0) 6 (gcd 4 2)) ;세번
(gcd 4 2)

(if (= 2 0) 4 (gcd 2 (remainder 4 2)))
(if (= 2 0) 4 (gcd 2 0)) ;네번
(gcd 2 0)



(if (= 0 0) 4 (gcd 0 (remainder 2 0)))
4 번

; normal order

(gcd 206 40)
(gcd 40 (remainder 206 40)))
((remainder 206 40) (remainder 40 (remainder 206 6)))

이런식으로 쭈욱 많이 일어난다. 연습장에 적긴했는데 여기다 또적기힘듬

