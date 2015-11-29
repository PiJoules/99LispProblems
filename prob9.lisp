(defun pack(l)
	; call a function that looks up
	; the first elements of the list
	; until it reaches a different element
	; and append this element to a new list
	;
	; this new list will be the old list
	; with the first same elements trimmed
	(if (null l)
		nil
		(cons (same_first l) (pack (trimmed_first l)))
	)
)

(defun same_first (l)
	; The first element should be the same as
	; the second element to get appended to
	; the sublist.
	(cond
		((null l) nil)  ; nothing
		((null (rest l)) l)  ; one elem left in list
		((equal (first l) (second l))
			; first and second elem are same
			(cons (first l) (same_first (rest l)))
		)
		(t (list (first l)))  ; they are different, so return a list of the first elem
	)
)

(defun trimmed_first (l)
	; Return the list with the first same elems
	; trimmed from it.
	; Just keep trimming while the first and
	; second elem are the same
	(cond
		((null l) nil)
		((null (rest l)) nil)
		((equal (first l) (second l))
			(trimmed_first (rest l))
		)
		(t (rest l))
	)
)