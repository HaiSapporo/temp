xcopy "$(SolutionDir)$(TargetName)\bin\Release\*" "E:\01_CA_NHAN\02. HOC TAP\testcopy\$(TargetName)" /s /i /y
/I - treat as a directory if copying multiple files.
/Q - Do not display the files being copied.
/S - Copy subdirectories unless empty.
/E - Copy empty subdirectories.
/Y - Do not prompt for overwrite of existing files.
/R - Overwrite read-only files.
/D Copy only files that are modified in sourcepath
