	
<table cellspacing="1" cellpadding="0" border="0">
<tr><td colspan="2">{="The following mountpoint relay settings control relaying a single, specific mount point on a remote server."}<br /><br /></td></tr>

<tr>
	<td width="130">{="Stream server"}:</td>
	<td><input type="text" name="config[relayserver]" size="50" value="{$config.relayserver|htmlentities}" /> {$errors.relayserver|checkerror}</td>
</tr>
<tr>
	<td>{="Stream port"}:</td>
	<td><input type="text" name="config[relayport]" size="6" value="{$config.relayport|htmlentities}" /> {$errors.relayport|checkerror}</td>
</tr>
<tr>
	<td>{="Stream mount point"}:</td>
	<td><input type="text" name="config[relaymount]" size="50" value="{$config.relaymount|htmlentities}" /> {$errors.relaymount|checkerror}</td>
</tr>
<tr>
	<td>{="Local mount point"}:</td>
	<td><input type="text" name="config[relaylocalmount]" size="50" value="{$config.relaylocalmount|htmlentities}" /> {$errors.relaylocalmount|checkerror}</td>
</tr>
<tr>
	<td>{="Stream username"}:</td>
	<td><input type="text" name="config[relaymntusername]" size="12" value="{$config.relaymntusername|htmlentities}" /> {$errors.relaymntusername|checkerror}</td>
</tr>
<tr>
	<td>{="Stream password"}:</td>
	<td><input type="password" name="config[relaymntpassword]" size="12" value="{$config.relaymntpassword|htmlentities}" /> {$errors.relaymntpassword|checkerror}</td>
</tr>
<tr>
	<td>{="Relay on demand"}:</td>
	<td>
		<select name="config[relayondemand]" size="1">
		<option value="1"{if $config.relayondemand>0} selected="selected"{/if}>{="Yes"}</option>
		<option value="0"{if $config.relayondemand==0} selected="selected"{/if}>{="No"}</option>
		</select> {$errors.relayondemand|checkerror}
	</td>
</tr>
<tr>
	<td>{="Relay metadata"}:</td>
	<td>
		<select name="config[relaymeta]" size="1">
		<option value="1"{if $config.relaymeta>0} selected="selected"{/if}>{="Yes"}</option>
		<option value="0"{if $config.relaymeta==0} selected="selected"{/if}>{="No"}</option>
		</select> {$errors.relaymeta|checkerror}
	</td>
</tr>
</table>

