(define (fixed-point f first-guess)
  (define tolerance 0.00001)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
	  next
	  (try next))))
    (try first-guess))


(/ 1 (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)) ;;이게 답 이거와 맞춰보면됨



(define (cont-frac-rec n d k)
  (define (recursive value)
    (/ (n value)
       (+ (d value)
	  (if (= value k)
	      (/ (n value) (d value))
	      (/ (n value) (+ (d value) (recursive (+ value 1))))))))
  (recursive 1)) ;;recursive 

(define (cont-frac-rec n d k)
  (define (recursive value)
    (if (= value k)
	(/ (n value) (d value))
	(/ (n value) (+ (d value) (recursive (+ value 1))))))
  (recursive 1)
  )

(define (cont-frac-rec n d k)
  (define (recursive value)
    (if (= value k)
	(/ (n value) (d value))
	(/ (n value) (+ (d value) (recursive (+ value 1))))))
  (recursive 1)
  )
	



  
(define (cont-frac n d k)
  (define (cont-frac-iter value result)
    (cond ((= value 1) result)
	  ((= value k) (cont-frac-iter (- value 1) (/ (n value) (d value))))
	  (else (cont-frac-iter (- value 1) (begin (newline) (display result) (/ (n (- value 1)) (+ (d (- value 1)) result)))))))
  (cont-frac-iter k 0)) ;;이렇게 짜고 나서 민기형이랑 맞춰보니 매우 비효율적으로 짠 것을 깨달음
    


(define (cont-frac n d k)
  (define (cont-frac-iter value result)
    (if (zero? value) result
	(cont-frac-iter (- value 1) (/ (n value) (+ (d value) result)))))
  (cont-frac-iter k 0)) ;;result가 초기에 0 이기 처음 식이 + 0이 된다 그러므로 마지막을 계산하는 조건을 넣을 필요가 없어진다


(cont-frac-rec (lambda (i) 1.0)
	   (lambda (i) 1.0)
	   11)  ;;6번 recursive

(cont-frac (lambda (i) 1.0)
	   (lambda (i) 1.0)
	   12) ;;12 번
