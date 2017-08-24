// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .



	var sym = document.getElementsByClassName("sym")[0];
	var textarea = document.getElementById("micropost_content");
	function sym_full() {
		sym.innerHTML = "Осталось " + (140 - textarea.value.length) + " символов";
	}

	sym_full();

	textarea.onkeyup = function(e) {
		sym_full();
	}

	textarea.onkeydown = function(e) {
		if ((140 - textarea.value.length) <= 0 && e.keyCode != 8 && e.keyCode != 46) {
			return false;
		}
	}

	

