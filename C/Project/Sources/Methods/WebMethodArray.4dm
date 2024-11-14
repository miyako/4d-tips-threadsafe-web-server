//%attributes = {"invisible":true,"publishedWeb":true,"preemptive":"capable"}
C_TEXT:C284($1)
C_TEXT:C284($jsonString)
C_BLOB:C604($blob)

$pCountry:=Table:C252(4)
$pCountryName:=Field:C253(4; 2)

ALL RECORDS:C47($pCountry->)
ORDER BY:C49($pCountry->; $pCountryName->; >)

$jsonString:=Selection to JSON:C1234($pCountry->)
CONVERT FROM TEXT:C1011($jsonString; "UTF-8"; $blob)
WEB SEND RAW DATA:C815($blob)