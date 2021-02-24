	
<table cellspacing="1" cellpadding="0" border="0">
<tr><td colspan="2">{="The following master server relay settings control relaying all mount points on an entire remote IceCast server."}<br /><br /></td></tr>

<tr>
	<td width="130">{="Master server"}:</td>
	<td><input type="text" name="config[masterserver]" size="50" value="{$config.masterserver|htmlentities}" /> {$errors.masterserver|checkerror}</td>
</tr>
<tr>
	<td>{="Master port"}:</td>
	<td><input type="text" name="config[masterport]" size="6" value="{$config.masterport|htmlentities}" /> {$errors.masterport|checkerror}</td>
</tr>
<tr>
	<td>{="Master update interval"}:</td>
	<td><input type="text" name="config[masterupdate]" size="6" value="{$config.masterupdate|htmlentities}" /> {$errors.masterupdate|checkerror}</td>
</tr>
<tr>
	<td>{="Master password"}:</td>
	<td><input type="password" name="config[masterpassword]" size="12" value="{$config.masterpassword|htmlentities}" /> {$errors.masterpassword|checkerror}</td>
</tr>
<tr>
	<td>{="Relay on demand"}:</td>
	<td>
		<select name="config[masterondemand]" size="1">
		<option value="1"{if $config.masterondemand>0} selected="selected"{/if}>{="Yes"}</option>
		<option value="0"{if $config.masterondemand==0} selected="selected"{/if}>{="No"}</option>
		</select> {$errors.masterondemand|checkerror}
	</td>
</tr>
</table>

