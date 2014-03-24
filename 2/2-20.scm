(define x (list 100 7 9 10 30 40 3))


(odd? (car (cdr x)))


(cond ((null? x) '())
      ((odd? (car x)) (cons (car x) '()))
      (else '()))


(define (odd-picker l)
  (cond ((null? l) '())
	((odd? (car l)) (cons (car l) (odd-picker (cdr l))))
	(else (odd-picker (cdr l)))))


(define (even-picker l)
  (cond ((null? l) '())
	((even? (car l)) (cons (car l) (even-picker (cdr l))))
	(else (even-picker (cdr l)))))




(define (same-parity c . l)
  (if (odd? c)
