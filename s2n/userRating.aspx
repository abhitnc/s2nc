<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="userRating.aspx.cs" Inherits="userRating" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="col-md-6">
                            <div class="single_abouts_text wow slideInRight" data-wow-duration="1s">
                                <h4>Rating form</h4>
                                <h3 style="font-size:28px">Rate the food and management<i class="fa fa-heart"></i></h3>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ForeColor="Red" ID="selectedfood" runat="server" Text="[Buyed food]"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5 style="text-decoration:none"><asp:Label ID="q1" runat="server" Text="Q1. Rate the food"></asp:Label></h5>
                                            <asp:RadioButtonList ToolTip="Rate ot of 5" RepeatDirection="Horizontal" ID="RadioButtonList1" runat="server">
                                        <asp:ListItem >1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator runat="server" ErrorMessage="This question is compulsory" ID="q1s" ControlToValidate="RadioButtonList1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </td>
                                    </tr>
                                   
                                    <tr>
                                        <td>
                                          <h5><asp:Label ID="q2" runat="server" Text="Q2. Rate the staff"></asp:Label></h5>
                                            <asp:RadioButtonList ToolTip="Rate ot of 5" RepeatDirection="Horizontal" ID="RadioButtonList3" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator runat="server" ErrorMessage="This question is compulsory" ID="RequiredFieldValidator1" ControlToValidate="RadioButtonList3" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5><asp:Label ID="q3" runat="server" Text="Q3. Rate the Cleaning here"></asp:Label></h5>
                                            <asp:RadioButtonList ToolTip="Rate ot of 5" RepeatDirection="Horizontal" ID="RadioButtonList4" runat="server">
                                        <asp:ListItem >1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator runat="server" ErrorMessage="This question is compulsory" ID="RequiredFieldValidator2" ControlToValidate="RadioButtonList4" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5><asp:Label ID="q4" runat="server" Text="Q4. Rate the Website"></asp:Label></h5>
                                          <asp:RadioButtonList ToolTip="Rate ot of 5" RepeatDirection="Horizontal" ID="RadioButtonList5" runat="server">
                                        <asp:ListItem >1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator runat="server" ErrorMessage="This question is compulsory" ID="RequiredFieldValidator3" ControlToValidate="RadioButtonList5" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>
                                            <h5><asp:Label ID="fbo" runat="server" Text="Q5. Give some Comment (Optional)"></asp:Label></h5>
                                       
                                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:TextBox ID="feedback" runat="server" Width="300px" Height="150px" />
    <asp:HtmlEditorExtender ID="HtmlEditorExtender1" runat="server" TargetControlID="feedback">
    </asp:HtmlEditorExtender>
                                        </td>
                                    </tr>
                                     <tr>
                                         <td>
                                             <asp:ValidationSummary ID="abhi1" ForeColor = "Red" ShowMessageBox="true" runat="server" ShowSummary="false" />
                                             <asp:Button OnClick="Fb_submit_Click" runat="server" class="btn btn-primary" ID="fb_submit" Text="Submit" ToolTip="Click on submit to share your thought" />
                                         </td>
                                     </tr>
                                </table>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
   <asp:Label ID="timestamp" runat="server" Text="Label" Visible="false"></asp:Label>                                 
</asp:Content>

