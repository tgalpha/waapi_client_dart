@echo off
setlocal EnableExtensions DisableDelayedExpansion
pushd .

:: script is at proj_root/ci/
set myProjRoot=%~dp0..
cd /d %myProjRoot%

if NOT EXIST build (
    mkdir build
)


echo building waapi_client_dart_example
call fvm dart compile exe example/waapi_client_dart_example.dart -o build/waapi_client_dart_example.exe
set result=%errorlevel%
if NOT %result% == 0 (
	goto :fail
)

echo building post_event_repeatly
call fvm dart compile exe example/post_event_repeatly.dart -o build/post_event_repeatly.exe
set result=%errorlevel%
if NOT %result% == 0 (
	goto :fail
)

echo ** SUCCEEDED **

goto :success
:fail
echo ** FAILED **
:success
popd
exit /b %result%