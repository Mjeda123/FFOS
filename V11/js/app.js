$(document).foundation();

//kada na elementu s id klik se dogodi clik događaj
$('#klik').click(function(){

    
    // u ovom prostoru obrađujem događaj klik na elementu koji ima id klik
    // želim da pordučje s id zadatak1 promjeni css background-color u red
    $('#zadatak1').css('background-color' , 'red');
    
    //dobro je na kraju vratiti false da se ne odrađuju druge akcije
    return false;
    
});
    
// # su zato što pristupam css selektoru identifikacije
$('#dvoklik').dblclick(function(){
    $('#zadatak2').css('border' , '2px solid blue');
    
    
        return false;
});
    
    
$('#promjena').mouseenter(function(){
    $('#desno').html('Promjenjeno');
    
    
        return false;
});
    
$('#promjena').mouseleave(function(){
    $('#desno').html('Desno');
        return false;
});