
(define (compose f g)
  (lambda (x) (f (g x))))


(define (repeated f n)
  (define (repeat-iter function count)
    (if (= count n)
	function
	(repeat-iter (compose f function) (+ count 1))))
  (repeat-iter f 1)) ;;다시

((repeated square 2) 5)
  




	
  
