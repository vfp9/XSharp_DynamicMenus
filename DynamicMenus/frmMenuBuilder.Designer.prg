﻿//------------------------------------------------------------------------------
//  <auto-generated>
//     This code was generated by a tool.
//     Runtime version: 4.0.30319.42000
//     Generator      : XSharp.CodeDomProvider 2.20.0.3
//     Timestamp      : 2024/9/7 14:22:04
//     
//     Changes to this file may cause incorrect behavior and may be lost if
//     the code is regenerated.
//  </auto-generated>
//------------------------------------------------------------------------------
Begin Namespace DynamicMenus

    Public Partial Class frmMenuBuilder

        /// <summary>
        /// Required designer variable.
        /// </summary>
        Private components := Null As System.ComponentModel.IContainer
        Private grpInstructions As System.Windows.Forms.GroupBox
        Private label1 As System.Windows.Forms.Label
        Private label2 As System.Windows.Forms.Label
        Private label3 As System.Windows.Forms.Label
        Private textBox1 As System.Windows.Forms.TextBox
        Private textBox2 As System.Windows.Forms.TextBox
        Private listItems As System.Windows.Forms.ListBox
        Private cmdAdd As System.Windows.Forms.Button
        Private cmdRemove As System.Windows.Forms.Button
        Private cmdRefresh As System.Windows.Forms.Button
        Private cmdClose As System.Windows.Forms.Button

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
            Local resources := System.ComponentModel.ComponentResourceManager{Typeof(frmMenuBuilder)} As System.ComponentModel.ComponentResourceManager
            Self:grpInstructions := System.Windows.Forms.GroupBox{}
            Self:label1 := System.Windows.Forms.Label{}
            Self:label2 := System.Windows.Forms.Label{}
            Self:label3 := System.Windows.Forms.Label{}
            Self:textBox1 := System.Windows.Forms.TextBox{}
            Self:textBox2 := System.Windows.Forms.TextBox{}
            Self:listItems := System.Windows.Forms.ListBox{}
            Self:cmdAdd := System.Windows.Forms.Button{}
            Self:cmdRemove := System.Windows.Forms.Button{}
            Self:cmdRefresh := System.Windows.Forms.Button{}
            Self:cmdClose := System.Windows.Forms.Button{}
            Self:grpInstructions:SuspendLayout()
            Self:SuspendLayout()
            // 
            // grpInstructions
            // 
            Self:grpInstructions:Controls:Add(Self:label1)
            resources:ApplyResources(Self:grpInstructions, "grpInstructions")
            Self:grpInstructions:Name := "grpInstructions"
            Self:grpInstructions:TabStop := false
            // 
            // label1
            // 
            resources:ApplyResources(Self:label1, "label1")
            Self:label1:Name := "label1"
            // 
            // label2
            // 
            resources:ApplyResources(Self:label2, "label2")
            Self:label2:Name := "label2"
            // 
            // label3
            // 
            resources:ApplyResources(Self:label3, "label3")
            Self:label3:Name := "label3"
            // 
            // textBox1
            // 
            resources:ApplyResources(Self:textBox1, "textBox1")
            Self:textBox1:Name := "textBox1"
            // 
            // textBox2
            // 
            resources:ApplyResources(Self:textBox2, "textBox2")
            Self:textBox2:Name := "textBox2"
            // 
            // listItems
            // 
            Self:listItems:FormattingEnabled := true
            resources:ApplyResources(Self:listItems, "listItems")
            Self:listItems:Name := "listItems"
            // 
            // cmdAdd
            // 
            resources:ApplyResources(Self:cmdAdd, "cmdAdd")
            Self:cmdAdd:Name := "cmdAdd"
            Self:cmdAdd:UseVisualStyleBackColor := true
            // 
            // cmdRemove
            // 
            resources:ApplyResources(Self:cmdRemove, "cmdRemove")
            Self:cmdRemove:Name := "cmdRemove"
            Self:cmdRemove:UseVisualStyleBackColor := true
            // 
            // cmdRefresh
            // 
            resources:ApplyResources(Self:cmdRefresh, "cmdRefresh")
            Self:cmdRefresh:Name := "cmdRefresh"
            Self:cmdRefresh:UseVisualStyleBackColor := true
            // 
            // cmdClose
            // 
            resources:ApplyResources(Self:cmdClose, "cmdClose")
            Self:cmdClose:Name := "cmdClose"
            Self:cmdClose:UseVisualStyleBackColor := true
            // 
            // frmMenuBuilder
            // 
            resources:ApplyResources(Self, "$this")
            Self:AutoScaleMode := System.Windows.Forms.AutoScaleMode.Font
            Self:Controls:Add(Self:cmdClose)
            Self:Controls:Add(Self:cmdRefresh)
            Self:Controls:Add(Self:cmdRemove)
            Self:Controls:Add(Self:cmdAdd)
            Self:Controls:Add(Self:listItems)
            Self:Controls:Add(Self:textBox2)
            Self:Controls:Add(Self:textBox1)
            Self:Controls:Add(Self:label3)
            Self:Controls:Add(Self:label2)
            Self:Controls:Add(Self:grpInstructions)
            Self:Name := "frmMenuBuilder"
            Self:grpInstructions:ResumeLayout(false)
            Self:ResumeLayout(false)
            Self:PerformLayout()
        End Method
        #endregion
    End Class 
End Namespace
