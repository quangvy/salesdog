<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestResult.aspx.cs" Inherits="Admin_TestResult" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scrpit" runat="server" />
        <div class="main-content">
            <rsweb:reportviewer id="ReportViewer1" runat="server" processingmode="Local" width="100%" height="800px" showprintbutton="true" showexportcontrols="true" showtoolbar="true" asyncrendering="False">
  <ServerReport ReportPath="" ReportServerUrl="" />
        <LocalReport ReportPath="App_Code\Report.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
</rsweb:reportviewer>
        </div>
        <div class="clear-fix" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quizConnectionString %>" SelectCommand="SELECT [email], [name], [Fname], [phone], [position], [BH], [CH], [PD], [GR], [PB], [lastupdated] FROM [quiz_responses] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="responseId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
