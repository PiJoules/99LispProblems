(defun my_but_last (l)
	(let ((length (list-length l)))
		(cond
			((< length 2) nil)
			((= length 2) (first l))
			(t (my_but_last (rest l)))
		)
	)
)