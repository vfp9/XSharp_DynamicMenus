﻿//------------------------------------------------------------------------------
//  <auto-generated>
//     This code was generated by a tool.
//     Runtime version: 4.0.30319.42000
//     Generator      : XSharp.CodeDomProvider 2.20.0.3
//     Timestamp      : 2024/9/7 5:07:33
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
            Self:SuspendLayout()
            // 
            // frmMenuBuilder
            // 
            Self:AutoScaleDimensions := System.Drawing.SizeF{9, 18}
            Self:AutoScaleMode := System.Windows.Forms.AutoScaleMode.Font
            Self:ClientSize := System.Drawing.Size{858, 568}
            Self:Name := "frmMenuBuilder"
            Self:Text := "frmMenuBuilder"
            Self:ResumeLayout(false)
        End Method
        #endregion
    End Class 
End Namespace
