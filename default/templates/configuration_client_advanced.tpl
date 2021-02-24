	
<table cellspacing="1" cellpadding="0" border="0">
<tr>
	<td width="130">{="Directory listings URL"}:</td>
	<td><input type="text" name="config[directoryurl]" size="50" value="{$config.directoryurl|htmlentities}" /> {$errors.directoryurl|checkerror}</td>
</tr>
<tr>
	<td>{="Directory listings timeout"}:</td>
	<td><input type="text" name="config[directorytimeout]" size="6" value="{$config.directorytimeout|htmlentities}" /> {$errors.directorytimeout|checkerror}</td>
</tr>
<tr>
	<td>{="Relay password"}:</td>
	<td><input type="password" name="config[relaypassword]" size="12" value="{$config.relaypassword|htmlentities}" /> {$errors.relaypassword|checkerror}</td>
</tr>
<tr><td colspan="2"><br /></td></tr>
<tr>
	<td>{="Song length detect limit"}:&nbsp;</td>
	<td colspan="3">
		<input type="text" name="config[songlengthlimit]" size="4" value="{$config.songlengthlimit|htmlentities}" /> {="second(s)"} {$errors.songlengthlimit|checkerror}
		{tip type="icon"}{="IceCast's logs only include the start time of each track; they do not provide information about the length of each song.  As such, Centova Cast must determine the length by checking the duration between the start times of each song.  If the server is stopped between songs, however, the song will appear to last for the duration of the outage.%sThis limit is used to ensure that if any song 'appears' to last longer than a certain number of minutes, it will not be included in the track statistics.","<br /><br />"}{/tip}
	</td>
</tr>
<tr><td colspan="2"><br /></td></tr>
</table>

{check $actual_admin>0}
<table cellspacing="1" cellpadding="0" border="0">
<tr>
	<td width="130">{="Maximum sources"}:</td>
	<td width="100"><input type="text" name="config[maxsources]" size="8" value="{$config.maxsources|htmlentities}" /> {$errors.maxsources|checkerror} </td>
	<td width="130">{="Thread pool"}:</td>
	<td><input type="text" name="config[threadpool]" size="8" value="{$config.threadpool|htmlentities}" /> {$errors.threadpool|checkerror} </td>
</tr>
<tr>
	<td>{="Queue size"}:</td>
	<td><input type="text" name="config[queuesize]" size="8" value="{$config.queuesize|htmlentities}" /> {$errors.queuesize|checkerror} </td>
	<td>{="Client timeout"}:</td>
	<td><input type="text" name="config[clienttimeout]" size="8" value="{$config.clienttimeout|htmlentities}" /> {$errors.clienttimeout|checkerror} </td>
</tr>
<tr>
	<td>{="Header timeout"}:</td>
	<td><input type="text" name="config[headertimeout]" size="8" value="{$config.headertimeout|htmlentities}" /> {$errors.headertimeout|checkerror} </td>
	<td>{="Source timeout"}:</td>
	<td><input type="text" name="config[sourcetimeout]" size="8" value="{$config.sourcetimeout|htmlentities}" /> {$errors.sourcetimeout|checkerror} </td>
</tr>
<tr>
	<td>{="Burst on connect"}:&nbsp;</td>
	<td>
		<select name="config[burstonconnect]" size="1">
		<option value="1"{if $config.burstonconnect>0} selected="selected"{/if}>{="Yes"}</option>
		<option value="0"{if $config.burstonconnect==0} selected="selected"{/if}>{="No"}</option>
		</select> {$errors.burstonconnect|checkerror} 
	</td>
	<td>{="Burst size"}:</td>
	<td><input type="text" name="config[burstsize]" size="8" value="{$config.burstsize|htmlentities}" /> {$errors.burstsize|checkerror} </td>
</tr>
<tr><td colspan="4"><br /></td></tr>
<tr>
	<td>{="Use server"}:&nbsp;</td>
	<td colspan="3">
		<select name="config[useserver]" size="1">
		<option value="1"{if $config.useserver>0} selected="selected"{/if}>{="Yes"}</option>
		<option value="0"{if $config.useserver==0} selected="selected"{/if}>{="No"}</option>
		</select> {$errors.useserver|checkerror} 
	</td>
</tr>
<tr>
	<td>{="Nextsong debug"}:&nbsp;</td>
	<td colspan="3">
		<select name="config[nextsongdebug]" size="1">
		<option value="1"{if $config.nextsongdebug>0} selected="selected"{/if}>{="Yes"}</option>
		<option value="0"{if $config.nextsongdebug==0} selected="selected"{/if}>{="No"}</option>
		</select> {$errors.nextsongdebug|checkerror}
	</td>
</tr>
</table>
{/check}
