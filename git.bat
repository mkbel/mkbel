@ECHO OFF

execId=%RANDOM%

/home/marek/bin/git_wrapper/worker.sh %execId% %*

:start
IF EXIST "/home/marek/bin/git_wrapper/lock_%execId%.txt" (
    TYPE "/home/marek/bin/git_wrapper/out_%execId%.txt"
    DEL "/home/marek/bin/git_wrapper/out_%execId%.txt"
    DEL "/home/marek/bin/git_wrapper/lock_%execId%.txt"
) ELSE (
    ping -n 1
    GOTO start
)