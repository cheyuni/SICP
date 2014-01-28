(define (inc a)
  (+ a 1))


(define (dec a)
  (- a 1))


(define (plus-test1 a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(+ 10 20)

;; (4 5)

;; (3 7)

;; (2 8)

;; (1 9)

;; (0 10)

;; iterative process




(define (plus-test2 a b)
  (if (= a 0)
      b
      (inc (plus-test2 (dec a) b))))

;; (4 5)
;; (inc (plus-test2 (dec 3) 5))
;; (inc (inc (plus-test2 (dec (2) 5))))
;; (inc (inc (inc (plus-test2(dec (2) 5)))))
;; (inc (inc (inc (inc (plus-test2(dec (0) 5))))))
;; (inc (inc (inc (inc (5)))))

;; 6 7 8 9!
;; recursive process

(plus-test2 10 20)
