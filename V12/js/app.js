$(document).foundation();
$(document).ready(function(){

    $('#slika1').click(function(){
        $('#slika1').attr('src' , 'slika2.jpg');


            return false;
    
        });


        $("#oms").mouseenter(function(){
            $("#oms").css('font-style' , 'normal');

            return false;
        
        });

        $('#b').click(function(){
            $('#callout').css('border' , 'dotted red');

            return false;
        
        });

        $('#d').click(function(){
            $('#d').hide();

            return false;
        
        });

        $('#f').mouseenter(function(){
            $('#f').css('background-color' , 'red');

            return false;

        });

        $('#e').dblclick(function(){
            $('#e').html('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, commodo eu tellus. Ut aliquet leo nec tortor pellentesqu. </p>');

            return false;

        });

        $('#druga').click(function(){
            $('#nula').append('<li><a href="#0">0. razina</a></li>');

            return false;

        });

});



