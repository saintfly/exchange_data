on error resume next
iLocal=LCase(Wscript.Arguments(1))
iRemote=LCase(Wscript.Arguments(0))
iUser=LCase(Wscript.Arguments(2))
iPass=LCase(Wscript.Arguments(3))
set xPost=CreateObject("Microsoft.XMLHTTP")
if iUser="" and iPass="" then
xPost.Open "GET",iRemote,0
else
xPost.Open "GET",iRemote,0,iUser,iPass
end if
xPost.Send()
set sGet=CreateObject("ADODB.Stream")
sGet.Mode=3
sGet.Type=1
sGet.Open()
sGet.Write xPost.ResponseBody
sGet.SaveToFile iLocal,2
