{resource type="js" src="/system/jquery.centova.tabset.js" depends="common"}
{resource type="js" src="/system/list_editor.js" id="listeditor" depends="common"}
{resource type="js" src="/system/mountpoint_list_editor.js" id="mpeditor" depends="listeditor"}
{resource type="js" src="/system/mp_ic_list_editor.js" depends="mpeditor"}

{language}
fallback_file_set_title: '{="Fallback clip assigned"}',
fallback_file_set_message: '{="A fallback clip has already been assigned for this mount point.  If you configure a fallback mount point instead, the fallback clip will be removed."}',
{/language}

{onready}
	var ml = $('#mountlimit').length ? 'mountlimit' : {$config.mountlimit|atoi};
	window.mountpoint_list = new IceCastMPListEditor(window,'window.mountpoint_list','mountpoints',ml);
{/onready}

{="Current mount points"}:<br />

<div class="list_editor_manager">

<select class="form-control" name="config[mountpoints][]" size="10" id="mountpoints_list">
{loop $mountpoint=$config.mountpoints}
<option value="{$mountpoint.asstring|htmlentities}">{$mountpoint.mountname|htmlentities}</option>
{/loop}
</select>

<!--<input type="button" id="mountpoints_new" value="{="Create new"}" />
<input type="button" id="mountpoints_remove" value="{="Remove"}" />-->

