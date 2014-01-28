(define (cont-frac n d k)
  (define (cont-frac-iter value result)
    (if (zero? value) result
	(cont-frac-iter (- value 1) (/ (n value) (+ (d value) result)))))
  (cont-frac-iter k 0)) ;;result가 초기에 0 이기 처음 식이 + 0이 된다 그러므로 마지막을 계산하는 조건을 넣을 필요가 없어진다


(define (tan-cf x k)
  (let ((n (lambda (z) (if (= z 1) x (- (square x)))))
	(d (lambda (z) (- (* 2 z) 1))))
    (cont-frac n d k)))

