<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PH02886._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Nhóm 5.</h1>
                <h2>Assgignment PH02886.</h2>
            </hgroup>
            <p>
                Điện toán đám mây
                
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Show sản phẩm:</h3>
    <ol class="round">
        <li class="one">
            <h5>Danh Mục</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="219px" AllowPaging="True" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        </li>
        <li class="two">
            <h5>Sản phẩm</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="650px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="prod_id" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="prod_id" HeaderText="Mã SP" InsertVisible="False" ReadOnly="True" SortExpression="prod_id" />
                    <asp:BoundField DataField="cate_id" HeaderText="Mã Danh Mục" SortExpression="cate_id" />
                    <asp:BoundField DataField="prod_name" HeaderText="Tên SP" SortExpression="prod_name" />
                    <asp:BoundField DataField="prod_desc" HeaderText="Mô Tả" SortExpression="prod_desc" />
                    
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:webshopConnectionString3 %>" DeleteCommand="DELETE FROM [Products] WHERE [prod_id] = @prod_id" InsertCommand="INSERT INTO [Products] ([cate_id], [prod_name], [prod_desc], [img]) VALUES (@cate_id, @prod_name, @prod_desc, @img)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [cate_id] = @cate_id, [prod_name] = @prod_name, [prod_desc] = @prod_desc, [img] = @img WHERE [prod_id] = @prod_id">
                <DeleteParameters>
                    <asp:Parameter Name="prod_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cate_id" Type="Int32" />
                    <asp:Parameter Name="prod_name" Type="String" />
                    <asp:Parameter Name="prod_desc" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cate_id" Type="Int32" />
                    <asp:Parameter Name="prod_name" Type="String" />
                    <asp:Parameter Name="prod_desc" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="prod_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webshopConnectionString2 %>" DeleteCommand="DELETE FROM [Categories] WHERE [cate_id] = @cate_id" InsertCommand="INSERT INTO [Categories] ([cate_name]) VALUES (@cate_name)" SelectCommand="SELECT * FROM [Categories]" UpdateCommand="UPDATE [Categories] SET [cate_name] = @cate_name WHERE [cate_id] = @cate_id">
                <DeleteParameters>
                    <asp:Parameter Name="cate_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cate_name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cate_name" Type="String" />
                    <asp:Parameter Name="cate_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h5>Khách Hàng</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="373px" AllowPaging="True" DataSourceID="SqlDataSource3" AutoGenerateRows="False" DataKeyNames="custom_id">
                <Fields>
                    <asp:BoundField DataField="custom_id" HeaderText="Mã Khách Hàng" InsertVisible="False" ReadOnly="True" SortExpression="custom_id" />
                    <asp:BoundField DataField="custom_name" HeaderText="Tên" SortExpression="custom_name" />
                    <asp:BoundField DataField="custom_email" HeaderText="Email" SortExpression="custom_email" />
                    <asp:BoundField DataField="custom_address" HeaderText="Địa Chỉ" SortExpression="custom_address" />
                    <asp:BoundField DataField="custom_phone" HeaderText="Số Điện Thoại" SortExpression="custom_phone" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:webshopConnectionString4 %>" DeleteCommand="DELETE FROM [custom] WHERE [custom_id] = @custom_id" InsertCommand="INSERT INTO [custom] ([custom_name], [custom_email], [custom_address], [custom_phone]) VALUES (@custom_name, @custom_email, @custom_address, @custom_phone)" SelectCommand="SELECT * FROM [custom]" UpdateCommand="UPDATE [custom] SET [custom_name] = @custom_name, [custom_email] = @custom_email, [custom_address] = @custom_address, [custom_phone] = @custom_phone WHERE [custom_id] = @custom_id">
                <DeleteParameters>
                    <asp:Parameter Name="custom_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="custom_name" Type="String" />
                    <asp:Parameter Name="custom_email" Type="String" />
                    <asp:Parameter Name="custom_address" Type="String" />
                    <asp:Parameter Name="custom_phone" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="custom_name" Type="String" />
                    <asp:Parameter Name="custom_email" Type="String" />
                    <asp:Parameter Name="custom_address" Type="String" />
                    <asp:Parameter Name="custom_phone" Type="Int32" />
                    <asp:Parameter Name="custom_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
