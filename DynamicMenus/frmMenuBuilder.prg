Using System
Using System.Collections.Generic
Using System.ComponentModel
Using System.Data
Using System.Drawing

Using System.Text

Using System.Windows.Forms

Begin Namespace DynamicMenus

    Public Partial Class frmMenuBuilder ;
        Inherit System.Windows.Forms.Form

        public constructor() strict
            InitializeComponent()
            return
        end constructor
        
        Private Method cmdClose_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            This.MdiParent.Close()
            Return
        END METHOD
    End Class 
End Namespace
