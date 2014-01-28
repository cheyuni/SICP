(define (f x y . z))

(define (recur x)
  (cond ((= x 0) 0)
	((= x 1) 1)
	(else (+ (recur (- x 1)) (recur (- x 2))))))


(define (scale-list items factor)
  (if (null? items)
      '()
      (cons (* (car items) factor)
	    (scale-list (cdr items) factor))))

(define odd
  (list 1 3 5 7 9))

(scale-list odd 2)

(define (map proc items)
  (if (null? items)
      '()
      (cons (proc (car items))
	    (map proc (cdr items)))))

(map abs (list -10 2.5 -11.6 17))

(map square (list -10 2.5 -11.6 17))

(square-list (list 1 2 3 4))

(1 4 9 16)

(define (square-list items)
  (if (null? items)
      '()
      (cons (* (car items) (car items)) (square-list (cdr items)))))

(define (square-list items)
  (map square items))

(square-list (list 1 2 3 4))





      
	     