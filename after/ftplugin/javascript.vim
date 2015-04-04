setlocal ts=2
setlocal sts=2
setlocal sw=2

setlocal makeprg=jslint\ %
setlocal errorformat=%-P%f,
                    \%A%>%\\s%\\?#%*\\d\ %m,%Z%.%#Line\ %l\\,\ Pos\ %c,
                    \%-G%f\ is\ OK.,%-Q
setlocal omnifunc=javascriptcomplete#CompleteJS
