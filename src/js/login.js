export default function init(params) {
  const searchParams = params;
  const submit = document.getElementById("submit");
  if (searchParams.invalidPw) {
    document.getElementById("error").style.display = "block";
  }
  if (params.logout) {
    localStorage.removeItem("pw");
  }
  const pw = document.getElementById("pw");

  submit.addEventListener("click", (e) => {
    e.preventDefault();
    location.href = "/login?pw=" + pw.value;
  });

  pw.addEventListener("change", () => {
    localStorage.setItem("pw", pw.value);
  });

  if (localStorage.getItem("pw")) {
    pw.value = localStorage.getItem("pw");
  }
}
