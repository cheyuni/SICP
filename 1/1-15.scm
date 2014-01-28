(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

1) 5번
12.15
4.05
1.35
0.45
0.15
0.05

2) 1번문제는 12.15/3**n < 0.1
공간은 log(n)에 비례함
계산단계도 마찬가지


