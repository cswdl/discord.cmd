
Set objFSO = CreateObject("Scripting.FileSystemObject")
dim CurrentDirectory
CurrentDirectory = objFSO.GetAbsolutePathName(".")
Set objFile = objFSO.OpenTextFile(CurrentDirectory & "/token", 1)
strText = objFile.ReadAll
objFile.Close
dim taDesBeauYeux
taDesBeauYeux = ""
Set objArgs = Wscript.Arguments
WScript.Echo objArgs.Count
For Each strArg in objArgs
  taDesBeauYeux = taDesBeauYeux & " " & strArg
Next
HTTPPost "https://discordapp.com/api/v6/channels/"&Split(taDesBeauYeux, ",")(0)&"/messages/"&Split(taDesBeauYeux, ",")(1), sRespond
Function HTTPPost(sUrl, sRespond)
  Set objXmlHttp = CreateObject("Msxml2.ServerXMLHTTP") 
  on error resume next 
  objXmlHttp.open "GET",sUrl, False 
  objXmlHttp.setRequestHeader "Authorization", "Bot "&strText
  objXmlHttp.setRequestHeader "Content-Type", "application/json"
  objXmlHttp.send
  HTTPPoSst = objXmlHttp.responseText
 End Function
