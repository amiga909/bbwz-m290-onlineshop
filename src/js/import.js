 

 export default function init() {
  const GROUP_NAME = "1";//get from url; //document.getElementById("group_name");
  const csv = document.getElementById("csv");
  document.getElementById("submit").addEventListener("click", (e) => {
    

    fetch(`/resetDB/${GROUP_NAME}`, {
      method: "POST",
      headers: {'Content-Type': 'application/json'},
      body: JSON.stringify(csv.value)
    }).then(res => {
      console.log("Request complete! response:", res);
    });

    
  }); 
 }



