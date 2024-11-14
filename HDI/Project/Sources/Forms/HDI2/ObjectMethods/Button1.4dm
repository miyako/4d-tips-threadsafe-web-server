$C:=cs:C1710.C.Web.new().Server

If (Not:C34($C.isRunning))
	$C.start({HTTPPort: 82; HTTPSEnabled: False:C215})
End if 

OPEN URL:C673("http://127.0.0.1:82/test.html")