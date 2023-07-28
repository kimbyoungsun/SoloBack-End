var mySwiper = new Swiper(".my-slider", {
	slidesPerView: 2,
	spaceBetween: 30,
	loop: true,
	pagination: {
		el: ".swiper-pagination",
		clickable: true,
	},
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},
});

var swiperMain = new Swiper(".swiper-main", {
	loop: true,
	centeredSlides: true,
	slidesPerView: "auto",
	slideToClickedSlide: true,
	effect: "coverflow",
	coverflowEffect: {
		rotate: 20,
		slideShadows: false,
	},
});

var swiperList = new Swiper(".swiper-list", {
	observer: true,
	observeParents: true,
	loop: true,
	centeredSlides: true,
	slidesPerView: "auto",
	slideToClickedSlide: true,
});

var swiperGrids = new Swiper(".swiper-trailer", {
	loop: true,
	centeredSlides: true,
	slidesPerView: "auto",
});

function openModal(url) {
	$("#modal").modal("show");
	var iframe = document.getElementById("iframe");
	iframe.src = url;
}
$(document).ready(function() {
	$("#modal").on("hidden.bs.modal", function(e) {
		var iframe = document.getElementById("iframe");
		iframe.src = "";
	});
});

var movieId;

function openInfoModal(id) {
	movieId = id;
	fetch("/ott/movie/photo?id=" + id) // 서버의 URL과 id를 파라미터로 전달합니다.
		.then(response => response.json())
		.then(data => {
			// 받아온 데이터를 처리합니다.
			$("#modalInfo").modal("show");
			var background_img = document.getElementById("background_img");
			background_img.src = "https://image.tmdb.org/t/p/original" + data.movie.backdrop_path;

			var poster_img = document.getElementById("poster_img");
			poster_img.src = "https://image.tmdb.org/t/p/original" + data.movie.poster_path;

			var overview = document.getElementById("overview");
			overview.innerText = data.movie.overview;

			var title = document.getElementById("title");
			title.innerText = data.movie.title;

			var vote = document.getElementById("vote");
			vote.innerText = data.movie.vote_average;

			fetch("/ott/movie/video?id=" + id)
				.then(response => response.json())
				.then(data => {
					const jsonData = data.result;
					for (const video of jsonData) {
						createAndAppendIframe(video.param);
						const name = video.name;
					}
				}).catch(error => {
					console.error("Error occurred while fetching data:", error);
				});
			fetch("/ott/movie/credit?id=" + id)
				.then(response => response.json())
				.then(data => {
					const jsonData = data.result;
					for (const credit of jsonData) {
						if (credit.profile_path != "null") {

							createAndAppendDiv(credit.profile_path);
							const name = credit.profile_path;
						}
					}
				}).catch(error => {
					console.error("Error occurred while fetching data:", error);
				});
		})
		.catch(error => {
			console.error("Error occurred while fetching data:", error);
		});
}
var tvId


// iframe을 생성하고 컨테이너에 추가하는 함수
function createAndAppendIframe(url) {
	const iframe = document.createElement("iframe");
	iframe.id = url;
	iframe.src = "https://www.youtube.com/embed/" + url;
	iframe.width = "100%"; // iframe의 가로 크기 설정
	iframe.allowFullscreen = true; // 전체화면 모드 허용
	iframe.height = "600"
	const container = document.getElementById("iframes-container");
	container.appendChild(iframe);
}

function createAndAppendDiv(url) {
	const imageUrl = "https://image.tmdb.org/t/p/original" + url;

	const colDiv = document.createElement("div");
	colDiv.className = "swiper-slide";
	colDiv.id = url;
	const image = document.createElement("img");

	image.className = "rounded-3";
	image.src = imageUrl;
	image.alt = "";
	image.style.width = "100%";
	image.style.height = "400px";

	colDiv.appendChild(image);

	image.onload = function() {
		console.log("이미지 로드됨. 높이:", image.height);
	};

	const container = document.getElementById("actors");
	container.appendChild(colDiv);
}

function createSwiper(url) {
	const divSwiper = document.createElement("div");
	divSwiper.className = "swiper-slide";

	const image = document.createElement("img");

	image.className = "rounded-3";
	image.src = imageUrl;
	image.alt = "";
	image.style.width = "300px";
	image.style.height = "400px";

	divSwiper.appendChild(image);

	//<div class="swiper-slide">
	//<img style="height: 100%"
	//src="https://image.tmdb.org/t/p/original${item.poster_path}"
	//	alt="" onClick="openInfoModal('${item.id}')" />
	//	</div>
}

$("#modalInfo").on("shown.bs.modal", function() {
	var swiperModal = new Swiper(".swiper-my", {
		loop: true,
		centeredSlides: true,
		slidesPerView: "auto",
		pagination: {
			el: ".swiper-pagination",
			clickable: true,
		},
		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev",
		},
	});
});

$(document).ready(function() {
	$("#modalInfo").on("hidden.bs.modal", function(e) {
		console.log(e);
		fetch("/ott/movie/video?id=" + movieId)
			.then(response => response.json())
			.then(data => {
				const jsonData = data.result;
				for (const video of jsonData) {
					var iframe = document.getElementById(video.param);
					iframe.parentNode.removeChild(iframe);
					const name = video.name;
					console.log(name);
				}
			}).catch(error => {
				console.error("Error occurred while fetching data:", error);
			});

		fetch("/ott/movie/credit?id=" + movieId)
			.then(response => response.json())
			.then(data => {
				const jsonData = data.result;
				for (const video of jsonData) {
					var colDiv = document.getElementById(video.profile_path);
					if (colDiv) {
						colDiv.parentNode.removeChild(colDiv);
						const name = video.name;
						console.log(name);
					} else {
						console.warn(`Element with ID '${video.profile_path}' not found.`);
					}
				}
			}).catch(error => {
				console.error("Error occurred while fetching data:", error);
			});
	});
});


