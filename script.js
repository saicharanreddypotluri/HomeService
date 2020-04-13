//
//   function preventBack(){window.history.forward();}
//    setTimeout("preventBack()", 0);
//    window.onunload=function(){null};
//
//

function vendorvalidateForm() {
	var fn = document.forms["myForm"]["fname"].value;
	if (fn == "" || fn == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('firstname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('firstname').style.borderColor = "antiquewhite";
	}

	var ln = document.forms["myForm"]["lname"].value;
	if (ln == "" || ln == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('lastname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('lastname').style.borderColor = "antiquewhite";
	}

	var perage = document.forms["myForm"]["personage"].value;
	if (perage == "" || perage == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById("age").style.borderColor = "red";
		return false;
	} else {
		document.getElementById("age").style.borderColor = "antiquewhite";
	}


	var ph = document.forms["myForm"]["phone"].value;
	if (ph == "" || ph == null) {
		alert("Name must be filled out");
		document.getElementById('phnum').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('phnum').style.borderColor = "antiquewhite";
	}
	var vendor = document.forms["myForm"]["vid"].value;
	if (vendor == "" || vendor == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('vendorid').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('vendorid').style.borderColor = "antiquewhite";
	}

	var password = document.forms["myForm"]["pass"].value;
	if (password == "" || password == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('myInput').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('myInput').style.borderColor = "antiquewhite";
	}
}
function vendorvalidateForm1() {
	var submittype = document.forms["myForm"]["submit"].value;
	if (submittype == "Add Personal Details" || submittype =="Add Details") {
		var fn = document.forms["myForm"]["email1"].value;
		if (fn == "" || fn == null) {
			alert("Please update the highlighted mandatory field(s)");
			document.getElementById('emailid1').style.borderColor = "red";
			return false;
		} else {
			document.getElementById('emailid1').style.borderColor = "antiquewhite";
		}

		var ln = document.forms["myForm"]["address"].value;
		if (ln == "" || ln == null) {
			alert("Please update the highlighted mandatory field(s)");
			document.getElementById('address').style.borderColor = "red";
			return false;
		} else {
			document.getElementById('address').style.borderColor = "antiquewhite";
		}
	}
}

function custadminvalidateForm() {
	var fn = document.forms["myForm"]["fname"].value;
	if (fn == "" || fn == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('firstname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('firstname').style.borderColor = "antiquewhite";
	}

	var ln = document.forms["myForm"]["lname"].value;
	if (ln == "" || ln == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('lastname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('lastname').style.borderColor = "antiquewhite";
	}

	var ph = document.forms["myForm"]["phone"].value;
	if (ph == "" || ph == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('phnum').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('phnum').style.borderColor = "antiquewhite";
	}

	var email = document.forms["myForm"]["email"].value;
	if (email == "" || email == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('emailid').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('emailid').style.borderColor = "antiquewhite";
	}

	var password = document.forms["myForm"]["pass"].value;
	if (password == "" || password == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('myInput').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('myInput').style.borderColor = "antiquewhite";
	}
}
function servicevalidate(){
	var telnum = document.forms["myForm"]["telnum"].value;
	if (telnum == "" || telnum == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('telnum').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('telnum').style.borderColor = "antiquewhite";
	}
	var avltime = document.forms["myForm"]["avltime"].value;
	if (avltime == "" || avltime == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('avltime').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('avltime').style.borderColor = "antiquewhite";
	}
	var loc = document.forms["myForm"]["location"].value;
	if (loc == "" || loc == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('location').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('location').style.borderColor = "antiquewhite";
	}
	var st = document.forms["myForm"]["servicetype"].value;
	if (st == "" || st == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('servicetype').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('servicetype').style.borderColor = "antiquewhite";
	}
}
function Validate() {
	var password = document.getElementById("myInput").value;
	var confirmPassword = document.getElementById("cnfpass").value;
	if (password != confirmPassword) {
		alert("Passwords do not match.");
		return false;
	}
	// var sub = document.getElementById("submit").value;
	// if(sub=="Register"){
	// alert("your detailes are succussfully submitted!");
	// return true;
	// }
	
}
function Validate1() {
	var password = document.getElementById("newInput").value;
	var confirmPassword = document.getElementById("cnfnewpass").value;
	var oldpass = document.getElementById("oldInput").value;
	if (password != confirmPassword) {
		alert("Passwords do not match.");
		return false;
	}else if(password == oldpass){
		alert("old and new password should be different");
	}
	return true;
}
function myFunction() {
	var x = document.getElementById("myInput");

	if (x.type === "password") {
		x.type = "text";
	} else {
		x.type = "password"
	}
}
function myFunction1() {
	var x = document.getElementById("cnfpass");

	if (x.type === "password") {
		x.type = "text";
	} else {
		x.type = "password"
	}
}
function myFunction2() {
	var x = document.getElementById("oldInput");

	if (x.type === "password") {
		x.type = "text";
	} else {
		x.type = "password"
	}
}
function myFunction3() {
	var x = document.getElementById("newInput");

	if (x.type === "password") {
		x.type = "text";
	} else {
		x.type = "password"
	}
}
function myFunction4() {
	var x = document.getElementById("cnfnewpass");

	if (x.type === "password") {
		x.type = "text";
	} else {
		x.type = "password"
	}
}

function loginvalidateForm() {
	var fn = document.forms["myForm"]["loginname1"].value;
	if (fn == "" || fn == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('loginname').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('loginname').style.borderColor = "antiquewhite";
	}

	var ln = document.forms["myForm"]["pass1"].value;
	if (ln == "" || ln == null) {
		alert("Please update the highlighted mandatory field(s)");
		document.getElementById('myInput').style.borderColor = "red";
		return false;
	} else {
		document.getElementById('myInput').style.borderColor = "antiquewhite";
	}

}

function details() {
	document.getElementById("result").style.display = "block";
	// document.getElementById("result").innerHTML="";
	return false;
}
function details1() {
	document.getElementById("result1").style.display = "block";
	// document.getElementById("result").innerHTML="";
	return false;
}

function changecat() {
    var selectHTML = "";
    var selectHTML1 = "";

    var A = ["","General Repair", "Tops Repair", "Flush Tank Repair"];
    var B = ["","Carpet cleaning", "Washroom Cleaning", "Sofa Cleaning", "Kitchen Cleaning"];
    var C = ["","Display Issues", "Power Problems", "Battery Issues", "HardDrive Issues", "Keyboard Issues"];
    var D = ["","Full Service","AC Repair","AC Gas Changing","AC Installation","AC Installation"];
    var E = ["","General Pest Control","Cockroach Control","Bed Bug Control","Teermite Control"];
    if (document.getElementById("servicetype").value == "Plumbing") {
        var select = document.getElementById('category').options.length;
        for (var i = 0; i < select; i++) {
        	document.getElementById("category").options.length=0;
        }
        for (var i = 0; i < A.length; i++) {
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + A[i] + "'>" + A[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category').add(newSelect);
        }
    }

    else if (document.getElementById("servicetype").value == "Cleaning") {
        var select = document.getElementById('category').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category").options.length=0;
        }

        for (var i = 0; i < B.length; i++) {
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + B[i] + "'>" + B[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category').add(newSelect);
        }
      
    }

    else if (document.getElementById("servicetype").value == "Laptop") {
        var select = document.getElementById('category').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category").options.length=0;
        }

        for (var i = 0; i < C.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + C[i] + "'>" + C[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category').add(newSelect);
        }
    }
    else if (document.getElementById("servicetype").value == "Air Condition") {
        var select = document.getElementById('category').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category").options.length=0;
        }

        for (var i = 0; i < D.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + D[i] + "'>" + D[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category').add(newSelect);
        }
  
    }
    else if (document.getElementById("servicetype").value == "Pest Control") {
        var select = document.getElementById('category').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category").options.length=0;
        }

        for (var i = 0; i < E.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + E[i] + "'>" + E[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category').add(newSelect);
        }
    }
}
function changecat1() {
    var selectHTML = "";

    var A = ["","General Repair", "Tops Repair", "Flush Tank Repair"];
    var B = ["","Carpet cleaning", "Washroom Cleaning", "Sofa Cleaning", "Kitchen Cleaning"];
    var C = ["","Display Issues", "Power Problems", "Battery Issues", "HardDrive Issues", "Keyboard Issues"];
    var D = ["","Full Service","AC Repair","AC Gas Changing","AC Installation","AC Installation"];
    var E = ["","General Pest Control","Cockroach Control","Bed Bug Control","Teermite Control"];

    if (document.getElementById("servicetype1").value == "Plumbing") {
        var select = document.getElementById('category1').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category1").options.length=0;
        	
        }

        for (var i = 0; i < A.length; i++) {
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + A[i] + "'>" + A[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category1').add(newSelect);
        }
    }

    else if (document.getElementById("servicetype1").value == "Cleaning") {
        var select = document.getElementById('category1').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category1").options.length=0;
        }

        for (var i = 0; i < B.length; i++) {
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + B[i] + "'>" + B[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category1').add(newSelect);
        }
    }

    else if (document.getElementById("servicetype1").value == "Laptop") {
        var select = document.getElementById('category1').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category1").options.length=0;
        }

        for (var i = 0; i < C.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + C[i] + "'>" + C[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category1').add(newSelect);
        }
    }
    else if (document.getElementById("servicetype1").value == "Air Condition") {
        var select = document.getElementById('category1').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category1").options.length=0;
        }

        for (var i = 0; i < D.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + D[i] + "'>" + D[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category1').add(newSelect);
        }
    }
    else if (document.getElementById("servicetype1").value == "Pest Control") {
        var select = document.getElementById('category').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category1").options.length=0;
        }

        for (var i = 0; i < E.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + E[i] + "'>" + E[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category1').add(newSelect);
        }
    }
}
function changecat2() {
    var selectHTML = "";

    var A = ["","General Repair", "Tops Repair", "Flush Tank Repair"];
    var B = ["","Carpet cleaning", "Washroom Cleaning", "Sofa Cleaning", "Kitchen Cleaning"];
    var C = ["","Display Issues", "Power Problems", "Battery Issues", "HardDrive Issues", "Keyboard Issues"];
    var D = ["","Full Service","AC Repair","AC Gas Changing","AC Installation","AC Installation"];
    var E = ["","General Pest Control","Cockroach Control","Bed Bug Control","Teermite Control"];

    if (document.getElementById("servicetype2").value == "Plumbing") {
        var select = document.getElementById('category').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category2").options.length=0;
        	
        }

        for (var i = 0; i < A.length; i++) {
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + A[i] + "'>" + A[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category2').add(newSelect);
        }
    }

    else if (document.getElementById("servicetype2").value == "Cleaning") {
        var select = document.getElementById('category2').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category2").options.length=0;
        }

        for (var i = 0; i < B.length; i++) {
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + B[i] + "'>" + B[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category2').add(newSelect);
        }
    }

    else if (document.getElementById("servicetype2").value == "Laptop") {
        var select = document.getElementById('category2').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category2").options.length=0;
        }

        for (var i = 0; i < C.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + C[i] + "'>" + C[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category2').add(newSelect);
        }
    }
    else if (document.getElementById("servicetype2").value == "Air Condition") {
        var select = document.getElementById('category2').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category2").options.length=0;
        }

        for (var i = 0; i < D.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + D[i] + "'>" + D[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category2').add(newSelect);
        }
    }
    else if (document.getElementById("servicetype2").value == "Pest Control") {
        var select = document.getElementById('category2').options.length;

        for (var i = 0; i < select; i++) {
//            document.getElementById('category').options.remove(i);
        	document.getElementById("category2").options.length=0;
        }

        for (var i = 0; i < E.length; i++) { 
            var newSelect = document.createElement('option');
            selectHTML = "<option value='" + E[i] + "'>" + E[i] + "</option>";
            newSelect.innerHTML = selectHTML;
            document.getElementById('category2').add(newSelect);
        }
    }
}


