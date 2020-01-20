


function validateLogin() {
      var username = document.forms["loginForm"]["username"].value;
      var password = document.forms["loginForm"]["password"].value;

      if ((username == "") && (password == "")) {
            alert("Mandatory fields are required");
            document.forms["loginForm"]["username"].style.borderColor = "red";
            document.forms["loginForm"]["password"].style.borderColor = "red";
            return false;
      } else if (password == "") {
            alert("Mandatory fields are required");
            document.forms["loginForm"]["username"].style.borderColor = "#ccc";
            document.forms["loginForm"]["password"].style.borderColor = "red";
            return false;
      } else if (username == "") {
            alert("Mandatory fields are required");
            document.forms["loginForm"]["username"].style.borderColor = "red";
            document.forms["loginForm"]["password"].style.borderColor = "#ccc";
            return false;
      } else {
            document.forms["loginForm"]["username"].style.borderColor = "#ccc";
            document.forms["loginForm"]["password"].style.borderColor = "#ccc";
            return true;
      }

}

function validateRegistration() {

      var fname = document.forms["register"]["fname"].value;
      var lname = document.forms["register"]["lname"].value;
      var age = document.forms["register"]["age"].value;
      var gender = document.forms["register"]["gender"].value;
      var user = document.forms["register"]["user"].value;
      var psw = document.forms["register"]["password"].value;
      var contact = document.forms["register"]["contact"].value;
      var category = document.forms["register"]["category"].value;
      var file = document.forms["register"]["file"].value;
      var extension = file.substr(file.lastIndexOf('.') + 1).toLowerCase();
      var allowedExtensions = ['jpg', 'png', 'jpeg'];
      if (file.length > 0)
         {
              if (allowedExtensions.indexOf(extension) === -1) 
                 {
                   alert('Invalid file Format. Only ' + allowedExtensions.join(', ') + ' are allowed.');
                   return false;
                 }
        }
      var fileStatus = false;
      if ((file === "")) {
          document.forms["register"]["file"].style.borderColor = "red";
          fileStatus = true;
      }
      if (file !== "") {
          document.forms["register"]["file"].style.borderColor = "#ccc";
      }
      
      var x = false;
      if ((fname === "")) {
            document.forms["register"]["fname"].style.borderColor = "red";
            x = true;
      }
      if (fname !== "") {
            document.forms["register"]["fname"].style.borderColor = "#ccc";
      }

      var y = false;
      if ((lname === "")) {
            document.forms["register"]["lname"].style.borderColor = "red";
            y = true;
      }
      if (lname !== "") {
            document.forms["register"]["lname"].style.borderColor = "#ccc";
      }

      var z = false;
      if ((age === "")) {
            document.forms["register"]["age"].style.borderColor = "red";
            z = true;
      }
      if ((age.length > 2)) {
            document.forms["register"]["age"].style.borderColor = "red";
            z = true;
      }
      if ((age !== "")&&(age.length <= 2) &&(age.length>=1)) {
            document.forms["register"]["age"].style.borderColor = "#ccc";
      }

      var w = false;
      if ((gender === "")) {
            document.forms["register"]["gender"].style.borderColor = "red";
            w = true;
      }
      if (gender !== "") {
            document.forms["register"]["gender"].style.borderColor = "#ccc";
      }

      var v = false;
      if ((user === "")) {
            document.forms["register"]["user"].style.borderColor = "red";
            v = true;
      }
      if (user !== "") {
            document.forms["register"]["user"].style.borderColor = "#ccc";
      }

      var u = false;
      if ((psw === "")) {
            document.forms["register"]["password"].style.borderColor = "red";
            u = true;
      }
      if (psw !== "") {
            document.forms["register"]["password"].style.borderColor = "#ccc";
      }

      var t = false;
      if ((contact === "")) {
            document.forms["register"]["contact"].style.borderColor = "red";
            t = true;
      }
      if ((contact.length !== 10)) {
            document.forms["register"]["contact"].style.borderColor = "red";
            t = true;
      }
      if ((contact !== "") && (contact.length == 10)) {
            document.forms["register"]["contact"].style.borderColor = "#ccc";
      }

      var s = false;
      if ((category === "")) {
            document.forms["register"]["category"].style.borderColor = "red";
            s = true;
      }
      if (category !== "") {
            document.forms["register"]["category"].style.borderColor = "#ccc";
      }

      if ((x === true) || (y === true) || (z === true) || (w === true)
                  || (v === true) || (u === true) || (t === true) || (s === true)|| (fileStatus === true)) {
            alert('Please update the highlighted mandatory field(s).');
            return false;
      } else {
           return true;
      }

}

