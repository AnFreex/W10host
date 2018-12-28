echo off
color c
echo Programme cree Romain HAUDRY.
echo Utilitaire de reseau heberge en cours de lancement
echo Merci de patienter !
echo Attention l'utilitaire doit etre lance en admin !
timeout /nobreak 2
SET nom=
SET /p nom=Entrer la ssid souhaite : 
SET mdp=
echo Le mot de passe doit faire entre 8 et 32 caracteres !
SET /p mdp=Entrer le mot de passe souhaite : 
cls
echo Voici le nom : [%nom%]
echo Voici le mot de passe : [%mdp%]
Pause
cls
netsh wlan set hostednetwork mode=allow ssid=%nom% key=%mdp%
echo Reseau configure avec succees !
timeout /nobreak 2
echo Lancement du reseau ...
netsh wlan start hostednetwork
pause
