$P:=cs:C1710.P.Web.new().Server

If (Not:C34($P.isRunning))
	$P.start({HTTPPort: 81; HTTPSEnabled: False:C215})
End if 

OPEN URL:C673("http://127.0.0.1:81/test.html")