;; This file initializes a global value.
;; The expected functionality is for it to be maintained during compile time of
;; the whole configuration.

;; This value is expected to only be displayed once, as it would with a normal
;; module.
(print "The macros.fnl file was required.")

(set _G.__core_counter 0)

(fn display-counter [name]
  "This is a small macro that displays the counter current value."
  (set _G.__core_counter (+ 1 _G.__core_counter))
  `(print ,name ,_G.__core_counter))

{: display-counter}
