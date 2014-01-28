(define zero (lambda (f) (labmda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(add-1 zero)

;전혀 이해가 안됨 ㅋㅋㅋㅋㅋㅋㅋㅋ 일단 패스
	      
