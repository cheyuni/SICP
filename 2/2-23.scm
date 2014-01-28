(define (square x)
  (* x x))

(define (foreach proc items)
  (if (null? items)
      '()
      (cons (proc (car items)) (foreach proc (cdr items)))))

(foreach square (list 1 2 3 4))


