setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal autoindent
setlocal smartindent

setlocal makeprg=tsc\ -m\ commonjs\ -t\ es5\ --emitDecoratorMetadata\ %
setlocal errorformat=%-P%f,
                    \%A%>%\\s%\\?#%*\\d\ %m,%Z%.%#Line\ %l\\,\ Pos\ %c,
                    \%-G%f\ is\ OK.,%-Q

setlocal omnifunc=TSScompleteFunc
