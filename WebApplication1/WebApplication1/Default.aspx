<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="WebApplication1.Default" %>
<%@ Register TagPrefix="kmd" TagName="Aktualnosci" Src="~/Aktualnosci.ascx" %>
<%@ Register TagPrefix="kmd" TagName="Wydarzenia" Src="~/Wydarzenia.ascx" %>
<%@ Register TagPrefix="kmd" TagName="Multimedia" Src="~/Multimedia.ascx" %>
<%@ Register TagPrefix="kmd" TagName="Wspolpraca" Src="~/Wspolpraca.ascx" %> 
<%@ Register TagPrefix="kmd" TagName="Partnerzy" Src="~/Partnerzy.ascx" %>
<%@ Register TagPrefix="kmd" TagName="Ludzie" Src="~/Ludzie.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <kmd:Aktualnosci ID="Aktualnosci1" runat="server" />
    <kmd:Wydarzenia ID="Wydarzenia1" runat="server" />
    <kmd:Multimedia ID="Multimedia1" runat="server" />
    <kmd:Wspolpraca ID="Wspolpraca1" runat="server" />
    <kmd:Ludzie ID="Ludzie1" runat="server" />
    <kmd:Partnerzy ID="Partnerzy1" runat="server" />
    
    
</asp:Content>