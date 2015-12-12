(defun gcd (a b)
	; common lisp also comes with a default gcd func
	(let ((a (max a b)) (b (min a b)))
		(cond
			((eq a 0) b)
			((eq b 0) a)
			(multiple-value-bind (q r) (floor a b)
				(gcd b r)
			)
		)
	)
)