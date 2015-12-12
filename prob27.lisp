(defun group3 (set sizes)
	(if (endp (rest sizes))
		(if (eq (first sizes) (length set))
			(list (list set))
			nil
		)
		(mapcan (lambda (combi)
			(mapcar (lambda (x) (cons combi x))
			(group3 (set-difference set combi) (rest sizes))))
			(combination (first sizes) set)
		)
	)
)

(defun combination (n l)
	; main function
	; get the indeces combination and apply the list of indeces
	; to the list using _combination
	(let ((indeces (combination-indeces n l)))
		(_combination l indeces)
	)
)

(defun _combination (l indeces-list)
	; helper function
	; Finds the combinations of l by applying a list
	; of combinations of indeces to each list
	(if (null indeces-list)
		nil
		(cons (apply-indeces l (first indeces-list)) (_combination l (rest indeces-list)))
	)
)

(defun apply-indeces (l indeces)
	; Apply and individual list of indeces to the original list
	(if (null indeces)
		nil
		(cons (nth (first indeces) l) (apply-indeces l (rest indeces)))
	)
)

(defun combination-indeces (n l)
	; Get the indeces for C(k, n), where k is (list-length l)
	; by finding all possible list index combos and filtering out
	; the lists of indeces that aren't of size n
	(filter (lambda (x) (eq (list-length x) n)) (n-combination (1- (list-length l))))
)

(defun n-combination (n)
	; Generate all possible lists of indeces
	(if (> n 0)
		(let ((child (n-combination (- n 1))))
			(append
				child
				(list (list n))
				(mapcar (lambda (x) (append x (list n))) child)
			)
		)
		'((0))
	)
)

(defun filter (f list)
	; generic filter function
	(cond
		((not list) nil)  ; the list is empty
		((funcall f (first list))  ; the first element satisfies the test
			(cons (first list) (filter f (rest list))))
		(t (filter f (rest list)))  ; otherwise ...
	)
)
