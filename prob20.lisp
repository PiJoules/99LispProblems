(defun remove-at (l n)
	(if (null l)
		nil
		(append (subseq l 0 (- n 1)) (nthcdr n l))
	)
)