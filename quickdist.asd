(defsystem quickdist
  :description "Create a Quicklisp distribution from a directory of local projects."
  :author "Orivej Desh <orivej@gmx.fr>"
  :licence "Unlicense <http://unlicense.org/UNLICENSE>"
  :version (:read-file-form "version.lisp-expr")
  :depends-on ((:require "uiop")
               alexandria
               cl-fad
               external-program
               babel-streams
               ironclad
               cl-ppcre
               quicklisp
               split-sequence
               cl-mustache
               function-cache
               log4cl)
  :serial t
  :components ((:file "package")
               (:file "quickdist"))
  :perform (compile-op :before (o c)
                       #+ros.installing
                       (roswell:roswell '("install" "40ants/defmain"))))
