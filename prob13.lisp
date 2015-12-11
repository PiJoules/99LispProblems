(defun encode-direct (l)
	; Create the result iteratively without
	; creating the list of sublists as a
	; medium.
	(if (null l)
		nil
		(cons
			; (trimmmed-head l)
			(let ((head (trimmmed-head l)))
				(if (eq (first head) 1)
					(second head)
					head
				)
			)
			(encode-direct (trimmed-rest l))
		)
	)
)

(defun trimmmed-head (l)
	; encode the trimmed head
	; takes the list
	; returns (count head)
	(if (null l)
		nil
		(let ((head (first l)) (next (second l)))
			(cond
				((eq next nil) (list 1 head))
				((eq head next) (list (+ 1 (first (trimmmed-head (rest l)))) head))
				(t (list 1 head))
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