function validateAdmin() {
      var firstName = document.forms["admin"]["firstName"].value;
      var lastName = document.forms["admin"]["lastName"].value;
      var age = document.forms["admin"]["age"].value;
      var gender = document.forms["admin"]["gender"].value;
      var adminId = document.forms["admin"]["adminId"].value;
      var password= document.forms["admin"]["password"].value;
      var contact = document.forms["admin"]["contact"].value;

      var x = false;
      if ((firstName === "")) {
            document.forms["admin"]["firstName"].style.borderColor = "red";
            x = true;
      }
      if (firstName !== "") {
            document.forms["admin"]["firstName"].style.borderColor = "#ccc";
      }

      var y = false;
      if ((lastName === "")) {
            document.forms["admin"]["lastName"].style.borderColor = "red";
            y = true;
      }
      if (lastName !== "") {
            document.forms["admin"]["lastName"].style.borderColor = "#ccc";
      }

      var z = false;
      if ((age === "")) {
            document.forms["admin"]["age"].style.borderColor = "red";
            z = true;
      }
      if ((age.length > 2)) {
            document.forms["admin"]["age"].style.borderColor = "red";
            z = true;
      }
      if ((age !== "")&&(age.length <= 2) &&(age.length>=1)) {
            document.forms["admin"]["age"].style.borderColor = "#ccc";
      }

      var w = false;
      if ((gender === "")) {
            document.forms["admin"]["gender"].style.borderColor = "red";
            w = true;
      }
      if (gender !== "") {
            document.forms["admin"]["gender"].style.borderColor = "#ccc";
      }

      var v = false;
      if ((adminId === "")) {
            document.forms["admin"]["adminId"].style.borderColor = "red";
            v = true;
      }
      if (adminId !== "") {
            document.forms["admin"]["adminId"].style.borderColor = "#ccc";
      }

      var u = false;
      if ((password === "")) {
            document.forms["admin"]["password"].style.borderColor = "red";
            u = true;
      }
      if (password !== "") {
            document.forms["admin"]["password"].style.borderColor = "#ccc";
      }

      var t = false;
      if ((contact === "")) {
            document.forms["admin"]["contact"].style.borderColor = "red";
            t = true;
      }
      if ((contact.length !== 10)) {
            document.forms["admin"]["contact"].style.borderColor = "red";
            t = true;
      }
      if ((contact !== "")&&(contact.length === 10)) {
            document.forms["admin"]["contact"].style.borderColor = "#ccc";
      }

      if ((x === true) || (y === true) || (z === true) || (w === true)
                  || (v === true) || (u === true) || (t === true)) {
            alert('Please update the highlighted mandatory field(s).');
            return false;
      } else {
            return true;
      }

}


function validateResource() {
      var resourceCode = document.forms["editResource"]["resourceCode"].value;
      var resourceDescription = document.forms["editResource"]["resourceDescription"].value;
      var skills = document.forms["editResource"]["skills"].value;

      var x = false;
      if ((resourceCode === "")) {
            document.forms["editResource"]["resourceCode"].style.borderColor = "red";
            x = true;
      }
      if (resourceCode !== "") {
            document.forms["editResource"]["resourceCode"].style.borderColor = "#ccc";
      }

      var y = false;
      if ((resourceDescription === "")) {
            document.forms["editResource"]["resourceDescription"].style.borderColor = "red";
            y = true;
      }
      if (resourceDescription !== "") {
            document.forms["editResource"]["resourceDescription"].style.borderColor = "#ccc";
      }

      var z = false;
      if ((skills === "")) {
            document.forms["editResource"]["skills"].style.borderColor = "red";
            z = true;
      }
      if (skills !== "") {
            document.forms["editResource"]["skills"].style.borderColor = "#ccc";
      }

      if ((x === true) || (y === true) || (z === true)) {
            alert('Please update the highlighted mandatory field(s).');
            return false;
      } else {
          return true;

      }

}

function validateUpdateResource() {
      var resCode = document.forms["updateResource"]["resourceCode"].value;
      var resDescription = document.forms["updateResource"]["resourceDescription"].value;
      var skills = document.forms["updateResource"]["skills"].value;

      var x = false;
      if ((resCode === "")) {
            document.forms["updateResource"]["resourceCode"].style.borderColor = "red";
            x = true;
      }
      if (resCode !== "") {
            document.forms["updateResource"]["resourceCode"].style.borderColor = "#ccc";
      }

      var y = false;
      if ((resDescription === "")) {
            document.forms["updateResource"]["resourceDescription"].style.borderColor = "red";
            y = true;
      }
      if (resDescription !== "") {
            document.forms["updateResource"]["resourceDescription"].style.borderColor = "#ccc";
      }

      var z = false;
      if ((skills === "")) {
            document.forms["updateResource"]["skills"].style.borderColor = "red";
            z = true;
      }
      if (skills !== "") {
            document.forms["updateResource"]["skills"].style.borderColor = "#ccc";
      }

      if ((x === true) || (y === true) || (z === true)) {
            alert('Please update the highlighted mandatory field(s).');
            return false;
      } else {
          return true;

      }

}

