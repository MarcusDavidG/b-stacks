;; Notification System
(define-map notifications principal (list 10 (string-ascii 100)))
(define-public (add-notification (user principal) (message (string-ascii 100)))
    (ok true))
