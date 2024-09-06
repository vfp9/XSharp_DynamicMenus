Using System
Using System.Collections.Generic
Using System.ComponentModel
Using System.Data
Using System.Drawing

Using System.Text

Using System.Windows.Forms

Begin Namespace DynamicMenus

    Public Partial Class frmMain ;
        Inherit System.Windows.Forms.Form

        Public Constructor() Strict
            InitializeComponent()
            Return
        End Constructor
        
        Private Method frmMain_Load(sender As System.Object, e As System.EventArgs) As Void Strict
	        Local frmMenu As Form

	        frmMenu = frmMenuBuilder{}
	        frmMenu.MdiParent := This
	        frmMenu:Show()
	        *!* This.InitializeDynamicMenu()
            Return
        End Method
        
    End Class 
End Namespace
