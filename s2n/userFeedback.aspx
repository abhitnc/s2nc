<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="userFeedback.aspx.cs" Inherits="userFeedback" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container">
                        <div class="col-md-6">
                            <div class="single_abouts_text wow slideInRight" data-wow-duration="1s">
                                <h4>Feedback form</h4>
                                <h3 style="font-size:28px">Share your thought about food <i class="fa fa-heart"></i></h3>
                                
                                    <asp:Label ID="timestamp" runat="server" Text="Label" Visible="false"></asp:Label>
                                    <div class="form-group">
                                                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:TextBox ID="feedback" runat="server" Width="550px" Height="250px" />
    <asp:HtmlEditorExtender ID="HtmlEditorExtender1" runat="server" TargetControlID="feedback">
    </asp:HtmlEditorExtender>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your message here" Display="Dynamic" ControlToValidate="feedback"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:Button Text="View Text" class="btn btn-primary" runat="server" OnClick="Submit" />
                                        <br />
                                        <asp:Label ID="lblContents" runat="server" />
                                        </div>
                                    <!--
                                    <div class="form-group">
                                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
                                        
                                        </div> -->
                                    <div class="form-group">
                                                <asp:Button OnClick="Fb_submit_Click" runat="server" class="btn btn-primary" ID="fb_submit" Text="Submit" ToolTip="Click on submit to share your thought" />
                                    </div>
                                
                                </div>
                        </div>
                    </div>
                </div>
            </div>
       
</asp:Content>

