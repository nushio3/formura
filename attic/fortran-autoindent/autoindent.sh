cp example.f90 example-indented.f90
emacs --batch -l emacs-batch-f90-indent.el \
    -f f90-batch-indent-region example-indented.f90
