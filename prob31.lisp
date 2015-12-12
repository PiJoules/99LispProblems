(defun is-prime (orig)
	(_is-prime (1- orig) orig)
)

(defun _is-prime (n orig)
	(if (<= n 1)
		t
		(if (eq (mod orig n) 0)
			nil
			(_is-prime (1- n) orig)
		)
	)
)