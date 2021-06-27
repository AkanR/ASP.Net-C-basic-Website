<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="Practical4_master_page.WebForm2" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <center><h1 style="font-size: 50px;">
                Register For an Event</h1> <br /><br />
            <b>Name :</b>&nbsp;&nbsp;
            <asp:TextBox ID="name" runat="server" Height="22px" Width="150px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name"
                ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">Name is required</asp:RequiredFieldValidator>
            <b>Email :</b>&nbsp;&nbsp;
            <asp:TextBox ID="email" runat="server" Height="22px" Style="margin-top: 2px;" Width="150px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email"
                ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">Email is required</asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email"
                ErrorMessage="Use VESIT Email only" ForeColor="#FF3300" ValidationExpression="^[A-Za-z0-9._%+-]+@ves.ac.in$"></asp:RegularExpressionValidator>
           <br /><b style="margin-left: -545px;">Choose the city :</b>
           <asp:RadioButtonList ID="bias" runat="server"  Height="26px" Style="margin-left: -270px;"
                Width="150px">
                <asp:ListItem>Los Angeles</asp:ListItem>
                <asp:ListItem>New Delhi</asp:ListItem>
                <asp:ListItem>New York</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"
                ForeColor="#FF3300" ControlToValidate="bias">Choose Your City</asp:RequiredFieldValidator><br />
            <asp:Label ID="Label3" runat="server" Text="Contact" style="margin-left: -205px; font-weight:bold;"></asp:Label>:&nbsp;
            <asp:TextBox ID="contact" runat="server" Height="22px" Width="150px"></asp:TextBox>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="contact"
                ErrorMessage="Invalid Contact" ForeColor="#FF3300" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"
                ForeColor="#FF3300" ControlToValidate="contact">Contact No. Required</asp:RequiredFieldValidator>
            <br /><br />
            <b  style="margin-left: -505px; font-weight:bold;">Sub-Events of Contest:</b>
            <asp:CheckBoxList ID="events" runat="server" Height="26px" Style="margin-left: -200px;" Width="150px">
                <asp:ListItem>VR Movies</asp:ListItem>
                <asp:ListItem>Dolphin SHow</asp:ListItem>
                <asp:ListItem>Ice Skating</asp:ListItem>
                <asp:ListItem>Laser Show</asp:ListItem>
            </asp:CheckBoxList>
            <br />
                <b ><asp:Button ID="Button1" runat="server" Text="Submit" PostBackUrl="~/WebForm3.aspx" style="background-color:Maroon; color:White; padding:8px;" /></b>
    </center>
    </div>
</asp:Content>
