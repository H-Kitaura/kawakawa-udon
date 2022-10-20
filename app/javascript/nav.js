function pullDown(){
  const pullDownButton = document.getElementById("nav")
  const pullDownParents = document.getElementById("pull-down")

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownParents.setAttribute("style", "display:none;")
    
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownParents.setAttribute("style", "display:block;")
    }
   })
  }
   window.addEventListener('load', pullDown)
  