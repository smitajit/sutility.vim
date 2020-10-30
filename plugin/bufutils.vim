let g:bufutils#commands = [
    \{"command": "BCloseThis",            "target" : "bufutils#close#This()",                    "scope" : "close",  "options" : "",                          },
    \{"command": "BClosePreviews",        "target" : "bufutils#close#Previews()",                "scope" : "close",  "options" : "",                          },
    \{"command": "BCloseAll",             "target" : "bufutils#close#All()",                     "scope" : "close",  "options" : "",                          },
    \{"command": "BCloseOther",           "target" : "bufutils#close#Other()",                   "scope" : "close",  "options" : "",                          },
    \{"command": "BCloseLeft",            "target" : "bufutils#close#Left()",                    "scope" : "close",  "options" : "",                          },
    \{"command": "BCloseRight",           "target" : "bufutils#close#Right()",                   "scope" : "close",  "options" : "",                          },
    \{"command": "BOpenSHorizontal",      "target" : "bufutils#open#SplitHorizontal(<f-args>)",  "scope" : "open",   "options" : "-nargs=* -complete=file",   },
    \{"command": "BOpenSVertical",        "target" : "bufutils#open#SplitVertical(<f-args>)",    "scope" : "open",   "options" : "-nargs=* -complete=file",   },
    \{"command": "BOpen",                 "target" : "bufutils#open#New(<f-args>)",              "scope" : "open",   "options" : "-nargs=* -complete=file",   },
    \{"command": "BMoveToLeft",           "target" : "bufutils#move#ToLeft()",                   "scope" : "move",   "options" : "",                          },
    \{"command": "BMoveToRight",          "target" : "bufutils#move#ToRight()",                  "scope" : "move",   "options" : "",                          },
    \{"command": "BMoveToTop",            "target" : "bufutils#move#ToTop()",                    "scope" : "move",   "options" : "",                          },
    \{"command": "BMoveToBottom",         "target" : "bufutils#move#ToBottom()",                 "scope" : "move",   "options" : "",                          },
    \{"command": "BResizeIncreaseHeight", "target" : "bufutils#resize#IncreaseHeight(<f-args>)", "scope" : "resize", "options" : "-nargs=?",                  },
    \{"command": "BResizeDecreaseHeight", "target" : "bufutils#resize#DecreaseHeight(<f-args>)", "scope" : "resize", "options" : "-nargs=?",                  },
    \{"command": "BResizeIncreaseWidth",  "target" : "bufutils#resize#IncreaseWidth(<f-args>)",  "scope" : "resize", "options" : "-nargs=?",                  },
    \{"command": "BResizeDecreaseWidth",  "target" : "bufutils#resize#DecreaseWidth(<f-args>)",  "scope" : "resize", "options" : "-nargs=?",                  },
    \{"command": "BResizeFullWidth",      "target" : "bufutils#resize#FullWidth()",              "scope" : "resize", "options" : "",                          },
    \{"command": "BResizeFullHeight",     "target" : "bufutils#resize#FullHeight()",             "scope" : "resize", "options" : "",                          },
    \{"command": "BResizeReset",          "target" : "bufutils#resize#Reset()",                  "scope" : "resize", "options" : "",                          },
    \{"command": "BResizeToggleZoom",     "target" : "bufutils#resize#Toggle(v:true)",           "scope" : "resize", "options" : "",                          },
    \{"command": "BRefresh",              "target" : "bufutils#refresh#Buffer()",                "scope" : "other" , "options" : "",                          },
\]

:call bufutils#common#register_commands()
:command! -nargs=* -complete=custom,bufutils#common#list_commands BCommands call bufutils#common#exec_command(<f-args>)
