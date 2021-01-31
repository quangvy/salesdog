<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Admin_Result" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
   <meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
<div class="main-content">
<rsweb:ReportViewer ID="ReportViewer1" runat="server" ProcessingMode="Local" Width="100%" Height="800px" ShowPrintButton="true" ShowExportControls="true" ShowToolBar="true" AsyncRendering="False">
  <ServerReport ReportPath="" ReportServerUrl="" />
        <LocalReport ReportPath="App_Code\Report.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="type" />
            </DataSources>
        </LocalReport>
</rsweb:ReportViewer>
    </div>
    <div class="clear-fix" />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quizConnectionString %>" SelectCommand="SELECT [email], [name], [phone], [position], [BH], [CH], [PD], [GR], [PB], [lastupdated] FROM [quiz_responses] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="responseId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>

