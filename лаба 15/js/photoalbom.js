const firstimg = document.getElementById("first");
firstimg.addEventListener("mouseover", (e) => {
    const firsttext = document.getElementById("firsttext");
    firsttext.style = 'display: block;'
    firstimg.style = 'display: none;'
});
firstimg.addEventListener("mouseout", (e) => {
    const firsttext = document.getElementById("firsttext");
    firsttext.style = 'display: none;'
    firstimg.style = 'display: block;'

});
const secondimg = document.getElementById("second");
secondimg.addEventListener("click", (e) =>{
if(secondimg.classList.contains("borderimg")){
    secondimg.classList.remove("borderimg");
}
else{
    secondimg.classList.add("borderimg")
}
});
const thirdimg = document.getElementById("third");
thirdimg.addEventListener("mouseover", (e) => {
    const newthird = document.getElementById("newimg");
    thirdimg.style = 'display: none;'
    newthird.style = 'display: block;'
})
thirdimg.addEventListener("mouseout", (e) => {
    const newthird = document.getElementById("newimg");
    thirdimg.style = 'display: bloke;'
    newthird.style = 'display: none;'
})

