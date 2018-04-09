sRespond = "{""content"":"""&WScript.Arguments(0)&"""}"
HTTPPost "https://discordapp.com/api/v6/channels/"&WScript.Arguments(2)&"/messages", sRespond
Function HTTPPost(sUrl, sRespond)
  Set objXmlHttp = CreateObject("Msxml2.ServerXMLHTTP") 
  on error resume next 
  objXmlHttp.open "POST",sUrl, False 
  objXmlHttp.setRequestHeader "Authorization", "Bot "&WScript.Arguments(1)
  objXmlHttp.setRequestHeader "Content-Type", "application/json"
  objXmlHttp.send sRespond
  HTTPPoSst = objXmlHttp.responseText
 End Function
