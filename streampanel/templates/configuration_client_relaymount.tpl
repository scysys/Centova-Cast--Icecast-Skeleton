<div class="m-portlet m-portlet--mobile m-portlet--rounded m-portlet--head-solid-bg">
<div class="m-portlet__head sp-box-table">
<div class="m-portlet__head-caption">
<div class="m-portlet__head-title">
<h3 class="m-portlet__head-text sp-box-table"> {="Mountpoint Relaying"} </h3>
</div>
</div>
</div>
<div class="m-portlet__body">

<p>{="The following mountpoint relay settings control relaying a single, specific mount point on a remote server."}</p>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Stream server"}</span>
</div>
<input type="text" name="config[relayserver]" class="form-control" value="{$config.relayserver|htmlentities}" /> {$errors.relayserver|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Stream port"}</span>
</div>
<input type="text" name="config[relayport]" class="form-control" value="{$config.relayport|htmlentities}" /> {$errors.relayport|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Stream mount point"}</span>
</div>
<input type="text" name="config[relaymount]" class="form-control" value="{$config.relaymount|htmlentities}" /> {$errors.relaymount|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Local mount point"}</span>
</div>
<input type="text" name="config[relaylocalmount]" class="form-control" value="{$config.relaylocalmount|htmlentities}" /> {$errors.relaylocalmount|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Stream username"}</span>
</div>
<input type="text" name="config[relaymntusername]" class="form-control" value="{$config.relaymntusername|htmlentities}" /> {$errors.relaymntusername|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Stream password"}</span>
</div>
<input type="password" name="config[relaymntpassword]" class="form-control" value="{$config.relaymntpassword|htmlentities}" /> {$errors.relaymntpassword|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Relay on demand"}</span>
</div>
<select name="config[relayondemand]" class="form-control">
<option value="1"{if $config.relayondemand>0} selected="selected"{/if}>{="Yes"}</option>
<option value="0"{if $config.relayondemand==0} selected="selected"{/if}>{="No"}</option>
</select> {$errors.relayondemand|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Relay metadata"}</span>
</div>
<select name="config[relaymeta]" class="form-control">
<option value="1"{if $config.relaymeta>0} selected="selected"{/if}>{="Yes"}</option>
<option value="0"{if $config.relaymeta==0} selected="selected"{/if}>{="No"}</option>
</select> {$errors.relaymeta|checkerror}
</div>

</div>
</div>
