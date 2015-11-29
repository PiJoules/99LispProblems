(defun flip (l)
	; (reverse l)
	(if (null l)
		nil
		(let ((head (first l)) (remaining (rest l)))
			(append (flip remaining) (list head))
		)
	)
)