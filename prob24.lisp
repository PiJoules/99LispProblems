(defun lotto-select (n m)
	; Draw N different random numbers from the set 1..M.
	; I will assume the M is inclusive.
	(if (< n 1)
		nil
		(cons (+ (random m) 1) (lotto-select (- n 1) m))
	)
)