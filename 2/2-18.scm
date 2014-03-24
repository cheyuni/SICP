
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

(last-pair (list 23 72 149 34))

(define (reverse items)
  (append (cdr items) (car items)))


(define test (list 1 2 3))

(null? test)


(define (reverse items)
  (define (iter list result)
    (if (null? list)
	result
	(iter (cdr list) (cons (car list) result))))
 (iter items '()))

(define (reverse-recursive items)
  (if (null? items)
      '()
      (append (reverse-recursive (cdr items)) (list (car items)))))
      
(reverse-recursive odd)


(define (reverse items)
  (define (iter list result)
    (if (null? list)
	result
	(iter (cdr list) (cons (car list) result))))
  (iter items '()))

(reverse x)

