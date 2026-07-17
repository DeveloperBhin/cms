console.log("TARI chatbot loaded");


function toggleTariChat(){

let chat =
document.getElementById('tariChatWindow');


if(chat.style.display==="flex"){

chat.style.display="none";

}else{

chat.style.display="flex";

}

}



function sendTariMessage(){


let input =
document.getElementById('tariMessageInput');


let body =
document.getElementById('tariChatBody');


let message=input.value;


if(message.trim()==""){
return;
}



body.innerHTML += `

<div class="tari-message user">

${message}

</div>

`;



input.value="";



fetch('/api/chat',
{

method:'POST',

headers:{

'Content-Type':'application/json',

'X-CSRF-TOKEN':
document.querySelector('meta[name="csrf-token"]').content

},

body:JSON.stringify({

message:message

})

})
.then(response=>response.json())

.then(data=>{


body.innerHTML +=`

<div class="tari-message bot">

${data.reply}

</div>

`;


});



}