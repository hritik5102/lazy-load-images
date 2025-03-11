const imageWrappers = document.querySelectorAll(".image-wrapper");

imageWrappers.forEach((imgWrapper) => {
  const img = imgWrapper.querySelector("img");

  if (img.complete) {
    imgWrapper.classList.add("show");
  } else {
    img.addEventListener("load", () => {
      imgWrapper.classList.add("show");
    });
  }
});
