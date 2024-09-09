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

    Public Partial Class frmMain ;
        Inherit System.Windows.Forms.Form

        Private _mnuDynamic     As ToolStripMenuItem
        Private _mnuSeparator   As ToolStripSeparator
        Private _mnuClear       As ToolStripMenuItem

		Internal Virtual Property mnuDynamic As ToolStripMenuItem
			Get
				Return _mnuDynamic
			End Get

			Set
				If _mnuDynamic != Null
                    _mnuDynamic.MouseHover -= Handle_MouseHover
                    _mnuDynamic.MouseLeave -= Handle_MouseLeave
				Endif

                _mnuDynamic = Value

                If _mnuDynamic != Null
                    _mnuDynamic.MouseHover += Handle_MouseHover
                    _mnuDynamic.MouseLeave += Handle_MouseLeave
				Endif
			End Set
		End Property

        Internal Virtual Property mnuSeparator As ToolStripSeparator
	        Get
		        Return _mnuSeparator
	        End Get

	        Set
		        If _mnuSeparator != Null
                    _mnuSeparator.MouseHover -= Handle_MouseHover
                    _mnuSeparator.MouseLeave -= Handle_MouseLeave
                Endif

                _mnuSeparator = Value

                If _mnuSeparator != Null
                    _mnuSeparator.MouseHover += Handle_MouseHover
                    _mnuSeparator.MouseLeave += Handle_MouseLeave
		        Endif
	        End Set
        End Property

		Internal Virtual Property mnuClear As ToolStripMenuItem
			Get
				Return _mnuClear
			End Get

			Set
				If _mnuClear != Null
                    _mnuClear.MouseHover -= Handle_MouseHover
                    _mnuClear.MouseLeave -= Handle_MouseLeave
                    _mnuClear:Click      -= mnuClear_Click
				Endif

                _mnuClear = Value

                If _mnuClear != Null
                    _mnuClear.MouseHover += Handle_MouseHover
                    _mnuClear.MouseLeave += Handle_MouseLeave
                    _mnuClear:Click      += mnuClear_Click
				Endif
			End Set
		End Property

        Constructor() Strict
            InitializeComponent()
            Return
        End Constructor

        Private Method frmMain_Load(sender As System.Object, e As System.EventArgs) As Void Strict
	        Local frmMenu As Form

	        frmMenu = frmMenuBuilder{}
	        frmMenu.MdiParent = This
	        frmMenu.Show()

            This.InitializeDynamicMenu()
            Return
        End Method

        Private Method InitializeDynamicMenu() As Void
            Local cultureName As String
            cultureName = Thread.CurrentThread.CurrentCulture.Name

            With This
                .mnuDynamic         = ToolStripMenuItem{}
	            .mnuSeparator       = ToolStripSeparator{}
                .mnuClear           = ToolStripMenuItem{}

                If cultureName  == "zh-CN"
                    .mnuDynamic.Text    = "动态菜单(&D)"
                    .mnuClear.Text      = "释放此菜单"
                Else
                    .mnuDynamic.Text    = "&Dynamic Items"
                    .mnuClear.Text      = "Release this Menu"
                End
            Endwith

            Return
        End Method

        Private Method Handle_MouseHover(sender As System.Object, e As System.EventArgs) As Void Strict
            Local loMenuItem = (ToolStripMenuItem)sender
            This.sbrMain.Items[0].Text = loMenuItem.Tag

            Return
        End Method

        Private Method Handle_MouseLeave(sender As System.Object, e As System.EventArgs) As Void Strict
            This.sbrMain.Items[0].Text = ""
            Return
        End Method

        Private Method HandleClick_DynamicItem(sender As System.Object, e As System.EventArgs) As Void Strict
            MessageBox(((ToolStripMenuItem)sender).Text, 64, This.Text)
            This.ClearStatusBarMessage()
            
            Return
        End Method

        Private Method mnuClear_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            With This
                .ReleaseMenu()
                .ClearStatusBarMessage()
                .InitializeDynamicMenu()
            Endwith

            Return
        End Method

        Private Method ClearStatusBarMessage() As Void Strict
            Return
        End Method

        Private Method ReleaseMenu() As Void
            Try
                For Var lnI = 0 To This.mnuDynamic.DropDownItems.Count
                    With This.mnuDynamic.DropDownItems
                        .Item[lnI].MouseHover -= Handle_MouseHover
                        .Item[lnI].MouseLeave -= Handle_MouseLeave


                        Try
                            .Item[lnI].Click -= HandleClick_DynamicItem
                        Catch
                            Nop
                        Endtry
                    Endwith
                Endfor
            Catch
                Nop
            Endtry
                        
            This.mnuMain.Items.Remove(This.mnuDynamic)

            Return
        End Method

        Private Method mnuExit_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            This.Close()
            Return
        End Method

        Private Method mnuStatusBar_Click(sender As System.Object, e As System.EventArgs) As Void Strict
	        Local showChecked As Logic
	        showChecked := !Self:mnuStatusBar:Checked

            With This
                .mnuStatusBar.Checked   = showChecked
                .sbrMain.Visible        = showChecked

                .ClearStatusBarMessage()
            Endwith

            Return
        End Method
        
        Public Method AddDynamicMenuItems(Items As ToolStripMenuItem[] ) As Void
	        This.ReleaseMenu()
            
            Foreach Item As ToolStripMenuItem In Items
                Item.MouseHover += Handle_MouseHover
                Item.MouseLeave += Handle_MouseLeave
                Item.Click      += HandleClick_DynamicItem
            Endfor
                
            With This.mnuDynamic.DropDownItems
                .AddRange(Items)
                .Add(This.mnuSeparator)
                .Add(This.mnuClear)
            Endwith 

            This.mnuMain.Items.Add(This.mnuDynamic)
        End Method
    End Class
End Namespace
