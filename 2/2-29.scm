(define (make-mobile left right)
  (list left right))

(make-mobile x y)

(define (make-mobile length structure)
  (list length structure))

(define (left-branch l)
  (car l))

(define (right-branch l)
  (car (cdr l)))

(define (make-branch left right)
  (list left right))


(define (branch-length l)
  (car l))

(define (branch-structure l)
  (car (cdr l)))

(left-branch (make-mobile 2 3)) 
(right-branch (make-mobile 2 3)) 
(branch-length (make-branch 4 5)) 
(branch-structure (make-branch 4 5)) 



