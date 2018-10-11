<div class="row">
	<div class="col-lg-12">
		<div class="card w-100">
			<div class="card-header with-border">
				<div class="row-lg-12">
					<div class="nav nav-pills nav-justified pull-left">
						<li class="nav-item"><a class="nav-link active" href="#" id="allProjects" onclick="filter('allProjects')">All</a></li>
		              	<li class="nav-item"><a class="nav-link" href="#" id="favouriteProjects" onclick="filter('favouriteProjects')">Favourite</a></li>
		              	<li class="nav-item"><a class="nav-link" href="#" id="medicalProjects" onclick="filter('medicalProjects')">Medical</a></li>
						<li class="nav-item"><a class="nav-link" href="#" id="sportProjects" onclick="filter('sportProjects')">Sport</a></li>
						<li class="nav-item"><a class="nav-link" href="#" id="musicProjects" onclick="filter('musicProjects')">Music</a></li>
						<li class="nav-item"><a class="nav-link" href="#" id="iotProjects" onclick="filter('iotProjects')">IOT</a></li>
						<li class="nav-item"><a class="nav-link" href="#" id="otherProjects" onclick="filter('otherProjects')">Other</a></li>
					</div>
					<div class="form-group pull-right top_search">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search for...">
							<span class="input-group-btn">
						    <button class="btn btn-default" type="button">Go!</button>
						   	</span>
						</div>
					</div>
				</div>
			</div> 
			<div class="card-body">
				<!-- /.col-lg-3 -->
			    <div class="row-lg-12">
			        <div class="row" id="project-card">
			
			    	</div>
			        <!-- /.row -->
			
				</div>
			    <!-- /.col-lg-9 -->
			</div>
		</div>
		
	</div>
</div>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="${js}/jquery.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>
		
<!-- Self code JavaScript -->
<script src="${js}/my-app.js"></script>


<script>

var images = ["ico_thum_project_fan.jpg", "ico_thum_project_four.jpg", "ico_thum_project_life.jpg", "ico_thum_project_oisee.jpg", "ico_thum_project_otosen.jpg"];
var favImages;
var i;
var col="";

for(i = 0; i < images.length; i++ ){
	var img = images[i];
			
	col += '<div class="col-lg-6 col-md-6 mb-4" id="project-item">'+
				'<div class="card h-100">'+
					'<a href="#"><img class="card-img-top" src="${images}/list-of-projects/'+images[i]+'" alt="'+images[i]+'"></a>'+
					'<div class="card-body">'+
						'<h4 class="card-title" id="fav">'+	
							'<a href="#"></a>'+
						'</h4>'+
						'<p class="card-text"></p>'+
					'</div>'+
					'<div class="card-footer" id="'+img+'">'+
						'<div class="click fa-pull-right click'+i+'" id="'+img+'">'+
							'<span class="fa fa-heart-o fa'+i+'" id="'+img+'"></span>'+
							'<div class="ring"></div>'+
							'<div class="ring2"></div>'+
							'<p class="info info'+i+'">Added to favourites!</p>'+
						'</div>'+
					'</div>'+
				'</div>'+
			'</div>';
}
$("#project-card").append(col);

$('.click').click(function() {
	var images = ["ico_thum_project_fan.jpg", "ico_thum_project_four.jpg", "ico_thum_project_life.jpg", "ico_thum_project_oisee.jpg", "ico_thum_project_otosen.jpg"];
	var i;
	
	for(i=0;i<images.length;i++){
		document.getElementById(images[i]).addEventListener("click", favourite);
	}
	
	function favourite(e){

		for(a=0; a<images.length; a++){
			if($(this).attr('id') == images[a]){
				if ($('.fa'+a).hasClass("fa-heart")) {
					$('.click'+a).removeClass('active');
					setTimeout(function() {
						$('.click'+a).removeClass('active-2')
					}, 30);
						$('.click'+a).removeClass('active-3');
					setTimeout(function() {
						$('.fa'+a).removeClass('fa-heart')
						$('.fa'+a).addClass('fa-heart-o')
					}, 15);
				} else {
					$('.click'+a).addClass('active');
					$('.click'+a).addClass('active-2');
					setTimeout(function() {
						$('.fa'+a).addClass('fa-heart')
						$('.fa'+a).removeClass('fa-heart-o')
					}, 150);
					setTimeout(function() {
						$('.click'+a).addClass('active-3')
					}, 150);
					$('.info'+a).addClass('info-tog')
					setTimeout(function(){
						$('.info'+a).removeClass('info-tog')
					},1000);
				}
				break;
			}
			else{
				console.log(a);
			}
		}

	}
	
});

