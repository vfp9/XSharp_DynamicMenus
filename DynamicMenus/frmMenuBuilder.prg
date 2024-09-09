Using System
Using System.Collections.Generic
Using System.ComponentModel
Using System.Data
Using System.Drawing

Using System.Text

Using System.Windows.Forms

Using System.IO
Using System.Threading
Using System.Threading.Tasks

Begin Namespace DynamicMenus

    Public Partial Class frmMenuBuilder ;
        Inherit System.Windows.Forms.Form

        Private _oToolStripMenuItem As ToolStripMenuItem
        
        Internal Virtual Property oToolStripMenuItem As ToolStripMenuItem
			Get
				Return _oToolStripMenuItem
            End Get
            
            Set
                _oToolStripMenuItem = Value
            End Set            
		End Property  


            
        Public Constructor() Strict
            oToolStripMenuItem = ToolStripMenuItem{}
            InitializeComponent()
            Return
        End Constructor
        
        Private Method cmdClose_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            This.MdiParent.Close()
            Return
        End Method
        
        Private Method cmdAdd_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            This.AddItem()
            Return
        End Method
        
        Private Method AddItem() As Void Strict
	        Local mnu As ToolStripMenuItem

            If !Empty(This.txtPrompt.Text)
                mnu = ToolStripMenuItem{}
                mnu.Text    = This.txtPrompt.Text
                mnu.Tag     = This.txtMessage.Text
                
                This.oToolStripMenuItem.DropDownItems.Add(mnu)
                
                This.listItems.Items.Add(This.txtPrompt.Text)
                
                This.txtPrompt.Text     = ""
                This.txtMessage.Text    = ""
                
            Else
                Local cultureName As String
                cultureName = Thread.CurrentThread.CurrentCulture.Name
                
                If cultureName  == "zh-CN"
                    Messagebox("请键入需要动态添加的菜单项！", 16, "添加菜单项")
                    
                Else
                    Messagebox("Please enter a menu prompt for your dynamic menu item.", 16, "Add Item")
                Endif
            Endif

            Return
        End Method
        
        Private Method cmdRemove_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            This.RemoveItem()
            Return
        End Method
        
        Private Method RemoveItem() As Void Strict
            Try
                This.listItems.Items.Remove(This.listItems.SelectedItem)
                This.listItems.SelectedIndex = 0
            Catch
                Nop
            Endtry
                
            Return
        End Method
        
        Private Method RebuildMenu() As Void Strict
            Begin Checked 
                Local bound As Int, menuItems As ToolStripMenuItem[], lnCount As Int
                bound       = This.listItems.Items.Count - 1
                menuItems   = ToolStripMenuItem[]{ bound + 1 }
                lnCount     = This.listItems.Items.Count
            
                This.oToolStripMenuItem.DropDownItems.CopyTo(menuItems, 0)
         
                ((frmMain)ParentForm).AddDynamicMenuItems(menuItems)
 
                This.listItems.Items.Clear()
                
                oToolStripMenuItem = ToolStripMenuItem{}
            End Checked
            
            Return
        End Method
        
        Private Method cmdRefresh_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            With This
                .RebuildMenu()
                .txtPrompt.Focus()
            Endwith
            Return
        End Method
    End Class 
End Namespace
