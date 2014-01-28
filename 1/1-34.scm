(define (f g)
  (g 2))





(f square)

(f (lambda (z) (* z (+ z 1))))

(f f)

;; applicative order을 따르기 때문에 (f f)를 실행시키면
;; (f 2)이렇게 되는데 -> (2 2)가 되버린다 .실행될리가없음
