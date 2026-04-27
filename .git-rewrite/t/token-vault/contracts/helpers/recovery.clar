;; Social Recovery
(define-map guardians principal bool)
(define-public (add-guardian (guardian principal))
    (ok (map-set guardians guardian true)))
