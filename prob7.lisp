(defun flatten (l)
	; Given a list, if the first element
	; is a list, return
	; (append `(elem) (flatten (rest l)))
	; otherwise, return
	; (append (flatten (first l)) (flatten (rest l)))
	(if (null l)
		nil
		(let ((elem (first l)) (remaining (rest l)))
			(cond
				((listp elem) (append (flatten elem) (flatten remaining)))
				(t (append (list elem) (flatten remaining)))
			)
		)
	)
)