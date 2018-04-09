Set objFSO = CreateObject("Scripting.FileSystemObject")

Set objFile = objFSO.OpenTextFile("config", 1)
strText = objFile.ReadAll
objFile.Close
strNewText = Replace(strText, "token=", "")
sRespond = "{""content"":"""&Split(WScript.Arguments, ">,;;,<")(0)&"""}"
HTTPPost "https://discordapp.com/api/v6/channels/"&Split(WScript.Arguments, ">,;;,<")(1)&"/messages", sRespond
Function HTTPPost(sUrl, sRespond)
  Set objXmlHttp = CreateObject("Msxml2.ServerXMLHTTP") 
  on error resume next 
  objXmlHttp.open "POST",sUrl, False 
  objXmlHttp.setRequestHeader "Authorization", "Bot "&strNewText
  objXmlHttp.setRequestHeader "Content-Type", "application/json"
  objXmlHttp.send sRespond
  HTTPPoSst = objXmlHttp.responseText
 End Function
