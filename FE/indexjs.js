

function onLoad(data){
	 $.each(data, function(key,value){
        var div =  '<div class="col-lg-3 md-4 sm-6">  <div class="card my-2">'
            div +=  '<div>' + data.name + '</div>'
            div +=  '<div>'+ data.create_by + '</div>'
            div +=  '<div class="card-body"> <img src="../Images/lena.jpg" alt="" width="80" height="80"> </div>'
                        

 $('#data').append(divs);
}


function loadData() {
    const url ="http://localhost/ClassRoomLite/API/class/get_class.php?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IkhTMDAwMSIsIm5hbWUiOiJOZ3V5ZW4gVmFuIE5oYXQifQ.8_NWPLMpU1WbIM5n3rJVSzVqqmpUU0YJu_MbzRV__sk";
    $.get(url, (data) =>{
        onLoad(data);
    });
}