function validateAddSkills()
{
	var resCode = document.forms["addSkillsForm"]["resourceCode"].value;
	var resDescription = document.forms["addSkillsForm"]["resourceDescription"].value;
	var skill = document.forms["addSkillsForm"]["skills"].value;
	var level = document.forms["addSkillsForm"]["competencyLevel"].value;
	var audience = document.forms["addSkillsForm"]["intendedAudience"].value;
	
	var x = false;
	if(resCode === "") {
		document.forms["addSkillsForm"]["resourceCode"].style.borderColor = "red";
		x = true;
	}
	if(resCode !== "") {
        document.forms["addSkillsForm"]["resourceCode"].style.borderColor = "#ccc";
    }
	
	var y = false;
	if(resDescription === "") {
		document.forms["addSkillsForm"]["resourceDescription"].style.borderColor = "red";
		y = true;
	}
	if(resDescription !== "") {
        document.forms["addSkillsForm"]["resourceDescription"].style.borderColor = "#ccc";
    }
	
	var z = false;
	if(skill === "") {
		document.forms["addSkillsForm"]["skills"].style.borderColor = "red";
		z = true;
	}
	if(skill !== "") {
        document.forms["addSkillsForm"]["skills"].style.borderColor = "#ccc";
    }
	
	var w = false;
	if(level === "") {
		document.forms["addSkillsForm"]["competencyLevel"].style.borderColor = "red";
		w = true;
	}
	if(level !== "") {
        document.forms["addSkillsForm"]["competencyLevel"].style.borderColor = "#ccc";
    }
	
	var v = false;
	if(audience === "") {
		document.forms["addSkillsForm"]["intendedAudience"].style.borderColor = "red";
		w = true;
	}
	if(audience !== "") {
        document.forms["addSkillsForm"]["intendedAudience"].style.borderColor = "#ccc";
    }
	
	if((x === true)||(y === true)||(z === true) || (w === true) || (v === true) )
    {
        alert('Please update the highlighted mandatory field(s).');
        return false;
    }
	else {
        return true;

	}

}
function validateSubmitNewResource() {
	alert("in submit neew resource js");
    var title = document.forms["submitnewresource"]["title"].value;
    var author = document.forms["submitnewresource"]["author"].value;
    var year= document.forms["submitnewresource"]["year"].value;
    
    var subject = document.forms["submitnewresource"]["subject"].value;
    
    var file = document.forms["submitnewresource"]["file"].value;
    var extension = file.substr(file.lastIndexOf('.') + 1).toLowerCase();
    var allowedExtensions = ['pdf', 'docx', 'ppt','xlsx'];
    if (file.length > 0)
       {
            if (allowedExtensions.indexOf(extension) === -1) 
               {
                 alert('Invalid file Format. Only ' + allowedExtensions.join(', ') + ' are allowed.');
                 return false;
               }
      }
    var fileStatus = false;
    if ((file === "")) {
        document.forms["submitnewresource"]["file"].style.borderColor = "red";
        fileStatus = true;
    }
    if (file !== "") {
        document.forms["submitnewresource"]["file"].style.borderColor = "#ccc";
    }
    
    var x = false;
    if ((title === "")) {
          document.forms["submitnewresource"]["title"].style.borderColor = "red";
          x = true;
    }
    if (title !== "") {
          document.forms["submitnewresource"]["title"].style.borderColor = "#ccc";
    }

    var y = false;
    if ((author === "")) {
          document.forms["submitnewresource"]["author"].style.borderColor = "red";
          y = true;
    }
    if (author !== "") {
          document.forms["submitnewresource"]["author"].style.borderColor = "#ccc";
    }

    var z = false;
    if ((year === "")) {
          document.forms["submitnewresource"]["year"].style.borderColor = "red";
          z = true;
    }
    if (year !== "") {
        document.forms["submitnewresource"]["year"].style.borderColor = "#ccc";
  }

    var w = false;
    if ((subject === "")) {
          document.forms["submitnewresource"]["subject"].style.borderColor = "red";
          w = true;
    }
    if (subject !== "") {
          document.forms["submitnewresource"]["subject"].style.borderColor = "#ccc";
    }

    

    if ((x === true) || (y === true) || (z === true) || (w === true)
                ||  (fileStatus === true)) {
          alert('Please update the highlighted mandatory field(s).');
          return false;
    } else {
          alert('Your details are submitted successfully');
          return true;
    }

}


function validateAdvanceSearch() {

    var keyword = document.forms["advanceSearch"]["keyword"].value;
    var title = document.forms["advanceSearch"]["title"].value;
    var author = document.forms["advanceSearch"]["author"].value;
    var subject = document.forms["advanceSearch"]["subject"].value;
    var year = document.forms["advanceSearch"]["year"].value;
   
    if ((keyword === "") && (title === "") && (author === "") && (subject === "")
            &&  (year === "")){
    	
    	alert("All fields should not be empty");
    	return false;
    }
    else{
    	return true;
    }
    
}