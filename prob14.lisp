(defun dupli (l)
	; cut off the head of the list
	; and return a list with the
	; duplicated elems
	(if (null l)
		nil
		(append (dupl-head (first l)) (dupli (rest l)))
	)
)

(defun dupl-head (elem)
	(list elem elem)
)