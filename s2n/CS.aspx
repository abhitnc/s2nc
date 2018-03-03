<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
            width: 550px;
            margin-bottom: -1px;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
         }
        table th, table td
        {
            padding: 5px;
            border: 1px solid #ccc;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:TemplateField HeaderText="Customer Id" ItemStyle-Width="110px" ItemStyle-CssClass="CustomerId">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("CustomerId") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" ItemStyle-Width="150px" ItemStyle-CssClass="Name">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Name") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("Name") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country" ItemStyle-Width="150px" ItemStyle-CssClass="Country">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Country") %>' runat="server" />
                    <asp:TextBox Text='<%# Eval("Country") %>' runat="server" Style="display: none" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton Text="Edit" runat="server" CssClass="Edit" />
                    <asp:LinkButton Text="Update" runat="server" CssClass="Update" Style="display: none" />
                    <asp:LinkButton Text="Cancel" runat="server" CssClass="Cancel" Style="display: none" />
                    <asp:LinkButton Text="Delete" runat="server" CssClass="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function ()
        {
            $.ajax(
                {
                type: "POST",
                url: "CS.aspx/GetCustomers",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess
                }
            );
        }
        );
        function OnSuccess(response) {
            var xmlDoc = $.parseXML(response.d);
            var xml = $(xmlDoc);
            var customers = xml.find("Table");
            var row = $("[id*=gvCustomers] tr:last-child").clone(true);
            $("[id*=gvCustomers] tr").not($("[id*=gvCustomers] tr:first-child")).remove();
            $.each(customers, function () {
                var customer = $(this);
                AppendRow(row, $(this).find("CustomerId").text(), $(this).find("Name").text(), $(this).find("Country").text())
                row = $("[id*=gvCustomers] tr:last-child").clone(true);
            });
        }

        function AppendRow(row, customerId, name, country) {
            $(".CustomerId", row).find("span").html(customerId);
            $(".Name", row).find("span").html(name);
            $(".Name", row).find("input").val(name);
            $(".Country", row).find("span").html(country);
            $(".Country", row).find("input").val(country);
            $("[id*=gvCustomers]").append(row);
        }
        $("body").on("click", "[id*=gvCustomers] .Edit", function () {
            var row = $(this).closest("tr");
            $("td", row).each(function () {
                if ($(this).find("input").length > 0) {
                    $(this).find("input").show();
                    $(this).find("span").hide();
                }
            });
            row.find(".Update").show();
            row.find(".Cancel").show();
            row.find(".Delete").hide();
            $(this).hide();
            return false;
        });

        //Update event handler.
        $("body").on("click", "[id*=gvCustomers] .Update", function () {
            var row = $(this).closest("tr");
            $("td", row).each(function () {
                if ($(this).find("input").length > 0) {
                    var span = $(this).find("span");
                    var input = $(this).find("input");
                    span.html(input.val());
                    span.show();
                    input.hide();
                }
            });
            row.find(".Edit").show();
            row.find(".Delete").show();
            row.find(".Cancel").hide();
            $(this).hide();

            var customerId = row.find(".CustomerId").find("span").html();
            var name = row.find(".Name").find("span").html();
            var country = row.find(".Country").find("span").html();
            $.ajax({
                type: "POST",
                url: "CS.aspx/UpdateCustomer",
                data: '{customerId: ' + customerId + ', name: "' + name + '", country: "' + country + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json"
            });

            return false;
        });

        //Cancel event handler.
        $("body").on("click", "[id*=gvCustomers] .Cancel", function () {
            var row = $(this).closest("tr");
            $("td", row).each(function () {
                if ($(this).find("input").length > 0) {
                    var span = $(this).find("span");
                    var input = $(this).find("input");
                    input.val(span.html());
                    span.show();
                    input.hide();
                }
            });
            row.find(".Edit").show();
            row.find(".Delete").show();
            row.find(".Update").hide();
            $(this).hide();
            return false;
        });

        //Delete event handler.
        $("body").on("click", "[id*=gvCustomers] .Delete", function () {
            if (confirm("Do you want to delete this row?")) {
                var row = $(this).closest("tr");
                var customerId = row.find("span").html();
                $.ajax({
                    type: "POST",
                    url: "CS.aspx/DeleteCustomer",
                    data: '{customerId: ' + customerId + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        row.remove();
                    }
                });
            }

            return false;
        });
    </script>
    </form>
</body>
</html>