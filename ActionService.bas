Type=Service
Version=3.82
B4A=true
@EndOfDesignText@
#Region  Service Attributes 
	#StartAtBoot: False
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub
Sub Service_Create

End Sub

Sub Service_Start (StartingIntent As Intent)

	Dim intentExtra As String
	Log("Service Started")
	If StartingIntent.HasExtra("Notification_Action_Tag") Then
		Log("Extra Found")
		intentExtra = StartingIntent.GetExtra("Notification_Action_Tag")
		ToastMessageShow(intentExtra, False)
	End If
	
	Log(StartingIntent.ExtrasToString)
	StopService("")
End Sub

Sub Service_Destroy

End Sub
