<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Formularz.aspx.cs" Inherits="WebApplication1.Formularz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head1" runat="server">
    <script src="http://1000hz.github.io/bootstrap-validator/dist/validator.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Formularz zgłoszeniowy</h1>
    <form data-toggle="validator" role="form" id="form1" runat="server">
        <div class="form-group">
            <label for="InputName">Imię i Nazwisko</label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Imię i Nazwisko"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputEmail" class="control-label">Adres Email</label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" type="email" placeholder="Adres Email" data-error="Błędny adres Email" CausesValidation="True"></asp:TextBox>
            <div class="help-block with-errors"></div>
        </div>
        <div class="form-group">
            <label for="InputTel" class="control-label">Telefon</label>
            <asp:TextBox ID="TextBox3" runat="server" type="tel" pattern="^\+48([0-9]){9}$" CssClass="form-control" placeholder="+xx xxx xxx xxx" data-error="Błędny numer" CausesValidation="true"></asp:TextBox>
            <div class="help-block with-errors"></div>
        </div>
        <div class="form-group">
            <label for="InputCountry">Kraj</label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Kraj"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputState">Miejscowość</label><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Miejscowość"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputPostCode" class="control-label">Kod pocztowy</label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="xx-xxx" pattern="^([0-9]){2}\-([0-9]){3}$" data-error="Błędny kod pocztowy" CausesValidation="true"></asp:TextBox>
            <div class="help-block with-errors"></div>
        </div>
        <div class="form-group">
            <label for="InputDate" class="control-label">Data</label><asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" type="date"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="InputFile">Udostępnij plik</label>
            <input type="file" id="InputFile">
        </div>
        <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Height="32px" OnClick="Button1_Click" Text="Button" Width="78px" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server"></asp:Label>
    </form>
    </body>
</asp:Content>
