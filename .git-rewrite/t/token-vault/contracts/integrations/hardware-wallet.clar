(define-public (connect-hardware (device-id (buff 32)))
  (ok (register-device device-id)))
