;; Treasury Management System
(define-map treasury-accounts uint {balance: uint, allocated: uint, reserved: uint})
(define-public (allocate-funds (account-id uint) (amount uint))
    (let ((account (default-to {balance: u0, allocated: u0, reserved: u0} (map-get? treasury-accounts account-id))))
        (map-set treasury-accounts account-id (merge account {allocated: (+ (get allocated account) amount)}))
        (ok true)))
