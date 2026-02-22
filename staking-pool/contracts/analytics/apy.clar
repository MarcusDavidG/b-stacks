;; APY calculation
(define-read-only (calc-apy (rate uint)) (* rate u365))
