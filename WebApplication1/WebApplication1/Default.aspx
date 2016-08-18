<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="WebApplication1.Default" %>
<%@ Register TagPrefix="kmd" TagName="Aktualnosci" Src="~/Aktualnosci.ascx" %>
<%@ Register TagPrefix="kmd" TagName="Wydarzenia" Src="~/Wydarzenia.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <kmd:Aktualnosci ID="Aktualnosci1" runat="server" />
    <kmd:Wydarzenia ID="Wydarzenia1" runat="server" />
</asp:Content>