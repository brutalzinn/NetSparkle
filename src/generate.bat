@echo off
if exist "NetSparkle.Tools.DSAHelper/netcoreapp3.0/NetSparkle.DSAHelper.exe" (
    "NetSparkle.Tools.DSAHelper/netcoreapp3.0/NetSparkle.DSAHelper.exe" /sign_update "appcast.xml" NetSparkle_DSA.priv > appcast.xml.dsa
	echo appcast.xml.dsa generated
) else (
	if exist "NetSparkle.Tools.DSAHelper/netcoreapp3.0/NetSparkle.DSAHelper.exe" (
		"NetSparkle.Tools.DSAHelper/netcoreapp3.0/NetSparkle.DSAHelper.exe" /sign_update "appcast.xml" NetSparkle_DSA.priv > appcast.xml.dsa
		echo appcast.xml.dsa generated
	) else (
		echo Error: cannot find NetSparkle.DSAHelper.exe
	)
)

PAUSE