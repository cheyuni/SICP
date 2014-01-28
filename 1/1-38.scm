(define (cont-frac-rec n d k)
  (define (recursive value)
    (/ (n value)
       (+ (d value)
	  (if (= value k)
	      0
;	      (/ (n value) (d value))
	      (recursive (+ value 1))))))
  (recursive 1)) ;;recursive

(define (cont-frac n d k)
  (define (cont-frac-iter value result)
    (cond ((= value 1) result)
	  ((= value k) (cont-frac-iter (- value 1) (/ (n value) (d value))))
	  (else (cont-frac-iter (- value 1) (/ (n (- value 1)) (+ (d (- value 1)) result))))))
  (cont-frac-iter k 0))


(define (cont-frac n d k)
  (define (cont-frac-iter value result)
    (if (zero? value) result
	(cont-frac-iter (- value 1) (/ (n value) (+ (d value) result)))))
  (cont-frac-iter k 0))

(cont-frac (lambda (i) 1.0)
	   (lambda (i) 1.0)
	   11)


(define (d k)
  (if (= (remainder k 3) 2)
      (* (+ (quotient k 3) 1) 2)
      1))

(cont-frac-rec (lambda (i) 1.0)
	       (lambda (i) (if (= (remainder i 3) 2)
	       (* (+ (quotient i 3) 1) 2)
	       1))
	       20) ;;6번 recursive



(cont-frac (lambda (i) 1.0)
	   (lambda (i) (if (= (remainder i 3) 2)
	       (* (+ (quotient i 3) 1) 2)
	       1))
	   20) ;;11 번


(define (iter-search-e count)
  (+ 2 (cont-frac (lambda (i) 1.0)
	   (lambda (i) (if (= (remainder i 3) 2)
	       (* (+ (quotient i 3) 1) 2)
	       1))
	   count)))

(define (iter-search-e count)
  (+ 2 (cont-frac (lambda (i) 1.0)
	   (lambda (i) (if (= (remainder i 3) 2)
	       (* (+ (quotient i 3) 1) 2)
	       1))
	   count)))

(define (ruc-search-e count)
  (+ 2 (cont-frac-rec (lambda (i) 1.0)
	   (lambda (i) (if (= (remainder i 3) 2)
	       (* (+ (quotient i 3) 1) 2)
	       1))
	   count)))
;;두개의 값이 다른 값이 나와서 한참을 고민했다 recursive방식이든 iteractive방식이든 같은 값이 나와야 하는 것이 아닌가??
;;결국 찾아 낸 이유는 recursive는 앞에서부터 iteractive는 뒤에서 부터 계산했기 때문이었다. 37문제는 식이 같으니 순서가 상관이 없었지만
;;이 문제는 n 과 d 가 식이 다르고 순서의 차이가 있었다.

(define (cont-frac-rec n d k)
  (define (recursive value)
    (/ (n value)
       (+ (d value)
	  (if (= value k)
	      (/ (n value) (d value))
	      (/ (n value) (+ (d value) (recursive (+ value 1))))))))
  (recursive 1)) ;;recursive


(iter-search-e 20)
(ruc-search-e 20)
