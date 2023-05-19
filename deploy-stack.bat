set %Instance-Name="Ubuntu"
set %Accountid=094375575646
aws cloudformation deploy --stack-name UbuntuServer20 --template-file main.yml --parameter-overrides "Instance-Name=%Instance-name%"

if %ERRORLEVEL% neq 0 (
   echo Se han producido errores al crear la pila
) else (
    aws cloudformation list-exports --query "Exports[?Name=='ServerPublicIp'].Value"
)
