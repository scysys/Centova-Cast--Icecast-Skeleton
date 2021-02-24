<div class="m-portlet m-portlet--mobile m-portlet--rounded m-portlet--head-solid-bg">
<div class="m-portlet__head sp-box-table">
<div class="m-portlet__head-caption">
<div class="m-portlet__head-title">
<h3 class="m-portlet__head-text sp-box-table"> {="Master Relaying"} </h3>
</div>
</div>
</div>
<div class="m-portlet__body">

<p>{="The following master server relay settings control relaying all mount points on an entire remote IceCast server."}</p>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Master server"}</span>
</div>
<input type="text" name="config[masterserver]" class="form-control" value="{$config.masterserver|htmlentities}" /> {$errors.masterserver|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Master port"}</span>
</div>
<input type="text" name="config[masterport]" class="form-control" value="{$config.masterport|htmlentities}" /> {$errors.masterport|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Master update interval"}</span>
</div>
<input type="text" name="config[masterupdate]" class="form-control" value="{$config.masterupdate|htmlentities}" /> {$errors.masterupdate|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Master password"}</span>
</div>
<input type="password" name="config[masterpassword]" class="form-control" value="{$config.masterpassword|htmlentities}" /> {$errors.masterpassword|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Relay on demand"}</span>
</div>
<select name="config[masterondemand]" class="form-control">
<option value="1"{if $config.masterondemand>0} selected="selected"{/if}>{="Yes"}</option>
<option value="0"{if $config.masterondemand==0} selected="selected"{/if}>{="No"}</option>
</select> {$errors.masterondemand|checkerror}
</div>

</div>
</div>
