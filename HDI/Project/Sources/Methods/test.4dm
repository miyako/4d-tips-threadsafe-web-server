//%attributes = {"invisible":true,"preemptive":"capable"}
$P:=cs:C1710.P.Web.new().Server
$C:=cs:C1710.C.Web.new().Server

$servers:=WEB Server list:C1716

If (Not:C34($P.isRunning))
	$P.start({HTTPPort: 81; HTTPSEnabled: False:C215})
End if 

OPEN URL:C673("http://127.0.0.1:81/test.html")

If (Not:C34($C.isRunning))
	$C.start({HTTPPort: 82; HTTPSEnabled: False:C215})
End if 

OPEN URL:C673("http://127.0.0.1:82/test.html")