</div>
<div class="list_editor_form fstabset" id="mountpoints_form">

	<fieldset id="mountpoint_settings_tab" class="accordion_active">
		<legend>{="Settings"}</legend>
		<table class="table">
		<tr>
			<td width="130">{="Mount point"}:</td>
			<td><input type="text" name="mountpoints_field[mountname]" id="activempname" class="list_editor_field" size="30" value="" /></td>
		</tr>
		{if ($creating==0) && ($template_editor==0)}
		<tr>
			<td>{="Intro clip"}:</td>
			<td>
				<input type="text" size="15" id="mount_upload_intro_filename" name="mountpoints_field[intro]" value="" class="list_editor_field upload_text_field" />
			    <input type="button" value="{="Remove"}" id="mount_upload_intro_remove" />
			    <input type="button" id="mount_upload_intro_button" value="{="Upload a file ..."}" /><input type="file" name="_introfile" id="mount_upload_intro" />
			</td>
		</tr>
		<tr>
			<td>{="Fallback clip"}:</td>
			<td>
				<input type="text" size="15" id="mount_upload_fallback_filename" name="mountpoints_field[fallbackfile]" value="" class="list_editor_field upload_text_field" />
			    <input type="button" value="{="Remove"}" id="mount_upload_fallback_remove" />
			    <input type="button" id="mount_upload_fallback_button" value="{="Upload a file ..."}" /><input type="file" name="_fallbackfile" id="mount_upload_fallback" />
			</td>
		</tr>
		{/if}

		</table>
	</fieldset>

	<!-- insert[icmpcfg] -->

	<fieldset>
		<legend>{="Fallback Mount"}</legend>

		<table class="table">
		<tr id="ic_fallback_disabled"><td colspan="2">{="Fallback mount points are configured automatically for seamless live/autoDJ switching when the autoDJ is enabled."}</td></tr>
		<tr>
			<td width="130">{="Fallback mount point"}:</td>
			<td>
				<input type="text" name="mountpoints_field[fallbackmount]" id="mount_fallback_mount" class="list_editor_field" size="20" value="" />
				{tip type="icon"}
				{="Fallback mounts are used to move listeners to an alternate mount point if no source is connected to this mount point.  Be sure to create the mount point to be used as a fallback before entering it here."}<br /><br />
				{/tip}
			</td>
		</tr>
		<tr>
			<td>{="Fallback override"}:</td>
			<td>
				<select name="mountpoints_field[fallbackoverride]" size="1" class="list_editor_field">
				<option value="1"{if $config.fallbackoverride=="1"} selected="selected"{/if}>{="Yes"}</option>
				<option value="0"{if $config.fallbackoverride=="0"} selected="selected"{/if}>{="No"}</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>{="Fallback when full"}:</td>
			<td>
				<select name="mountpoints_field[fallbackwhenfull]" size="1" class="list_editor_field">
				<option value="0"{if $config.fallbackwhenfull=="0"} selected="selected"{/if}>{="No"}</option>
				<option value="1"{if $config.fallbackwhenfull=="1"} selected="selected"{/if}>{="Yes"}</option>
				</select>
			</td>
		</tr>
		</table>
	</fieldset>
	
	<fieldset>
		<legend>{="Setting Overrides"}</legend>
		<table class="table">
		<tr>
			<td width="130">{="Advertise in directory"}:</td>
			<td>
				<select name="mountpoints_field[public]" size="1" class="list_editor_field">
				<option value="-1"{if $config.public=="-1"} selected="selected"{/if}>{="Determined by source"}</option>
				<option value="1"{if $config.public=="1"} selected="selected"{/if}>{="Always"}</option>
				<option value="0"{if $config.public=="0"} selected="selected"{/if}>{="Never"}</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>{="Source username"}:</td>
			<td><input type="text" name="mountpoints_field[username]" class="list_editor_field" size="15" value="" /> ({="blank = use master"})</td>
		</tr>
		<tr>
			<td>{="Source password"}:</td>
			<td><input type="text" name="mountpoints_field[password]" class="list_editor_field" size="15" value="" /> ({="blank = use master"})</td>
		</tr>
		<tr>
			<td>{="Maximum listeners"}:</td>
			<td><input type="text" name="mountpoints_field[maxlisteners]" class="list_editor_field" size="5" value="" /> ({="blank = no limit"})</td>
		</tr>
		<tr>
			<td>{="Disconnect listeners after"}:</td>
			<td><input type="text" name="mountpoints_field[maxlistenerduration]" class="list_editor_field" size="5" value="" /> {="second(s)"} ({="blank = no limit"})</td>
		</tr>
		<tr>
			<td>{="Metadata interval"}:</td>
			<td><input type="text" name="mountpoints_field[mp3metadatainterval]" class="list_editor_field" size="5" value="" /> {="byte(s)"} ({="0 = suppress metadata, blank = use default"})</td>
		</tr>
		<tr>
			<td>{="Metadata charset"}:</td>
			<td><input type="text" name="mountpoints_field[charset]" class="list_editor_field" size="15" value="" /> ({="blank = ISO-8859-1 for MP3, UTF-8 for Ogg"})</td>
		</tr>
		</table>
	</fieldset>
	
	<fieldset>
		<legend>{="Metadata Overrides"}</legend>

		<table class="table">
		<tr>
			<td width="130">{="Stream name"}:</td>
			<td><input type="text" name="mountpoints_field[streamname]" class="list_editor_field" size="20" value="" /> ({="blank = use master"})</td>
		</tr>
		<tr>
			<td>{="Stream description"}:</td>
			<td><input type="text" name="mountpoints_field[streamdescription]" class="list_editor_field" size="20" value="" /> ({="blank = use master"})</td>
		</tr>
		<tr>
			<td>{="Stream URL"}:</td>
			<td><input type="text" name="mountpoints_field[streamurl]" class="list_editor_field" size="20" value="" /> ({="blank = use master"})</td>
		</tr>
		<tr>
			<td>{="Genre"}:</td>
			<td><input type="text" name="mountpoints_field[streamgenre]" class="list_editor_field" size="20" value="" /> ({="blank = use master"})</td>
		</tr>
		<tr>
			<td>{="Advertised bit rate"}:</td>
			<td><input type="text" name="mountpoints_field[bitrate]" class="list_editor_field" size="5" value="" /> ({="blank = auto"})</td>
		</tr>
		<tr>
			<td>{="MIME type"}:</td>
			<td><input type="text" name="mountpoints_field[type]" class="list_editor_field" size="20" value="" /> ({="blank = auto"})</td>
		</tr>
		</table>
	</fieldset>

	<br />

</div>	
