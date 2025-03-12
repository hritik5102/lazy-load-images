const imageWrappers = document.querySelectorAll(".image-wrapper");

imageWrappers.forEach((imgWrapper) => {
  const img = imgWrapper.querySelector("img");

  img.addEventListener("load", () => {
    imgWrapper.classList.add("show");
    img.style.opacity = 1;
  });
});
