(defun encode (l)
	; use same functions as in prob9
	; but return different val
	(if (null l)
		nil
		(cons (trimmed-head l) (pack (trimmed-rest l)))
	)
)

(defun trimmed-head (l)
	(if (null l)
		nil
		(let ((head (first l)) (next (second l)))
			(cond
				((eq next nil) (list 1 head))
				; ((eq head next) (+ 1 (trimmed-head (rest l))))
				((eq head next) (list (+ 1 (first (trimmed-head (rest l)))) head))
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