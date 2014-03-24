
(define (length l)
  (if (null? (cdr l))
      1
      (+ 1 (length (cdr l)))))

(define x (list 1 2 3 4 5 6 7))



(define (same-parity . target)
  (define (odd-action list)
    (if (odd? (car list))
	(cons (car list) (cons (odd-action (cdr list))))
	(cons (odd-action (cdr list)))))
  (if (odd? (length (cons first target)))
      (odd-action target)
      target))


(define (same-parity a . z)
   (define (iter items answer)
     (if (null? items)
         answer
         (iter (cdr items)
               (if (= (remainder (car items) 2)
                      (remainder a 2))
                   (append answer (list (car items)))
                   answer))))
   (iter z (list a)))

(define (same-parity a . z)
  (cond ((null? z) a)
	((even? a) (cons a (all-even z)))
	(else (cons a (all-odd z)))))

(define (all-odd lst)
  (define (iter x)
    (cond ((null? x) '())
	  ((odd? (car x))
	   (cons (car x) (iter (cdr x))))
	  (else (iter (cdr x)))))
  (iter lst))

(define (all-even lst)
  (define (iter x result)
    (cond ((null? x) (reverse result))
	  ((even? (car x)) (iter (cdr x) (cons (car x) result)))
	  (else (iter (cdr x) result))))
  (iter lst '()))


(define (all-odd l)
  (define (iter x)
    (cond ((null? x) '())
	  ((odd? (car x))
	   (cons (car x) (iter (cdr x))))
	  (else (iter (cdr x)))))
  (iter l))


(define (all-even l)
  (define (iter x)
    (cond ((null? x) '())
	  ((odd? (car x))

(define (reverse1 l)
  (if (null? l)
      '()
      (append (reverse1 (cdr l)) (car l))))

(define (reverse2 l)
  (if (null? l)
      '()
      (append (reverse2 (cdr l)) (car l)))) 

(define (rev l)
  (if (null? (cdr l))
      l
      (append (rev (cdr l)) (list (car l)))))

(1 2)
(append (append (rev '()) (list 2)) (list 1))


(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(append x x )

(define (reverse l)
  (if (null? l)
      '()
      (append (reverse (cdr l)) (list (car l)))))

(reverse x)



(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(append x x)



(all-odd x)
(all-even x)

