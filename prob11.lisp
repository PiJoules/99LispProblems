(defun encode-modified (l)
	; (if (null l)
	; 	nil
	; 	(if (eq (first (first l)) 1)
	; 		(cons (second (first l)) (encode-modified (rest l)))
	; 		(cons (first l) (encode-modified (rest l)))
	; 	)
	; )
	(_encode-modified (encode l))
)

(defun _encode-modified (l)
	; accepts (encode l) as input
	(if (null l)
		nil
		(if (eq (first (first l)) 1)
			(cons (second (first l)) (_encode-modified (rest l)))
			(cons (first l) (_encode-modified (rest l)))
		)
	)
)

(defun encode (l)
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