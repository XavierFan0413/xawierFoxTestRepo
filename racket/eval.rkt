#lang sicp

(rule (loves romeo juliet))
(rule (loves juliet romeo))
(rule (mutual-love ?a ?b)
      (and (loves ?a ?b)
           (loves ?b ?a)))
