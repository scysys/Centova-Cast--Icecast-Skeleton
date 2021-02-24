{box title="Live Source Connections"}
	{="Enter this information into your live source software to perform a live broadcast"}.<br /><br />

	{check ($acctconfig.apptypes|contains:liquidsoap) and ($account.usesource!=2)}

		{="When the %sautoDJ is running%s","<strong>","</strong>"} {="and you want to broadcast live to %sall autoDJ-controlled mount points%s","<strong>","</strong>"}:<br /><br />
		<div style="margin-left: 15px">
			<table cellspacing="1" cellpadding="1" border="0">
			<tr><td>{="Protocol"}:&nbsp;</td><td><strong>SHOUTcast (v1)</strong></td></tr>
			<tr><td>{="Server hostname"}:&nbsp;</td><td><strong>{$serverhostname|htmlentities}</strong></td></tr>
			<tr><td>{="Server port"}:&nbsp;</td><td><strong>{$account.port|add:1}</strong></td></tr>
			<tr><td>{="Bit rate"}:&nbsp;</td><td><strong>{$highestbitrate}</strong></td></tr>
			<tr><td valign="top">{="Password"}:&nbsp;</td><td>({="The username and password of one of your %sDJ accounts%s, separated by a colon","<a href='index.php?page=djaccounts'>","</a>"})</td></tr>
			<tr><td>&nbsp;</td><td>{="Example: %sjsmith:secret%s","<strong>","</strong>"}</td></tr>
			</table>
		</div>

		<br />

		{="When the %sautoDJ is not running%s","<strong>","</strong>"} {="or you want to broadcast live to a %snon-autoDJ mount point%s","<strong>","</strong>"}:<br /><br />

		<div style="margin-left: 15px">
	{/check}

	{loop $mount=$acctconfig.mountpoints}
	{="For the %s%s%s mount point","<strong>",$mount.mountname,"</strong>"}:<br /><br />
	<table cellspacing="1" cellpadding="1" border="0" style="margin-left: 15px">
	<tr><td>{="Protocol"}:&nbsp;</td><td><strong>{$account.servertype|htmlentities}</strong></td></tr>
	<tr><td>{="Server hostname"}:&nbsp;</td><td><strong>{$serverhostname|htmlentities}</strong></td></tr>
	<tr><td>{="Server port"}:&nbsp;</td><td><strong>{$account.port|htmlentities}</strong></td></tr>
	<tr>
		<td>{="Mount point"}:&nbsp;</td>
		<td>
			<strong>
			{if $mount.useautodj==0}
				{$mount.mountname|htmlentities}
			{elseif ($mount.fallbackmount=="/live") or ($mount.fallbackmount|substr:-5=="_live")}
				{$mount.fallbackmount|htmlentities}
			{else}
				{$mount.mountname|htmlentities}
			{/if}
			</strong>
		</td>
	</tr>
	{check $mount.liqencoder!=""}<tr><td>{="Format"}:</td><td><strong>{if $mount.liqencoder|contains:"aac"}AAC/AAC+{else}{$mount.liqencoder|strtoupper|htmlentities}{/if}</strong></td></tr>{/check}
	{if $mount.bitrate!=""}<tr><td>{="Bit rate"}:</td><td><strong>{="%s kbps",$mount.bitrate}</strong></td></tr>{/if}
	</table>
	<br />
	{/loop}

	{="For all mount points, use the 'Source password' value from your %sstream settings%s when prompted for a password","<a href='index.php?page=configure'>","</a>"}.

	{="Note"}: {="When the autoDJ is not running, DJ accounts cannot be used, and each mount point must be sourced separately"}.

	{check ($acctconfig.apptypes|contains:liquidsoap) and ($account.usesource!=2)}
		</div>
	{/check}
{/box}