(define (last-pair items)
  (if (null? (cdr items))
      (car items)
      (last-pair (cdr items))))


(define (last-pair items)
  (define (iter items c)
    (if (null? items)
	c
	(iter (cdr items) (car items))))
  (iter items '()))

(last-pair x)

  




(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define squares (list 1 4 9 16 25))

(list-ref squares 3)

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define (length-iter items)
  (define (iter list result)
    (if (null? list)
	result
	(iter (cdr list) (+ result 1))))
  (iter items 0))

(define odd (list 1 3 5 7 9))

(append odd squares)
(append squares odd)





;; recursive

(define (last-pair items)
  (if (null? (cdr items))
      (car items)
      (last-pair (cdr items))))

;; iteractive
(define (last-pair-iter items)
  (define (iter items result)
    (if (null? items)
	result
	(iter (cdr items) (car items))))
  (iter items 0))

(last-pair-iter odd)


	
