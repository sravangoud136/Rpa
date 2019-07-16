Dim ie
Set x=CreateObject("Wscript.shell")
Set ie=CreateObject("InternetExplorer.Application")

ie.Navigate"www.google.com"
ie.visible=1
x.sendkeys"sravan"
x.sendkeys"{ENTER}"
