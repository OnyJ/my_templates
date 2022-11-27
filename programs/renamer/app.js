let uploadedFile = document.getElementById("file").files[0]
let newFile = uploadedFile

// console.log(uploadedFile)

function download(fileUrl, fileName) {
  var a = document.createElement("a");
  a.href = fileUrl;
  a.setAttribute("download", fileName);
  a.click();
}

// const theFile = document.getElementById("file").value.split(' ').join('\ ')
const theFile = document.getElementById("file").value

download(theFile, "On y va.mp3");
