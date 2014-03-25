(define (make-mobile left right)
  (list left right))

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


(define mobile (make-mobile (make-branch 2 5) (make-branch 1 10)))


(define (total-weight mobile)
  (+ (branch-structure (left-branch mobile)) (branch-structure (right-branch mobile))))

(total-weight mobile)

(define (balanced? mobile)
  (= (* (branch-structure (left-branch mobile)) (branch-length (left-branch mobile))) (* (branch-structure (right-branch mobile)) (branch-length (right-branch mobile)))))

(balanced? mobile)


