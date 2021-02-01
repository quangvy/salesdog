<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="viewresponses.aspx.cs" Inherits="Admin_viewresponses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:HiddenField ID="quizfield" runat="server" />
    <asp:Label ID="lblmessage" runat="server" ForeColor="#ff0000" Visible="false" /><br />
    <div id="responsesdiv" runat="server">
        <h2>Available Responses</h2>
        <br />
        <br />
        <asp:Repeater ID="responsesrpt" runat="server">
            <HeaderTemplate>
                <table style="width: 100%">
                    <tr style="background-color: Gray; color: White;">
                        <td style="height: 25px; padding-left: 10px; font-weight: bold;">Name</td>
                        <td style="height: 25px; padding-left: 10px; font-weight: bold;">Email</td>
                        <td style="height: 25px; padding-left: 10px; font-weight: bold;">Phone</td>
                        <td style="height: 25px; padding-left: 10px; font-weight: bold;">PB</td>
                        <td style="height: 25px; padding-left: 10px; font-weight: bold;">GR</td>
                        <td style="height: 25px; padding-left: 10px; font-weight: bold;">PD</td>
                        <td style="height: 25px; padding-left: 10px; font-weight: bold;">CH</td>
                        <td style="height: 25px; padding-left: 10px; font-weight: bold;">BH</td>
                        <td style="height: 25px; padding-left: 10px; font-weight: bold;">Date</td>
                        <td style="height: 25px; padding-left: 10px; font-weight: bold;">View Report</td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr style="background-color: #ffffff;">
                    <td style="height: 25px; padding-left: 10px;">
                        <asp:Label ID="lblsalonname" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "name")%>' Font-Bold="true"></asp:Label>
                    </td>
                    <td style="height: 25px; padding-left: 10px;">
                        <asp:Label ID="lblemail" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "email")%>' Font-Bold="true"></asp:Label>
                    </td>
                    <td style="height: 25px; padding-left: 10px;">
                        <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "phone")%>' Font-Bold="true"></asp:Label>
                    </td>
                    <td style="height: 25px; padding-left: 10px;">
                        <asp:Label ID="lblq1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "PB")%>' ForeColor="Green" Font-Bold="true"></asp:Label>
                    </td>
                    <td style="height: 25px; padding-left: 10px;">
                        <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "GR")%>' ForeColor="Green" Font-Bold="true"></asp:Label>
                    </td>
                    <td style="height: 25px; padding-left: 10px;">
                        <asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "PD")%>' ForeColor="Green" Font-Bold="true"></asp:Label>
                    </td>
                    <td style="height: 25px; padding-left: 10px;">
                        <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "CH")%>' ForeColor="Green" Font-Bold="true"></asp:Label>
                    </td>
                    <td style="height: 25px; padding-left: 10px;">
                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "BH")%>' ForeColor="Green" Font-Bold="true"></asp:Label>
                    </td>
                    <td style="height: 25px; padding-left: 10px;">
                        <asp:Label ID="Label7" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "lastupdated","{0:dd-MMM-yy}")%>' ForeColor="Green" Font-Bold="true"></asp:Label>
                    </td>
                    <td style="height: 25px; padding-left: 10px;">
                        <asp:LinkButton ID="btnReport" PostBackUrl='<%#"~/Admin/TestResult.aspx?responseid=" + Eval("id")%>' runat="server" Text="View report" />
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>        
    </div>
    <div style="clear: both"></div>
    <div id="exportdiv" runat="server">
        <br />
        <hr />
        <br />
        <h4>Export the result</h4>
        <br />
        <b>Select Type</b>&nbsp;&nbsp;<asp:DropDownList ID="fileexporttype" runat="server">
            <asp:ListItem Selected="True">Excel</asp:ListItem>            
            <asp:ListItem>Word</asp:ListItem>
            <asp:ListItem>PDF</asp:ListItem>
        </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="exportbutton" runat="server" Text="Export" OnClick="exportbutton_click" Width="100px" Height="25px" CausesValidation="false" /><br />
        <br />
    </div>
</asp:Content>

