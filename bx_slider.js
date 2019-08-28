
document.write('<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"><script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>');
document.write("<div class='bxslider'></div>");
  $(document).ready(function(){
  var url=$(location).attr("href");
   url = url.replace(/^(?:https?:\/\/)?(?:www\.)?/i, "").split('/')[0];
  var text="";
  $.ajax({
      url : "https://plivo1.demo.xmagestore.com/shopify_shoes_app/db1.php?shop="+url,
      type: "post",
      datatype: "json",
      success:function(responsedata){
        var data = $.parseJSON(responsedata);
       
        $.each(data, function (i,data1) {
          console.log(data1);
              text += 
                    "<div><img src='https://plivo1.demo.xmagestore.com/shopify_shoes_app/uploads/"+data1.image+"' /><p style='position: absolute;top: 60%;left: 20%;font-weight: bold; text-align:center; right:20%;color: white;font-size: xx-large;'>"+data1.name+"</p></div>"
                    ;
          });
         
        $(".bxslider").append(text);
        var j = jQuery.noConflict();
         $(".bxslider").bxSlider({ auto: true });
  
  }
});


});

 
