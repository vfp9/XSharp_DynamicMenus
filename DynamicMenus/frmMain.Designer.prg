﻿//------------------------------------------------------------------------------
//  <auto-generated>
//     This code was generated by a tool.
//     Runtime version: 4.0.30319.42000
//     Generator      : XSharp.CodeDomProvider 2.20.0.3
//     Timestamp      : 2024/9/7 10:26:47
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
            Self:mnuMain:Location := System.Drawing.Point{0, 0}
            Self:mnuMain:Name := "mnuMain"
            Self:mnuMain:Size := System.Drawing.Size{1286, 32}
            Self:mnuMain:TabIndex := 1
            Self:mnuMain:Text := "menuStrip1"
            // 
            // mnuFile
            // 
            Self:mnuFile:DropDownItems:AddRange(<System.Windows.Forms.ToolStripItem>{ Self:mnuExit })
            Self:mnuFile:Name := "mnuFile"
            Self:mnuFile:Size := System.Drawing.Size{56, 28}
            Self:mnuFile:Text := "&File"
            // 
            // mnuExit
            // 
            Self:mnuExit:Name := "mnuExit"
            Self:mnuExit:Size := System.Drawing.Size{270, 34}
            Self:mnuExit:Tag := "Close the sample"
            Self:mnuExit:Text := "&Close"
            // 
            // mnuView
            // 
            Self:mnuView:DropDownItems:AddRange(<System.Windows.Forms.ToolStripItem>{ Self:mnuStatusBar })
            Self:mnuView:Name := "mnuView"
            Self:mnuView:Size := System.Drawing.Size{67, 28}
            Self:mnuView:Text := "&View"
            // 
            // mnuStatusBar
            // 
            Self:mnuStatusBar:Checked := true
            Self:mnuStatusBar:CheckState := System.Windows.Forms.CheckState.Checked
            Self:mnuStatusBar:Name := "mnuStatusBar"
            Self:mnuStatusBar:Size := System.Drawing.Size{270, 34}
            Self:mnuStatusBar:Text := "&Status bar"
            // 
            // sbrMain
            // 
            Self:sbrMain:ImageScalingSize := System.Drawing.Size{24, 24}
            Self:sbrMain:Items:AddRange(<System.Windows.Forms.ToolStripItem>{ Self:toolStripStatusLabel1 })
            Self:sbrMain:Location := System.Drawing.Point{0, 744}
            Self:sbrMain:Name := "sbrMain"
            Self:sbrMain:Size := System.Drawing.Size{1286, 31}
            Self:sbrMain:TabIndex := 2
            Self:sbrMain:Text := "statusStrip1"
            // 
            // toolStripStatusLabel1
            // 
            Self:toolStripStatusLabel1:Name := "toolStripStatusLabel1"
            Self:toolStripStatusLabel1:Size := System.Drawing.Size{50, 24}
            Self:toolStripStatusLabel1:Text := "        "
            // 
            // frmMain
            // 
            Self:AutoScaleDimensions := System.Drawing.SizeF{9, 18}
            Self:AutoScaleMode := System.Windows.Forms.AutoScaleMode.Font
            Self:ClientSize := System.Drawing.Size{1286, 775}
            Self:Controls:Add(Self:sbrMain)
            Self:Controls:Add(Self:mnuMain)
            Self:IsMdiContainer := true
            Self:MainMenuStrip := Self:mnuMain
            Self:Name := "frmMain"
            Self:Text := "Menu Sample - Main Window"
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
