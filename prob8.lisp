(defun compress (l)
	; for each element in the list
	; pop off the first element,
	; remove it from the list, then
	; append it back to the list
	(if (null l)
		nil
		(let ((head (first l)) (remaining (rest l)))
			(append (list head) (compress (remove head remaining)))
		)
	)
)