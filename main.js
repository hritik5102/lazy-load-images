const imageWrappers = document.querySelectorAll("picture");

imageWrappers.forEach((imgWrapper) => {
  const img = imgWrapper.querySelector("img");

  img.addEventListener("load", () => {
    imgWrapper.classList.add("show");
    img.style.opacity = 1;
  });
});
