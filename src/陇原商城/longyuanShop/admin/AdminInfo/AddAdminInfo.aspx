<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminPageMaster.master" AutoEventWireup="true" CodeFile="AddAdminInfo.aspx.cs" Inherits="admin_AdminInfo_AddAdminInfo" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <script type="text/javascript" language="JavaScript">
     function GetDateTime() {
         //���� 
         var now = new Date(); //��ȡϵͳ���ڣ���Sat Jul 29 08:24:48 UTC+0800 2006 
         var yy = now.getYear(); //��ȡ�꣬��2006 
         var mm = now.getMonth(); //��ȡ�£���07 
         var dd = now.getDay(); //��ȡ�գ���29 
         //ȡʱ�� 
         var hh = now.getHours(); //��ȡСʱ����8 
         var min = now.getMinutes(); //��ȡ���ӣ���24 
         var ss = now.getTime() % 60000; //��ȡʱ�䣬��Ϊϵͳ��ʱ�����Ժ������ģ�������Ҫͨ����60000�õ��� 
         ss = (ss - (ss % 1000)) / 1000; //Ȼ�󣬽��õ��ĺ������ٴ������ 
         var clock = hh + ':'; //���õ��ĸ����������ӳ�һ������ʱ�� 
         if (mm < 10) clock += '0'; //�ַ��� 
         clock += mm + ':';
         if (ss < 10) clock += '0';
         clock += ss;
         document.getElementById("a").value = yy + "-" + mm + "-" + dd;
         //document.getElementById("a").value=yy+"-"+mm+"-"+dd+" "+hh+":"+min+":"+ss;
         document.getElementById("b").value = clock;
         alert(clock);
     }
</script>
    <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>
<div class="AdminNav">
    <div>
        <ul>
            <li class="now"><a href="AddAdminInfo.aspx" title="��ӹ���Ա��Ϣ">��ӹ���Ա</a></li>
            <li><a href="ManageAdmin.aspx" title="�������Ա��Ϣ">�������Ա</a></li>
            <li><a href="AdminUpdatePwd.aspx" title="�޸Ĺ���Ա��Ϣ">�޸�����</a></li>
       </ul>
    </div>
</div>
<div>
  <table align="left" cellpadding="0" cellspacing="0" 
        style="width: 820px; border: 1px solid #CCFF66;">
        <tr>
            <td colspan="3" align="center" 
                style="background-color: #C0C0C0; font-size: 22px; font-weight: bold;">
                ��ӹ���Ա</td>
        </tr>
        <tr>
            <td style="width:15%; height:36px;" align="right">
                <span style="color:Red">*</span>��&nbsp; ��&nbsp; ����</td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtAdminName" runat="server"
                    Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAdminName" runat="server" 
                    ControlToValidate="txtAdminName" Display="Dynamic" ErrorMessage="�û�������Ϊ�գ�">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  align="right" style="height:36px;">
                <span style="color:Red">*</span>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   �룺</td>
            <td  align="left" style="height: 36px" colspan="2">
                <asp:TextBox ID="txtAdminPwd" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <cc1:PasswordStrength ID="txtAdminPwd_PasswordStrength" runat="server" 
                    BarBorderCssClass="" BarIndicatorCssClass="" Enabled="True" 
                    PrefixText="����ǿ��Ϊ: " 
                    TargetControlID="txtAdminPwd" TextStrengthDescriptions="̫��;��;һ��;��ǿ;ǿ;" 
                    CalculationWeightings="20;20;30;30" PreferredPasswordLength="20" 
                    RequiresUpperAndLowerCaseCharacters="True">
                </cc1:PasswordStrength>
                <asp:RequiredFieldValidator ID="rfvAdminPwd" runat="server" 
                    ControlToValidate="txtAdminPwd" Display="Dynamic" ErrorMessage="���벻��Ϊ��!">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  align="right" style="height:36px;">
                <span style="color:Red">*</span>ȷ�����룺</td>
            <td  align="left" style="height: 36px" colspan="2">
                <asp:TextBox ID="txtAdminOkPwd" runat="server" Width="200px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOkAdminPwd" runat="server" 
                    ControlToValidate="txtAdminOkPwd" Display="Dynamic" ErrorMessage="ȷ�����벻��Ϊ��">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtAdminOkPwd" ControlToValidate="txtAdminPwd" 
                    Display="Dynamic" ErrorMessage="ȷ����������������ͬ">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="height:36px;">
                <span style="color:Red">*</span>�û����ͣ�</td>
            <td  align="left" colspan="2">
                <asp:DropDownList ID="ddlAdminType" runat="server" Width="100px">
                    <asp:ListItem Selected="True" Value="0">��ͨ����Ա</asp:ListItem>
                    <asp:ListItem Value="20">��������Ա</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ShowMessageBox="True" ShowSummary="False" />
                <br />
                <asp:Button ID="btnAddAdmin" runat="server" Text="��ӹ���Ա" 
                    onclick="btnAddAdmin_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>

