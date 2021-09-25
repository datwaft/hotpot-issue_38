;; The entry point for this test.
;; The expected result is:
; The macros.fnl file was required.
; The file1.fnl file was required.
; file1	1
; file1	2
; file1	3
; The file2.fnl file was required.
; file2	4
; file2	5
; file2	6
; The file3.fnl file was required.
; file3	7
; file3	8
; file3	9

(require :core.file1)
(require :core.file2)
(require :core.file3)
