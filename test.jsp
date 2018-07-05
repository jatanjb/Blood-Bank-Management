<form method="POST" action="non-Ajax form handler" onsubmit="
  if(this.name.value == '') {
    alert('Please enter your Name in the form');
    this.name.focus();
    return false;
  }
  if(this.email.value == '' && !this.valid_email.checked) {
    alert('Please enter a valid Email address');
    this.email.focus();
    return false;
  }
  if(this.age.value == '' || !this.valid_age.checked) {
    alert('Please enter an Age between 16 and 100');
    this.age.focus();
    return false;
  }
  alert('Success!  The form has been completed, validated and is ready to be submitted...');
  return false;
">
<fieldset>
<legend>Ajax Form Validation Demo</legend>

<p>Name: <input type="text" size="32" name="name" onchange="a = this.value.match(/^[a-z]*$/); if(a){valid_name.checked = 'checked';}else{valid_name.checked = false;}">
<input type="checkbox" disabled name="valid_name"></p>

<p>Email: <input type="text" size="32" id="email" name="email" onchange="a = this.value.match(/^[0-9]*$/); if(a){valid_email.checked = 'checked'};">
<input id="valid_email" type="checkbox" disabled name="valid_email"></p>
<div id="rsp_email"><!-- --></div>

<p>Age: <input type="text" size="4" id="age" name="age" onkeyup="if(this.value != '') callAjax('checkAge', this.value, this.id);"> <small>(between 16 and 100)</small>
<input id="valid_age" type="checkbox" disabled name="valid_age""></p>
<div id="rsp_age"><!-- --></div>

<p><input type="submit"></p>
</fieldset>
</form>