(define (1-12 num)
  (define (is-one value count)
    (if (< value count)
	(cond ((= value 0) #t)
	      ((= value 1) #t)
	      (else #f))
	(is-one (- value count) (+ count 1))))
  (define (get-line-num value count)
    (if (< value count)
	count
	(get-child (- value count) (+ count 1))))
  (if (is-one num 1)
      1
      (+ (1-12 (- num (get-line-num num 1))) (1-12 (+ (- num (get-line-num num 1)) 1)))))


     1
    1 1
   1 2 1
  1 3 3 1
 1 4 6 4 1
