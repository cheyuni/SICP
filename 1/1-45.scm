(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (define (repeat-iter function count)
    (if (= count n)
	function
	(repeat-iter (compose f function) (+ count 1))))
  (repeat-iter f 1)) ;;다시

(define (fixed-point f first-guess)
  (define tolerance 0.00001)  
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (newline)
    (display guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
	  next
	  (try next))))
    (try first-guess))

  
(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (average x y)
  (/ (+ x y) 2))


;;모르겠음 
