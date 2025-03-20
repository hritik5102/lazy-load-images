const placeholderImages = document.querySelectorAll("picture");

placeholderImages.forEach((placeholderImage) => {
  const img = placeholderImage.querySelector("img");

  img.addEventListener("load", () => {
    placeholderImage.classList.add("hide");
    img.style.opacity = 1;
  });
});
