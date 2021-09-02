@rem 
@rem 
@rem Copyright (c) 2015 - 2021 by blindtiger. All rights reserved.
@rem 
@rem The contents of this file are subject to the Mozilla Public License Version
@rem 2.0 (the "License"); you may not use this file except in compliance with
@rem the License. You may obtain a copy of the License at
@rem http://www.mozilla.org/MPL/
@rem 
@rem Software distributed under the License is distributed on an "AS IS" basis,
@rem WITHOUT WARRANTY OF ANY KIND, either express or implied. SEe the License
@rem for the specific language governing rights and limitations under the
@rem License.
@rem 
@rem The Initial Developer of the Original Code is blindtiger.
@rem 
@rem 

:CheckOS
@if exist "%PROGRAMFILES(X86)%" (goto AMD64) ELSE (goto i386)

:i386
@if "%1" == "x86" goto x86x86
@if "%1" == "x64" goto x86x64
@if "%1" == "" goto default
@goto done

:AMD64
@if "%1" == "x86" goto x64x86
@if "%1" == "x64" goto x64x64
@if "%1" == "" goto default
@goto done

:default
@echo no target specified.
@goto x86x86

:x86x86
@echo setting x86 environment for building x86 target
@set path=C:\Windows;C:\Windows\System32;%~dp0\Hostx86\x86
@goto done

:x86x64
@echo setting x86 environment for building x64 target
@set path=C:\Windows;C:\Windows\System32;%~dp0\Hostx86\x64
@goto done

:x64x86
@echo setting x64 environment for building x86 target
@set path=C:\Windows;C:\Windows\System32;%~dp0\Hostx64\x86
@goto done

:x64x64
@echo setting x64 environment for building x64 target
@set path=C:\Windows;C:\Windows\System32;%~dp0\Hostx64\x64
@goto done

:done
