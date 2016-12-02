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
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TelefonLabel" runat="server" Text='<%# Eval("Telefon") %>' />
                    </td>
                    <td>
                        <asp:Label ID="KrajLabel" runat="server" Text='<%# Eval("Kraj") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MiejscowoscLabel" runat="server" Text='<%# Eval("Miejscowosc") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                    </td>
                    <td>
                        <asp:Label ID="KodLabel" runat="server" Text='<%# Eval("Kod") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TelefonTextBox" runat="server" Text='<%# Bind("Telefon") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="KrajTextBox" runat="server" Text='<%# Bind("Kraj") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MiejscowoscTextBox" runat="server" Text='<%# Bind("Miejscowosc") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="KodTextBox" runat="server" Text='<%# Bind("Kod") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TelefonTextBox" runat="server" Text='<%# Bind("Telefon") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="KrajTextBox" runat="server" Text='<%# Bind("Kraj") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MiejscowoscTextBox" runat="server" Text='<%# Bind("Miejscowosc") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="KodTextBox" runat="server" Text='<%# Bind("Kod") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TelefonLabel" runat="server" Text='<%# Eval("Telefon") %>' />
                    </td>
                    <td>
                        <asp:Label ID="KrajLabel" runat="server" Text='<%# Eval("Kraj") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MiejscowoscLabel" runat="server" Text='<%# Eval("Miejscowosc") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                    </td>
                    <td>
                        <asp:Label ID="KodLabel" runat="server" Text='<%# Eval("Kod") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server">Imie</th>
                                    <th runat="server">Nazwisko</th>
                                    <th runat="server">Email</th>
                                    <th runat="server">Telefon</th>
                                    <th runat="server">Kraj</th>
                                    <th runat="server">Miejscowosc</th>
                                    <th runat="server">Data</th>
                                    <th runat="server">Kod</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TelefonLabel" runat="server" Text='<%# Eval("Telefon") %>' />
                    </td>
                    <td>
                        <asp:Label ID="KrajLabel" runat="server" Text='<%# Eval("Kraj") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MiejscowoscLabel" runat="server" Text='<%# Eval("Miejscowosc") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                    </td>
                    <td>
                        <asp:Label ID="KodLabel" runat="server" Text='<%# Eval("Kod") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:formularzeConnectionString %>" SelectCommand="SELECT [Imie], [Nazwisko], [Email], [Telefon], [Kraj], [Miejscowosc], [Data], [Kod] FROM [Forms]"></asp:SqlDataSource>
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
