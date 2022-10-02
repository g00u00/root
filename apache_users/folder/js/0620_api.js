async function getResponce() {
    // let responce = await fetch("https://my-json-server.typicode.com/typicode/demo/posts")
    //let responce = await fetch("https://vmarshirov.github.io/g06u28/030_js/data/0620.json")
    //let responce = await fetch("http://185.182.111.214:7633/tmp/g06u28.txt_api.json")
    let responce = await fetch("../tmp/g06u28.txt_api.json")


    let content = await responce.json()
    content = content.splice(0, 5)
    console.log(content)
    let key
    let ul_0 = document.getElementsByTagName("ul")[0]
    for (key in content) {
        ul_0.innerHTML += ` 
        <li> 
        <h3>${content[key].title}</h3>
        <img src=${content[key].url} width="200px">
        </li>`
    }
}

getResponce()
