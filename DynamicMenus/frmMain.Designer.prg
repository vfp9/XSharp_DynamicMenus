﻿//------------------------------------------------------------------------------
//  <auto-generated>
//     This code was generated by a tool.
//     Runtime version: 4.0.30319.42000
//     Generator      : XSharp.CodeDomProvider 2.20.0.3
//     Timestamp      : 2024/9/7 14:21:57
//     
//     Changes to this file may cause incorrect behavior and may be lost if
//     the code is regenerated.
//  </auto-generated>
//------------------------------------------------------------------------------
Begin Namespace DynamicMenus

    Public Partial Class frmMain

        /// <summary>
        /// Required designer variable.
        /// </summary>
        Private components := Null As System.ComponentModel.IContainer
        Private mnuMain As System.Windows.Forms.MenuStrip
        Private mnuFile As System.Windows.Forms.ToolStripMenuItem
        Private mnuExit As System.Windows.Forms.ToolStripMenuItem
        Private mnuView As System.Windows.Forms.ToolStripMenuItem
        Private mnuStatusBar As System.Windows.Forms.ToolStripMenuItem
        Private sbrMain As System.Windows.Forms.StatusStrip
        Private toolStripStatusLabel1 As System.Windows.Forms.ToolStripStatusLabel

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        Protected Override Method Dispose(disposing As Logic) As Void Strict

            If (disposing .and. (components != null))
                components:Dispose()
            Endif
            Super:Dispose(disposing)
			Return
        End Method
        #region Windows Form Designer generated Code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
                                                                                        Private Method InitializeComponent() As Void Strict
            Local resources := System.ComponentModel.ComponentResourceManager{Typeof(frmMain)} As System.ComponentModel.ComponentResourceManager
            Self:mnuMain := System.Windows.Forms.MenuStrip{}
            Self:mnuFile := System.Windows.Forms.ToolStripMenuItem{}
            Self:mnuExit := System.Windows.Forms.ToolStripMenuItem{}
            Self:mnuView := System.Windows.Forms.ToolStripMenuItem{}
            Self:mnuStatusBar := System.Windows.Forms.ToolStripMenuItem{}
            Self:sbrMain := System.Windows.Forms.StatusStrip{}
            Self:toolStripStatusLabel1 := System.Windows.Forms.ToolStripStatusLabel{}
            Self:mnuMain:SuspendLayout()
            Self:sbrMain:SuspendLayout()
            Self:SuspendLayout()
            // 
            // mnuMain
            // 
            Self:mnuMain:GripMargin := System.Windows.Forms.Padding{2, 2, 0, 2}
            Self:mnuMain:ImageScalingSize := System.Drawing.Size{24, 24}
            Self:mnuMain:Items:AddRange(<System.Windows.Forms.ToolStripItem>{ Self:mnuFile, Self:mnuView })
            resources:ApplyResources(Self:mnuMain, "mnuMain")
            Self:mnuMain:Name := "mnuMain"
            // 
            // mnuFile
            // 
            Self:mnuFile:DropDownItems:AddRange(<System.Windows.Forms.ToolStripItem>{ Self:mnuExit })
            Self:mnuFile:Name := "mnuFile"
            resources:ApplyResources(Self:mnuFile, "mnuFile")
            // 
            // mnuExit
            // 
            Self:mnuExit:Name := "mnuExit"
            resources:ApplyResources(Self:mnuExit, "mnuExit")
            Self:mnuExit:Tag := "Close the sample"
            // 
            // mnuView
            // 
            Self:mnuView:DropDownItems:AddRange(<System.Windows.Forms.ToolStripItem>{ Self:mnuStatusBar })
            Self:mnuView:Name := "mnuView"
            resources:ApplyResources(Self:mnuView, "mnuView")
            // 
            // mnuStatusBar
            // 
            Self:mnuStatusBar:Checked := true
            Self:mnuStatusBar:CheckState := System.Windows.Forms.CheckState.Checked
            Self:mnuStatusBar:Name := "mnuStatusBar"
            resources:ApplyResources(Self:mnuStatusBar, "mnuStatusBar")
            // 
            // sbrMain
            // 
            Self:sbrMain:ImageScalingSize := System.Drawing.Size{24, 24}
            Self:sbrMain:Items:AddRange(<System.Windows.Forms.ToolStripItem>{ Self:toolStripStatusLabel1 })
            resources:ApplyResources(Self:sbrMain, "sbrMain")
            Self:sbrMain:Name := "sbrMain"
            // 
            // toolStripStatusLabel1
            // 
            Self:toolStripStatusLabel1:Name := "toolStripStatusLabel1"
            resources:ApplyResources(Self:toolStripStatusLabel1, "toolStripStatusLabel1")
            // 
            // frmMain
            // 
            resources:ApplyResources(Self, "$this")
            Self:AutoScaleMode := System.Windows.Forms.AutoScaleMode.Font
            Self:Controls:Add(Self:sbrMain)
            Self:Controls:Add(Self:mnuMain)
            Self:IsMdiContainer := true
            Self:MainMenuStrip := Self:mnuMain
            Self:Name := "frmMain"
            Self:WindowState := System.Windows.Forms.FormWindowState.Maximized
            Self:Load += System.EventHandler{ Self, @frmMain_Load() }
            Self:mnuMain:ResumeLayout(false)
            Self:mnuMain:PerformLayout()
            Self:sbrMain:ResumeLayout(false)
            Self:sbrMain:PerformLayout()
            Self:ResumeLayout(false)
            Self:PerformLayout()
        End Method
        #endregion
    End Class 
End Namespace
