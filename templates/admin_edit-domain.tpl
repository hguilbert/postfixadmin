<div id="edit_form">
<form name="edit_domain" method="post" action="">
<table>
	<tr>
		<th colspan="4">
{if $mode == 'edit'}
			{$PALANG.pAdminEdit_domain_welcome}
{else}
			{$PALANG.pAdminCreate_domain_welcome}
{/if}
	</th>
	</tr>
	<tr>
		<td class="label"><label>{$PALANG.pAdminEdit_domain_domain}:</label></td>
		<td>
{if $mode == 'edit'}
			<em>{$domain}</em>
{else}
			<input class="flat" type="text" name="fDomain" value="{$tDomain}" />
{/if}
		</td>
		<td>&nbsp;</td>
		<td><span class="error_msg">{$pAdminCreate_domain_domain_text_error}</span></td>
	</tr>
	<tr>
		<td class="label"><label>{$PALANG.pAdminEdit_domain_description}:</label></td>
		<td><input class="flat" type="text" name="fDescription" value="{$tDescription}" /></td>
		<td colspan="2">&nbsp;</td>
	</tr>
	<tr>
		<td class="label"><label>{$PALANG.pAdminEdit_domain_aliases}:</label></td>
		<td><input class="flat" type="text" name="fAliases" value="{$tAliases}" /></td>
		<td>{$PALANG.pAdminEdit_domain_aliases_text}</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td class="label"><label>{$PALANG.pAdminEdit_domain_mailboxes}:</label></td>
		<td><input class="flat" type="text" name="fMailboxes" value="{$tMailboxes}" /></td>
		<td>{$PALANG.pAdminEdit_domain_mailboxes_text}</td>
		<td>&nbsp;</td>
	</tr>
{if $CONF.domain_quota===YES}
	<tr>
		<td class="label"><label>{$PALANG.pAdminEdit_domain_quota}:</label></td>
		<td><input class="flat" type="text" name="fDomainquota" value="{$tDomainquota}" /></td>
		<td>{$PALANG.pAdminEdit_domain_maxquota_text}</td>
		<td>&nbsp;</td>
	</tr>
{/if}
{if $CONF.quota===YES}
	<tr>
		<td class="label"><label>{$PALANG.pAdminEdit_domain_maxquota}:</label></td>
		<td><input class="flat" type="text" name="fMaxquota" value="{$tMaxquota}" /></td>
		<td>{$PALANG.pAdminEdit_domain_maxquota_text}</td>
		<td>&nbsp;</td>
	</tr>
{/if}
{if $CONF.transport===YES}
	<tr>
		<td class="label"><label>{$PALANG.pAdminEdit_domain_transport}:</label></td>
		<td><select class="flat" name="fTransport">{$select_options}</select></td>
		<td>{$PALANG.pAdminEdit_domain_transport_text}</td>
		<td>&nbsp;</td>
	</tr>
{/if}
{if $mode == 'create'}
	<tr>
		<td class="label"><label>{$PALANG.pAdminCreate_domain_defaultaliases}:</label></td>
		<td><input class="flat" type="checkbox" value='on' name="fDefaultaliases"{$tDefaultaliases}/></td>
		<td>{$PALANG.pAdminCreate_domain_defaultaliases_text}</td>
		<td>&nbsp;</td>
	</tr>
{/if}
	<tr>
		<td class="label"><label>{$PALANG.pAdminEdit_domain_backupmx}:</label></td>
		<td><input class="flat" type="checkbox" value='on' name="fBackupmx"{$tBackupmx}/></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
{if $mode == 'edit'}
<!-- TODO: create should also offer the 'active' option -->
	<tr>
		<td class="label"><label>{$PALANG.pAdminEdit_domain_active}:</label></td>
		<td><input class="flat" type="checkbox" name="fActive"{$tActive}/></td>
		<td colspan="2">&nbsp;</td>
	</tr>
{/if}
	<tr>
		<td>&nbsp;</td>
		<td colspan="3"><input class="button" type="submit" name="submit" value="{if $mode == 'edit'}{$PALANG.save}{else}{$PALANG.pAdminCreate_domain_button}{/if}" /></td>
	</tr>
</table>
</form>
</div>