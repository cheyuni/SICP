(define x (list 1 2 3))

(define y (list 4 5 6))

(define (fringe l)
  (cond ((null? l) '())
	((not (pair? l)) (list l))
	(else (append (fringe (car l)) (fringe (cdr l))))))





(define (fringe l)
  (cond ((null? l) '())
	((pair? l) (append (fringe (car l)) (fringe (cdr l))))
	(else (list l))))

(define (fringe l)
  (define (iter l answer)
    (cond ((null? l) answer)
	  ((pair? l) (cons (fringe (car l)) (fringe (cdr l))))
	  (else (cons (car l) answer))



(fringe (list x y))



	 




		


