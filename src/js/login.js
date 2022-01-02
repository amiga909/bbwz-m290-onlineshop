 
 
export default function init(params) {
 
  const submit = document.getElementById("submit");
  
  const pw = document.getElementById("pw");
   
 
  
  submit.addEventListener("click", (e) => {
    e.preventDefault();
    onSubmit()
  })


  pw.addEventListener("change", () => {
    localStorage.setItem("pw", pw.value)
  })

  if (localStorage.getItem("pw")) {
    pw.value = localStorage.getItem("pw")

  }

   
}

function onSubmit() {
  
  location.href="/home?pw="+pw.value
   
}

 
