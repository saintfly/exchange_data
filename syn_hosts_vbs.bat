:: AD(vokins)：https://raw.githubusercontent.com/vokins/yhosts/master/hosts
:: play ： https://raw.githubusercontent.com/sy618/hosts/master/p
:: YouTube ： https://raw.githubusercontent.com/sy618/hosts/master/y
:: fq(racaljk)：https://raw.githubusercontent.com/racaljk/hosts/master/hosts
::


set CUR_PATH=%CD%
:: change to hosts directory
cd /d c:\Windows\System32\drivers\etc

:: use bash on ubuntu on win10 to run wget.
%CUR_PATH%\wget.vbs https://raw.githubusercontent.com/vokins/yhosts/master/hosts hosts_ad
%CUR_PATH%\wget.vbs https://raw.githubusercontent.com/sy618/hosts/master/p hosts_play
%CUR_PATH%\wget.vbs https://raw.githubusercontent.com/sy618/hosts/master/y hosts_youtube
%CUR_PATH%\wget.vbs https://raw.githubusercontent.com/racaljk/hosts/master/hosts hosts_fq

copy hosts_ad+hosts_play+hosts_youtube+hosts_fq hosts /y

:: refresh DNS
ipconfig /flushdns

:: back to original directory.
cd /d %CUR_PATH%

