(defun totient-phi (orig)
	(_totient-phi orig orig)
)

(defun _totient-phi (n orig)
	(if (< n 1)
		0
		(if (coprime (- n 1) orig)
			(+ 1 (_totient-phi (- n 1) orig))
			(_totient-phi (- n 1) orig)
		)
	)
)

(defun coprime (a b)
	(eq (gcd a b) 1)
)