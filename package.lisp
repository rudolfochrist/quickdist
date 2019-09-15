(defpackage #:quickdist
  (:use #:cl #:alexandria)
  (:import-from #:quicklisp
                #:file-size)
  (:import-from #:uiop
                #:native-namestring)
  (:import-from #:function-cache
                #:defcached)
  (:export #:quickdist
           #:*implementation-systems*
           #:*distinfo-template*
           #:*distinfo-file-template*
           #:*dist-dir-template*
           #:*archive-dir-template*
           #:*archive-url-template*
           #:*gnutar*
           #:*project-path*
           #:*default-ignore-filename-p*
           #:*default-ignore-dependency-p*
           #:skip-project
           #:make-archive
           #:make-systems-info
           #:system-info
           #:get-path
           #:get-project-name
           #:get-filename
           #:get-name
           #:get-dependencies
           #:release-info
           #:get-project-url
           #:get-file-size
           #:get-md5sum
           #:get-content-sha1
           #:get-project-prefix
           #:get-system-files
           #:get-archive-path
           #:implementation-system-p
           #:not-toplevel-filename-p))
