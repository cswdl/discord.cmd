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
sRespond = "{""content"":"""&Right(kiwi,Len(kiwi) - 1)&"""}"
HTTPPost "https://discordapp.com/api/v6/channels/"&Split(taDesBeauYeux, ", ")(1)&"/messages", sRespond
Function HTTPPost(sUrl, sRespond)
  Set objXmlHttp = CreateObject("Msxml2.ServerXMLHTTP") 
  on error resume next 
  objXmlHttp.open "POST",sUrl, False 
  objXmlHttp.setRequestHeader "Authorization", "Bot "&strText
  objXmlHttp.setRequestHeader "Content-Type", "application/json"
  objXmlHttp.send sRespond
  HTTPPoSst = objXmlHttp.responseText
 End Function
