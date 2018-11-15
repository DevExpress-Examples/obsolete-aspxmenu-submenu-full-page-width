<!-- default file list -->
*Files to look at*:

* [Menu.sitemap](./CS/App_Data/Menu.sitemap) (VB: [Menu.sitemap](./VB/App_Data/Menu.sitemap))
* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# OBSOLETE - ASPxMenu - How to show a sub menu with a full page width


<p><strong>UPDATED:</strong></p>
<p>Starting with version 14.2, <a href="https://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxMenutopic">ASPxMenu</a> provides the built-in capability to display a submenu with the full page width. This allows accomplishing a similar task with less effort and does not require as much extra code. See the <a href="https://community.devexpress.com/blogs/aspnet/archive/2015/01/07/asp-net-create-full-width-submenu-like-devexpress-com-v14-2.aspx">ASP.NET - Create Full-width Submenu</a> post to learn more about this new functionality.</p>
<p>You can try this functionality in the <a href="http://demos.devexpress.com/ASPxNavigationAndLayoutDemos/Menu/FullWidthSubMenu.aspx">Full-Width Submenu</a> online demo.<br /><br /></p>
You can implement a submenu with a full page width in the following manner:<br />1) Assign the following CSS class to the SubMenuStyle.CssClass property: <br />


```css
   .subMenu {
            width: 100%;
            box-sizing:border-box; 
        }
            .subMenu > div {
                margin: 0 auto;
            }
```


<p>2) Handle the client-side PopUp event to adjust a sub menu:</p>


```js
 function OnPopup(menu, e) {
            var el = menu.GetMenuElement(e.item.indexPath);
            el.style.left = 0;
            el.style.right = 0;
            el.style.width = '100%';
        } 
```


<br />
<p>The example below demonstrates this approach in action.</p>

<br/>


