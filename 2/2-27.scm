(define x (list 1 2 3))

(define y (list 4 5 6))

(define squares (list 1 4 9 16 25))

(cdr (cdr (list 1 2)))

(cons x y)

(list x y)

(define (reverse items)
  (append (cdr items) (car items)))

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

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

(reverse (list x y))
(reverse-recursive odd)

(pair? (cdr (list x y)))
(append x y)
(cdr (cons x y))
(list x y)


(append (reverse (car (reverse (list x y)))))

(define result (reverse (list x y)))
(define result (list x y))
(define result (list (list 1 2 (list 3 4)) (list 5 6 7)))
(define result (reverse (list (list 1 2 3) (list 4 5 6))))
(define result (list (list 4 5 6) 1))
(car (cdr result))
(define z (list (list 1 2 3) (list 4 5)))

(define (deep-reverse items)  
  (define result (reverse items))
  (cond ((null? result) '())
	((pair? (car result))
	 (append (list (reverse (car result))) (deep-reverse (cdr result))))
	((not (pair? (car result)))
	 (append (list (car result)) (deep-reverse (cdr result))))))

(cons x y)
(cons 1 (list 2 3 4))


(define (deep-reverse items)  
  (define result (reverse items))
  (cond ((null? result) '())
	((pair? (car result))
	 (cons (reverse (car result)) (deep-reverse (cdr result))))
	((not (pair? (car result)))
	 (cons (car result)) (deep-reverse (cdr result)))))

