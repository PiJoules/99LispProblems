(defun pack (l)
	; Append the trimmed group of elems in the head
	; to the trimmed rest of the body gone through
	; pack.
	(if (null l)
		nil
		(cons (trimmed-head l) (pack (trimmed-rest l)))
	)
)

(defun trimmed-head (l)
	; Retain first elems up to different second
	(if (null l)
		nil
		(let ((head (first l)) (next (second l)))
			; head is elem, next is nil
			; head and next are same
			; head and next are diff
			(cond
				((eq next nil) (list head))
				((eq head next) (cons head (trimmed-head (rest l))))
				(t (list head))
			)
		)
	)
)

(defun trimmed-rest (l)
	(if (null l)
		nil
		(let ((head (first l)) (next (second l)))
			(cond
				((eq next nil) (rest l))
				((eq head next) (trimmed-rest (rest l)))
				(t (rest l))
			)
		)
	)
)