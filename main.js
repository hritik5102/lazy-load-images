const images = document.getElementsByTagName("img");
const imageWrapper = document.querySelector(".image-wrapper");

images[0].addEventListener("load", () => {
  imageWrapper.classList.add("show");
});
