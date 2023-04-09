function openNav() {
    document.getElementById("mySidenav").style.width = "12%";
  }
  
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}

function myfunction(){
				var source = document.getElementById("source");
				var num = source.selectedIndex;
				var text = source.options[num].text;
				const cities = ['NADIAD','VADODARA','AHMEDABAD','BHAVNAGAR']
				var selected=[];
				var dest = document.getElementById("destination");
				for (let index = 0; index < cities.length; index++) {
					if(text==cities[index]){
						console.log(text);
					}else{						
					selected.push(cities[index])
					}
					
				}
				while (dest.options.length > 1) {                
			        dest.remove(1);
			    }
				console.log(selected);
				
				for(let i = 0;i< selected.length;i++){
					var o = document.createElement("option");
					o.text = selected[i];
					dest.options.add(o,i+1);
				}
		}