var cat = "";
function filter(cat){
	
	var projects = ["allProjects", "medicalProjects", "sportProjects", "musicProjects", "iotProjects", "otherProjects", "favouriteProjects"];
	for (var b=0; b < projects.length; b++){
		if(cat == projects[b]){
			$("#"+cat).addClass('active');
			var allImages = ["ico_thum_project_fan.jpg", "ico_thum_project_four.jpg", "ico_thum_project_life.jpg", "ico_thum_project_oisee.jpg", "ico_thum_project_otosen.jpg"];
			var medicalImages = ["ico_thum_project_life.jpg"];
			var sportImages = ["ico_thum_project_fan.jpg"];
			var musicImages = ["ico_thum_project_otosen.jpg"];
			var iotImages = ["ico_thum_project_four.jpg"];
			var otherImages = ["ico_thum_project_oisee.jpg"];
			var favorImages = [];
			var images;
			if(projects[b] == "allProjects"){
				images = allImages;
			}
			else if(projects[b] == "medicalProjects"){
				images = medicalImages;
			}
			else if(projects[b] == "sportProjects"){
				images = sportImages;
			}
			else if(projects[b] == "musicProjects"){
				images = musicImages;
			}
			else if(projects[b] == "iotProjects"){
				images = iotImages;
			}
			else if(projects[b] == "otherProjects"){
				images = otherImages;
			}
			else if(projects[b] == "favouriteProjects"){
				images = favorImages;
			}
			
			$("#project-card").html("");
			var i;
			var col="";
			for(i = 0; i < images.length; i++ ){
				var img = images[i];
				col += '<div class="col-lg-6 col-md-6 mb-4" id="project-item">'+
							'<div class="card h-100">'+
								'<a href="#"><img class="card-img-top" src="${images}/list-of-projects/'+images[i]+'" alt="'+images+'"></a>'+
								'<div class="card-body">'+
									'<h4 class="card-title">'+	
										'<a href="#"></a>'+
									'</h4>'+
									'<p></p>'+
								'</div>'+
								'<div class="card-footer" id="'+img+'">'+
									'<div class="click fa-pull-right click'+i+'" id="'+img+'">'+
										'<span class="fa fa-heart-o fa'+i+'" id="'+img+'"></span>'+
										'<div class="ring"></div>'+
										'<div class="ring2"></div>'+
										'<p class="info info'+i+'">Added to favourites!</p>'+
									'</div>'+
								'</div>'+
							'</div>'+
						'</div>';
				
			}
			$("#project-card").append(col);
			
			$('.click').click(function() {
				var i;		
				for(i=0;i<images.length;i++){
					document.getElementById(images[i]).addEventListener("click", favourite);
				}
				
				function favourite(e){

					for(a=0; a<images.length; a++){
						if($(this).attr('id') == images[a]){
							if ($('.fa'+a).hasClass("fa-heart")) {
								$('.click'+a).removeClass('active')
							setTimeout(function() {
								$('.click'+a).removeClass('active-2')
							}, 30)
								$('.click'+a).removeClass('active-3')
							setTimeout(function() {
								$('.fa'+a).removeClass('fa-heart')
								$('.fa'+a).addClass('fa-heart-o')
							}, 15)
							} else {
								$('.click'+a).addClass('active')
								$('.click'+a).addClass('active-2')
								setTimeout(function() {
									$('.fa'+a).addClass('fa-heart')
									$('.fa'+a).removeClass('fa-heart-o')
								}, 150)
								setTimeout(function() {
									$('.click'+a).addClass('active-3')
								}, 150)
								$('.info'+a).addClass('info-tog')
								setTimeout(function(){
									$('.info'+a).removeClass('info-tog')
								},1000)
							}
							break;
						}
						else{
							console.log(a);
						}
					}

				}
				
			});
		}
		else{
			$("#"+projects[b]).removeClass('active');
		}
	}

}

</script>