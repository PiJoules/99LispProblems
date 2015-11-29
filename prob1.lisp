(defun my_last (l)
    (if (null l)
        nil
        (if (null (rest l))
            l
            (my_last (rest l))
        )
    )
)