Type=Activity
Version=3.82
B4A=true
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: True
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	'Activity.LoadLayout("Layout1")
Activity.Title = "NoteParent"
End Sub

Sub Activity_Resume
	Dim In As Intent
	Dim intentExtra As String
	
	In = Activity.GetStartingIntent
	Log(In.ExtrasToString)
	If In.HasExtra("Notification_Tag") Then
		intentExtra = In.GetExtra("Notification_Tag")
		ToastMessageShow(intentExtra, False)
	End If

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


