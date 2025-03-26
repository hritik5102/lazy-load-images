const placeholderImages = document.querySelectorAll("picture");

placeholderImages.forEach((placeholderImage) => {
  const img = placeholderImage.querySelector("img");

  // According to specifications, once the image is loaded (whether from network or cache),
  // the load event should trigger. For example during a page reload, the browser parses the HTML
  // again. If the image is in the cache and the server sends a 304 Not Modified response, or the
  // cache is still valid, the image is loaded from the cache. It might load the image from disk
  // cache instantly, so the load event would fire immediately. However, if the image is in the
  // memory cache, it's even faster. In either case, the load event should fire once the image is
  // considered loaded, even if it's from cache. But there might be race condition when load
  // might have already fired before the handler is attached, so the handler never gets called.

  if (img.complete) {
    placeholderImage.classList.add("hide");
    img.style.opacity = 1;
  } else {
    img.addEventListener("load", () => {
      placeholderImage.classList.add("hide");
      img.style.opacity = 1;
    });
  }
});
