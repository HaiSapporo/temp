https://fnasimbd.github.io/blog/2016/01/11/c-sharp-configurations.html tham khao  
if "$(ConfigurationName)" == "Release" 
( xcopy "$(SolutionDir)$(TargetName)\bin\$(Configuration)" "S:\My Utils\MediaMaster\" /s /i /y )
https://www.codeproject.com/Tips/5278903/Automatic-Copying-of-Release-Executables-to-a-Spec

