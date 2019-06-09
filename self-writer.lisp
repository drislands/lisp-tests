""" Function that rewrites itself on execution."""
(defun write-add (n) (eval
                       `(defun add (n)
                          (let ((x (+ n ,n)))
                            (write-add x)
                            x
                            )
                          )
                       )
  )

