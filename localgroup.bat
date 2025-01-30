@echo off
Title Comando localGroup
@echo off
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo ::::::::                                                ::::::::
@echo ::::::::          Comando para localGroup               ::::::::
@echo ::::::::                                                ::::::::
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo ::                                                            ::
@echo ::                   Apasionado de las TICs                   ::
@echo ::            comando basico para cambiar usuarios            ::
@echo ::                       de localGroup                        ::
@echo ::             $author Ing._Cesar_Paulino.dll                 ::
@echo ::                                                            ::
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
@pause
@echo off
@echo Cambiando el grupo del usuario...

:: Reemplaza "NombreUsuario" con el nombre del usuario que deseas modificar
set "usuario=NombreUsuario"

:: Reemplaza "NombreGrupo" con el nombre del grupo al que deseas agregar al usuario
:: Grupo: Usuarios,
set "grupo=Administradores"

echo Agregando el usuario "%usuario%" al grupo "%grupo%"...
net localgroup "%grupo%" "%usuario%" /add

if %ERRORLEVEL% EQU 0 (
    echo ¡El usuario "%usuario%" ha sido agregado al grupo "%grupo%" correctamente!
) else (
    echo Hubo un error al agregar el usuario al grupo.
)

pause
