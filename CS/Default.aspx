<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxMenu" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.10.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxSiteMapControl" TagPrefix="dx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .subMenu {
           width: 100%;
           box-sizing:border-box;         
        }

            .subMenu > div {
                margin: 0 auto;
            }
    </style>
    <script>
        function OnPopup(menu, e) {
            var el = menu.GetMenuElement(e.item.indexPath);
            el.style.left = 0;
            el.style.right = 0;
            el.style.width = '100%';
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxMenu runat="server" ID="menu">
                <Items>
                    <dx:MenuItem Name="SubMenuTemplate" Text="SubMenuTemplate">
                        <Items>
                            <dx:MenuItem />
                        </Items>
                        <SubMenuTemplate>
                            <dx:ASPxSiteMapControl EnableViewState="False" Width="100%" ID="ASPxSiteMapControl1" runat="server"
                                DataSourceID="ASPxSiteMapDataSource1">
                                <Columns>
                                    <dx:SiteMapColumn />
                                    <dx:SiteMapColumn />
                                    <dx:SiteMapColumn />
                                </Columns>
                            </dx:ASPxSiteMapControl>
                            <dx:ASPxSiteMapDataSource ID="ASPxSiteMapDataSource1" runat="server" SiteMapProvider="MenuSiteMapProvider" />
                        </SubMenuTemplate>
                    </dx:MenuItem>
                </Items>
                <ClientSideEvents PopUp="OnPopup" />
                <SubMenuStyle CssClass="subMenu">
                    
                </SubMenuStyle>
            </dx:ASPxMenu>

        </div>
    </form>
</body>
</html>
