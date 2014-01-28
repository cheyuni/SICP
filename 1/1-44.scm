(define (dx 0.0001))

(define (smoothe f)
  (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))


(define (compose f g)
  (lambda (x) (f (g x))))


(define (repeated f n)
  (define (repeat-iter function count)
    (if (= count n)
	function
	(repeat-iter (compose f function) (+ count 1))))
  (repeat-iter f 1)) ;;다시


(define (smoothe-n n f)
  (repeated smoothe n) f)


