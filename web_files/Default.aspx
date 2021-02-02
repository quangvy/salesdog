<%@ Page Title="Khảo sát" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="headerContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Label ID="lblmessage" runat="server" ForeColor="#ff0000" Visible="false" /><br />
    <asp:HiddenField ID="quizfield" runat="server" />
    <!-- quiz details -->
    <div id="quizdetails" runat="server">
        <!-- quiz title -->
        <asp:Label ID="lblquizname" runat="server" CssClass="quizname" />
        <br />
        <br />

        <!-- description -->
        <asp:Label ID="lbldescription" runat="server" CssClass="quizdesc" />
        <br />
        <br />
    </div>
    <div style="clear: both"></div>
    <!-- quiz questions -->
    <div id="quiz">

        <asp:Label ID="lblalert" runat="server" ForeColor="Red" Font-Size="15px" Visible="false" /><br />
        <!-- questions -->
        <div id="questionsdiv" runat="server">
            <asp:Repeater ID="questionsrpt" runat="server" OnItemDataBound="questionsrpt_ItemDataBound">
                <ItemTemplate>
                    <asp:HiddenField ID="hfID" runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "id")%>' Visible="false" />
                    <asp:RequiredFieldValidator ID="rfvquiz" runat="server" Display="Dynamic" ControlToValidate="rbloptions" ValidationGroup="quizvalidation" ForeColor="Red" Text="*" SetFocusOnError="true" />&nbsp;<asp:Label ID="lblquestion" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "title")%>' /><br />
                    <asp:RadioButtonList ID="rbloptions" runat="server" ValidationGroup="quizvalidation" />
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <asp:ValidationSummary ID="quizvalidationsummary" runat="server" ShowMessageBox="false" DisplayMode="BulletList" ShowSummary="true" HeaderText="<br />&nbsp;&nbsp;Vui lòng kiểm tra:-" ForeColor="Red" ValidationGroup="quizvalidation" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Width="280px" />
        <br />
        <!-- user details -->
        <div id="detailsdiv" class="content" style="width: 400px" runat="server">
            <fieldset>
                <legend>Vui lòng điền thông tin của bạn</legend>
                <ol>
                    <li>
                        <asp:Label ID="lblname" runat="server" AssociatedControlID="txtname" CssClass="content float-left">Họ & tên đệm</asp:Label>
                        <asp:TextBox runat="server" ID="txtname" CssClass="float-right" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" Display="Dynamic" CssClass="field-validation-error" ErrorMessage="vui lòng điền họ và tên đệm" ValidationGroup="quizvalidation" Text="*" SetFocusOnError="true" />
                    </li>
                    <li>
                        <asp:Label ID="lblFname" runat="server" AssociatedControlID="txtFname" CssClass="content float-left">Tên</asp:Label>
                        <asp:TextBox runat="server" ID="txtFname" CssClass="float-right" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFname" Display="Dynamic" CssClass="field-validation-error" ErrorMessage="vui lòng điền tên" ValidationGroup="quizvalidation" Text="*" SetFocusOnError="true" />
                    </li>
                    <li>
                        <asp:Label ID="lblemail" runat="server" AssociatedControlID="txtemail" CssClass="content float-left">Địa chỉ email</asp:Label>
                        <asp:TextBox runat="server" ID="txtemail" CssClass="float-right" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" Display="Dynamic" CssClass="field-validation-error" ErrorMessage="Vui lòng điền email" ValidationGroup="quizvalidation" Text="*" SetFocusOnError="true" />
                    </li>
                    <li>
                        <asp:Label ID="Label1" runat="server" AssociatedControlID="txtPosition" CssClass="content float-left">Nghề nghiệp</asp:Label>
                        <asp:TextBox runat="server" ID="txtPosition" CssClass="float-right" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPosition" Display="Dynamic" CssClass="field-validation-error" ErrorMessage="Vui lòng điền nghề nghiệp" ValidationGroup="quizvalidation" Text="*" SetFocusOnError="true" />
                    </li>
                    <li>
                        <asp:Label ID="Label2" runat="server" AssociatedControlID="txtPhone" CssClass="content float-left">Số điện thoại</asp:Label>
                        <asp:TextBox runat="server" ID="txtPhone" CssClass="float-right" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" Display="Dynamic" CssClass="field-validation-error" ErrorMessage="Vui lòng điền số điện thoại" ValidationGroup="quizvalidation" Text="*" SetFocusOnError="true" />
                    </li>
                </ol>
            </fieldset>
        </div>
        <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" ValidationGroup="quizvalidation" />
    </div>
</asp:Content>
