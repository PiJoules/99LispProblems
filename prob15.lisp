(defun repli (l n)
	; cut off head of list
	; and append a list containing
	; 3 opies of it
	(if (null l)
		nil
		(append (copy-head (first l) n) (repli (rest l) n))
	)
)

(defun copy-head (elem n)
	(if (< n 1)
		'()
		(cons elem (copy-head elem (- n 1)))
	)
)