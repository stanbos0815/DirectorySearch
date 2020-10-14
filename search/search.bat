CHCP 1252
SETLOCAL ENABLEDELAYEDEXPANSION
echo off
set dir="none"
set isfound=false
set notFoundCounter=0
set runs=0
set foundCounter=0
echo ^<h3^>FOUND DATA^</h3^> > found.html
echo ^<h3^>NOT FOUND DATA^</h3^> > notFound.html

for /f "eol=; tokens=*" %%a in (input.txt) do (
  set /A runs=runs+1
  set isFound=false
  for /f "delims=" %%? in ('DIR /s/b "*%%a*"') do (
    echo %%a -exists in %%?
    set /A foundCounter=foundCounter+1
    set outPut=^<p^>%%a -exists in: ^<br^> ^<a href^="file:///%%?"^>%%?^</a^>^</p^>
    echo !outPut!>>found.html
    set isFound=true
  )
  
  IF !isFound!==false (
    echo %%a -does NOT exist
    set /A notFoundCounter=notFoundCounter+1
    set outPut=^<p^>%%a -does NOT exist^</p^>
    echo !outPut!>>notFound.html
    echo ------------------------------------------------------
  ) else (
    echo ------------------------------------------------------
  )
  



)
echo ---------------------------------------------------------------------------
echo ^| WARNING RUNNING THIS SCRIPT AGAIN WHIPES ALL DATA IN FOUND AND NOTFOUND ^|
echo ---------------------------------------------------------------------------
echo ------------------------------------
echo ^| inputs:!runs! notFound:!notFoundCounter! found:!foundCounter!  ^|
echo ------------------------------------
set link1=^<a href^="found.html"^>found data^</a^>
set link2=^<a href^="notFound.html"^>not found data^</a^>
set stats=^<h3^>Searchstats^</h3^>
echo !stats!>>found.html
echo ^<p^>input: !runs! / found: !foundCounter! / not found: !notFoundCounter!^</p^>>>found.html
echo !stats!>>notFound.html
echo ^<p^>input: !runs! / found: !foundCounter! / not found: !notFoundCounter!^</p^>>>notFound.html
echo !link1!>>notFound.html
echo !link2!>>found.html
pause

