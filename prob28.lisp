(defun lsort (l)
	(sort l (lambda (x y) (< (list-length x) (list-length y))))
)

(defun lfsort (l)
	; Perform the same logic as in the encoding problem
	; but encoding based on list length instead of value.
	; Make this easier by doing this on a sorted list
	(let ((encoded-l (encode (lsort l))))
		(reduce
			#'append
			(mapcar
				#'second
				(sort encoded-l (lambda (x y) (< (first x) (first y))))
			)
		)
	)
)

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
				((eq next nil) (list 1 (list head)))
				((eq (list-length head) (list-length next))
					(let ((tr-head (trimmed-head (rest l))))
						(list (+ 1 (first tr-head)) (append (list head) (second tr-head)))
					)
				)
				(t (list 1 (list head)))
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
				((eq (list-length head) (list-length next)) (trimmed-rest (rest l)))
				(t (rest l))
			)
		)
	)
)